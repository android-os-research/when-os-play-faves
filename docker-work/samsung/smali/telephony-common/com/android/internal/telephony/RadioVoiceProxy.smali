.class public Lcom/android/internal/telephony/RadioVoiceProxy;
.super Lcom/android/internal/telephony/RadioServiceProxy;
.source "RadioVoiceProxy.java"


# instance fields
.field private volatile blacklist mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;


# direct methods
.method public static synthetic blacklist $r8$lambda$mggeN179w8VRbOtbUf44gogmpYA(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->lambda$emergencyDial$0(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Lcom/android/internal/telephony/RadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    return-void
.end method

.method private static synthetic blacklist lambda$emergencyDial$0(I)[Ljava/lang/String;
    .registers 1

    .line 151
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public blacklist acceptCall(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 79
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 80
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->acceptCall(I)V

    goto :goto_18

    .line 82
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->acceptCall(I)V

    :goto_18
    return-void
.end method

.method public blacklist cancelPendingUssd(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 93
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 94
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->cancelPendingUssd(I)V

    goto :goto_18

    .line 96
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->cancelPendingUssd(I)V

    :goto_18
    return-void
.end method

.method public blacklist clear()V
    .registers 2

    .line 59
    invoke-super {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->clear()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    return-void
.end method

.method public blacklist conference(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 107
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 108
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->conference(I)V

    goto :goto_18

    .line 110
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->conference(I)V

    :goto_18
    return-void
.end method

.method public blacklist dial(ILjava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 125
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 126
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-static {p2, p3, p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalDialAidl(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/voice/Dial;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->dial(ILandroid/hardware/radio/voice/Dial;)V

    goto :goto_20

    .line 128
    :cond_17
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {p2, p3, p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/V1_0/Dial;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    :goto_20
    return-void
.end method

.method public blacklist emergencyDial(ILjava/lang/String;Landroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p5

    move-object/from16 v3, p6

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_da

    iget-object v4, v0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v5, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto/16 :goto_da

    .line 146
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v4

    const/4 v5, 0x1

    const/16 v6, 0x20

    const/4 v7, 0x0

    if-eqz v4, :cond_61

    .line 147
    iget-object v8, v0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    .line 148
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/RILUtils;->convertToHalDialAidl(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/voice/Dial;

    move-result-object v10

    .line 149
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmaskInternalDial()I

    move-result v11

    .line 150
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/RadioVoiceProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/RadioVoiceProxy$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_4a

    :cond_48
    new-array v0, v7, [Ljava/lang/String;

    :goto_4a
    move-object v12, v0

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v13

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v0

    if-ne v0, v6, :cond_57

    move v15, v5

    goto :goto_58

    :cond_57
    move v15, v7

    :goto_58
    move/from16 v9, p1

    move/from16 v14, p4

    .line 147
    invoke-interface/range {v8 .. v15}, Landroid/hardware/radio/voice/IRadioVoice;->emergencyDial(ILandroid/hardware/radio/voice/Dial;I[Ljava/lang/String;IZZ)V

    goto/16 :goto_da

    .line 157
    :cond_61
    iget-object v4, v0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v8, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 158
    iget-object v0, v0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    move-object v8, v0

    check-cast v8, Landroid/hardware/radio/V1_6/IRadio;

    .line 159
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/RILUtils;->convertToHalDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/V1_0/Dial;

    move-result-object v10

    .line 160
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmaskInternalDial()I

    move-result v11

    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_88

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_8d

    .line 163
    :cond_88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_8d
    move-object v12, v0

    .line 164
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v13

    .line 166
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v0

    if-ne v0, v6, :cond_9a

    move v15, v5

    goto :goto_9b

    :cond_9a
    move v15, v7

    :goto_9b
    move/from16 v9, p1

    move/from16 v14, p4

    .line 158
    invoke-interface/range {v8 .. v15}, Landroid/hardware/radio/V1_6/IRadio;->emergencyDial_1_6(ILandroid/hardware/radio/V1_0/Dial;ILjava/util/ArrayList;IZZ)V

    goto :goto_da

    .line 169
    :cond_a3
    iget-object v0, v0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    move-object v8, v0

    check-cast v8, Landroid/hardware/radio/V1_4/IRadio;

    .line 170
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/RILUtils;->convertToHalDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/V1_0/Dial;

    move-result-object v10

    .line 171
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmaskInternalDial()I

    move-result v11

    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c0

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_c5

    .line 174
    :cond_c0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_c5
    move-object v12, v0

    .line 175
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v13

    .line 177
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v0

    if-ne v0, v6, :cond_d2

    move v15, v5

    goto :goto_d3

    :cond_d2
    move v15, v7

    :goto_d3
    move/from16 v9, p1

    move/from16 v14, p4

    .line 169
    invoke-interface/range {v8 .. v15}, Landroid/hardware/radio/V1_4/IRadio;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;ILjava/util/ArrayList;IZZ)V

    :cond_da
    :goto_da
    return-void
.end method

.method public blacklist exitEmergencyCallbackMode(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 189
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 190
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->exitEmergencyCallbackMode(I)V

    goto :goto_18

    .line 192
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->exitEmergencyCallbackMode(I)V

    :goto_18
    return-void
.end method

.method public blacklist explicitCallTransfer(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 203
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 204
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->explicitCallTransfer(I)V

    goto :goto_18

    .line 206
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->explicitCallTransfer(I)V

    :goto_18
    return-void
.end method

.method public blacklist getAidl()Landroid/hardware/radio/voice/IRadioVoice;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    return-object p0
.end method

.method public blacklist getCallForwardStatus(IIILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 221
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 222
    new-instance v0, Landroid/hardware/radio/voice/CallForwardInfo;

    invoke-direct {v0}, Landroid/hardware/radio/voice/CallForwardInfo;-><init>()V

    .line 224
    iput p2, v0, Landroid/hardware/radio/voice/CallForwardInfo;->reason:I

    .line 225
    iput p3, v0, Landroid/hardware/radio/voice/CallForwardInfo;->serviceClass:I

    .line 226
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Landroid/hardware/radio/voice/CallForwardInfo;->toa:I

    .line 227
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Landroid/hardware/radio/voice/CallForwardInfo;->number:Ljava/lang/String;

    .line 228
    iput v1, v0, Landroid/hardware/radio/voice/CallForwardInfo;->timeSeconds:I

    .line 229
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/voice/IRadioVoice;->getCallForwardStatus(ILandroid/hardware/radio/voice/CallForwardInfo;)V

    goto :goto_47

    .line 231
    :cond_2b
    new-instance v0, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 233
    iput p2, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    .line 234
    iput p3, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    .line 235
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    .line 236
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    .line 237
    iput v1, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    .line 238
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/V1_0/IRadio;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    :goto_47
    return-void
.end method

.method public blacklist getCallWaiting(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 250
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 251
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->getCallWaiting(II)V

    goto :goto_18

    .line 253
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->getCallWaiting(II)V

    :goto_18
    return-void
.end method

.method public blacklist getClip(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 264
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 265
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->getClip(I)V

    goto :goto_18

    .line 267
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getClip(I)V

    :goto_18
    return-void
.end method

.method public blacklist getClir(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 278
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 279
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->getClir(I)V

    goto :goto_18

    .line 281
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getClir(I)V

    :goto_18
    return-void
.end method

.method public blacklist getCurrentCalls(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 292
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 293
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->getCurrentCalls(I)V

    goto :goto_2a

    .line 294
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 295
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_6/IRadio;->getCurrentCalls_1_6(I)V

    goto :goto_2a

    .line 297
    :cond_25
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getCurrentCalls(I)V

    :goto_2a
    return-void
.end method

.method public blacklist getLastCallFailCause(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 307
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 308
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 309
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->getLastCallFailCause(I)V

    goto :goto_18

    .line 311
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getLastCallFailCause(I)V

    :goto_18
    return-void
.end method

.method public blacklist getMute(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 322
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 323
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->getMute(I)V

    goto :goto_18

    .line 325
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getMute(I)V

    :goto_18
    return-void
.end method

.method public blacklist getPreferredVoicePrivacy(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 336
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 337
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->getPreferredVoicePrivacy(I)V

    goto :goto_18

    .line 339
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getPreferredVoicePrivacy(I)V

    :goto_18
    return-void
.end method

.method public blacklist getTtyMode(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 350
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 351
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->getTtyMode(I)V

    goto :goto_18

    .line 353
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getTTYMode(I)V

    :goto_18
    return-void
.end method

.method public blacklist handleStkCallSetupRequestFromSim(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 365
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 366
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 367
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->handleStkCallSetupRequestFromSim(IZ)V

    goto :goto_18

    .line 369
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->handleStkCallSetupRequestFromSim(IZ)V

    :goto_18
    return-void
.end method

.method public blacklist hangup(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 381
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 382
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->hangup(II)V

    goto :goto_18

    .line 384
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->hangup(II)V

    :goto_18
    return-void
.end method

.method public blacklist hangupForegroundResumeBackground(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 394
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 395
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 396
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->hangupForegroundResumeBackground(I)V

    goto :goto_18

    .line 398
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->hangupForegroundResumeBackground(I)V

    :goto_18
    return-void
.end method

.method public blacklist hangupWaitingOrBackground(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 409
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 410
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->hangupWaitingOrBackground(I)V

    goto :goto_18

    .line 412
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->hangupWaitingOrBackground(I)V

    :goto_18
    return-void
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public blacklist isVoNrEnabled(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 422
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 423
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 424
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->isVoNrEnabled(I)V

    :cond_12
    return-void
.end method

.method public blacklist rejectCall(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 434
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 435
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 436
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->rejectCall(I)V

    goto :goto_18

    .line 438
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->rejectCall(I)V

    :goto_18
    return-void
.end method

.method public blacklist responseAcknowledgement()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 448
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 449
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 450
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0}, Landroid/hardware/radio/voice/IRadioVoice;->responseAcknowledgement()V

    goto :goto_18

    .line 452
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0}, Landroid/hardware/radio/V1_0/IRadio;->responseAcknowledgement()V

    :goto_18
    return-void
.end method

.method public blacklist sendBurstDtmf(ILjava/lang/String;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 465
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 466
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 467
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/voice/IRadioVoice;->sendBurstDtmf(ILjava/lang/String;II)V

    goto :goto_18

    .line 469
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/V1_0/IRadio;->sendBurstDtmf(ILjava/lang/String;II)V

    :goto_18
    return-void
.end method

.method public blacklist sendCdmaFeatureCode(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 480
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 481
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 482
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->sendCdmaFeatureCode(ILjava/lang/String;)V

    goto :goto_18

    .line 484
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->sendCDMAFeatureCode(ILjava/lang/String;)V

    :goto_18
    return-void
.end method

.method public blacklist sendDtmf(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 495
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 496
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 497
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->sendDtmf(ILjava/lang/String;)V

    goto :goto_18

    .line 499
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->sendDtmf(ILjava/lang/String;)V

    :goto_18
    return-void
.end method

.method public blacklist sendUssd(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 510
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 511
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 512
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->sendUssd(ILjava/lang/String;)V

    goto :goto_18

    .line 514
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->sendUssd(ILjava/lang/String;)V

    :goto_18
    return-void
.end method

.method public blacklist separateConnection(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 526
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 527
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->separateConnection(II)V

    goto :goto_18

    .line 529
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->separateConnection(II)V

    :goto_18
    return-void
.end method

.method public blacklist setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/voice/IRadioVoice;)V
    .registers 3

    .line 40
    iput-object p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 41
    iput-object p2, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mIsAidl:Z

    const-string p0, "RadioVoiceProxy"

    const-string p1, "AIDL initialized"

    .line 43
    invoke-static {p0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setCallForward(IIIILjava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 545
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 546
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 547
    new-instance v0, Landroid/hardware/radio/voice/CallForwardInfo;

    invoke-direct {v0}, Landroid/hardware/radio/voice/CallForwardInfo;-><init>()V

    .line 549
    iput p2, v0, Landroid/hardware/radio/voice/CallForwardInfo;->status:I

    .line 550
    iput p3, v0, Landroid/hardware/radio/voice/CallForwardInfo;->reason:I

    .line 551
    iput p4, v0, Landroid/hardware/radio/voice/CallForwardInfo;->serviceClass:I

    .line 552
    invoke-static {p5}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Landroid/hardware/radio/voice/CallForwardInfo;->toa:I

    .line 553
    invoke-static {p5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Landroid/hardware/radio/voice/CallForwardInfo;->number:Ljava/lang/String;

    .line 554
    iput p6, v0, Landroid/hardware/radio/voice/CallForwardInfo;->timeSeconds:I

    .line 555
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/voice/IRadioVoice;->setCallForward(ILandroid/hardware/radio/voice/CallForwardInfo;)V

    goto :goto_4a

    .line 557
    :cond_2c
    new-instance v0, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 559
    iput p2, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->status:I

    .line 560
    iput p3, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    .line 561
    iput p4, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    .line 562
    invoke-static {p5}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    .line 563
    invoke-static {p5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    .line 564
    iput p6, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    .line 565
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/V1_0/IRadio;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    :goto_4a
    return-void
.end method

.method public blacklist setCallWaiting(IZI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 578
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 579
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 580
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/voice/IRadioVoice;->setCallWaiting(IZI)V

    goto :goto_18

    .line 582
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/V1_0/IRadio;->setCallWaiting(IZI)V

    :goto_18
    return-void
.end method

.method public blacklist setClir(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 593
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 594
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 595
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->setClir(II)V

    goto :goto_18

    .line 597
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->setClir(II)V

    :goto_18
    return-void
.end method

.method public blacklist setMute(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 608
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 609
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 610
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->setMute(IZ)V

    goto :goto_18

    .line 612
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->setMute(IZ)V

    :goto_18
    return-void
.end method

.method public blacklist setPreferredVoicePrivacy(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 623
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 624
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 625
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->setPreferredVoicePrivacy(IZ)V

    goto :goto_18

    .line 627
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->setPreferredVoicePrivacy(IZ)V

    :goto_18
    return-void
.end method

.method public blacklist setTtyMode(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 638
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 639
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 640
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->setTtyMode(II)V

    goto :goto_18

    .line 642
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->setTTYMode(II)V

    :goto_18
    return-void
.end method

.method public blacklist setVoNrEnabled(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 653
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 654
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 655
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->setVoNrEnabled(IZ)V

    :cond_12
    return-void
.end method

.method public blacklist startDtmf(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 666
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 667
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 668
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->startDtmf(ILjava/lang/String;)V

    goto :goto_18

    .line 670
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->startDtmf(ILjava/lang/String;)V

    :goto_18
    return-void
.end method

.method public blacklist stopDtmf(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 680
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 681
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 682
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->stopDtmf(I)V

    goto :goto_18

    .line 684
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->stopDtmf(I)V

    :goto_18
    return-void
.end method

.method public blacklist switchWaitingOrHoldingAndActive(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 694
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 695
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 696
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->switchWaitingOrHoldingAndActive(I)V

    goto :goto_18

    .line 698
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->switchWaitingOrHoldingAndActive(I)V

    :goto_18
    return-void
.end method
