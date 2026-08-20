.class public Lcom/android/internal/telephony/RadioModemProxy;
.super Lcom/android/internal/telephony/RadioServiceProxy;
.source "RadioModemProxy.java"


# instance fields
.field private volatile blacklist mModemProxy:Landroid/hardware/radio/modem/IRadioModem;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Lcom/android/internal/telephony/RadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    .line 56
    invoke-super {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->clear()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    return-void
.end method

.method public blacklist enableModem(IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 77
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 78
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/modem/IRadioModem;->enableModem(IZ)V

    goto :goto_24

    .line 80
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_3/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_3/IRadio;->enableModem(IZ)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist getAidl()Landroid/hardware/radio/modem/IRadioModem;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    return-object p0
.end method

.method public blacklist getBasebandVersion(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 91
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 92
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0, p1}, Landroid/hardware/radio/modem/IRadioModem;->getBasebandVersion(I)V

    goto :goto_18

    .line 94
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getBasebandVersion(I)V

    :goto_18
    return-void
.end method

.method public blacklist getDeviceIdentity(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 105
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 106
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0, p1}, Landroid/hardware/radio/modem/IRadioModem;->getDeviceIdentity(I)V

    goto :goto_18

    .line 108
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getDeviceIdentity(I)V

    :goto_18
    return-void
.end method

.method public blacklist getHardwareConfig(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 119
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 120
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0, p1}, Landroid/hardware/radio/modem/IRadioModem;->getHardwareConfig(I)V

    goto :goto_18

    .line 122
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getHardwareConfig(I)V

    :goto_18
    return-void
.end method

.method public blacklist getModemActivityInfo(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 133
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 134
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0, p1}, Landroid/hardware/radio/modem/IRadioModem;->getModemActivityInfo(I)V

    goto :goto_18

    .line 136
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getModemActivityInfo(I)V

    :goto_18
    return-void
.end method

.method public blacklist getModemStackStatus(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 147
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 148
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0, p1}, Landroid/hardware/radio/modem/IRadioModem;->getModemStackStatus(I)V

    goto :goto_24

    .line 150
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_3/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_3/IRadio;->getModemStackStatus(I)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist getRadioCapability(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 161
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 162
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0, p1}, Landroid/hardware/radio/modem/IRadioModem;->getRadioCapability(I)V

    goto :goto_18

    .line 164
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getRadioCapability(I)V

    :goto_18
    return-void
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public blacklist nvReadItem(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 176
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 177
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/modem/IRadioModem;->nvReadItem(II)V

    goto :goto_18

    .line 179
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->nvReadItem(II)V

    :goto_18
    return-void
.end method

.method public blacklist nvResetConfig(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 191
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 192
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalResetNvTypeAidl(I)I

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/modem/IRadioModem;->nvResetConfig(II)V

    goto :goto_20

    .line 194
    :cond_17
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalResetNvType(I)I

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->nvResetConfig(II)V

    :goto_20
    return-void
.end method

.method public blacklist nvWriteCdmaPrl(I[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 206
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 207
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/modem/IRadioModem;->nvWriteCdmaPrl(I[B)V

    goto :goto_1c

    .line 209
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    :goto_1c
    return-void
.end method

.method public blacklist nvWriteItem(IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 222
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 223
    new-instance v0, Landroid/hardware/radio/modem/NvWriteItem;

    invoke-direct {v0}, Landroid/hardware/radio/modem/NvWriteItem;-><init>()V

    .line 225
    iput p2, v0, Landroid/hardware/radio/modem/NvWriteItem;->itemId:I

    .line 226
    iput-object p3, v0, Landroid/hardware/radio/modem/NvWriteItem;->value:Ljava/lang/String;

    .line 227
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/modem/IRadioModem;->nvWriteItem(ILandroid/hardware/radio/modem/NvWriteItem;)V

    goto :goto_2a

    .line 229
    :cond_1c
    new-instance v0, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 231
    iput p2, v0, Landroid/hardware/radio/V1_0/NvWriteItem;->itemId:I

    .line 232
    iput-object p3, v0, Landroid/hardware/radio/V1_0/NvWriteItem;->value:Ljava/lang/String;

    .line 233
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/V1_0/IRadio;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    :goto_2a
    return-void
.end method

.method public blacklist requestShutdown(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 244
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 245
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0, p1}, Landroid/hardware/radio/modem/IRadioModem;->requestShutdown(I)V

    goto :goto_18

    .line 247
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->requestShutdown(I)V

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

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 258
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 259
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0}, Landroid/hardware/radio/modem/IRadioModem;->responseAcknowledgement()V

    goto :goto_18

    .line 261
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0}, Landroid/hardware/radio/V1_0/IRadio;->responseAcknowledgement()V

    :goto_18
    return-void
.end method

.method public blacklist sendDeviceState(IIZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 275
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 276
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/modem/IRadioModem;->sendDeviceState(IIZ)V

    goto :goto_18

    .line 278
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/V1_0/IRadio;->sendDeviceState(IIZ)V

    :goto_18
    return-void
.end method

.method public blacklist setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/modem/IRadioModem;)V
    .registers 3

    .line 37
    iput-object p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 38
    iput-object p2, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mIsAidl:Z

    const-string p0, "RadioModemProxy"

    const-string p1, "AIDL initialized"

    .line 40
    invoke-static {p0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setRadioCapability(ILcom/android/internal/telephony/RadioCapability;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 291
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 292
    new-instance v0, Landroid/hardware/radio/modem/RadioCapability;

    invoke-direct {v0}, Landroid/hardware/radio/modem/RadioCapability;-><init>()V

    .line 294
    invoke-virtual {p2}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/modem/RadioCapability;->session:I

    .line 295
    invoke-virtual {p2}, Lcom/android/internal/telephony/RadioCapability;->getPhase()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/modem/RadioCapability;->phase:I

    .line 296
    invoke-virtual {p2}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/modem/RadioCapability;->raf:I

    .line 297
    invoke-virtual {p2}, Lcom/android/internal/telephony/RadioCapability;->getLogicalModemUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/modem/RadioCapability;->logicalModemUuid:Ljava/lang/String;

    .line 298
    invoke-virtual {p2}, Lcom/android/internal/telephony/RadioCapability;->getStatus()I

    move-result p2

    iput p2, v0, Landroid/hardware/radio/modem/RadioCapability;->status:I

    .line 299
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/modem/IRadioModem;->setRadioCapability(ILandroid/hardware/radio/modem/RadioCapability;)V

    goto :goto_66

    .line 301
    :cond_3a
    new-instance v0, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 303
    invoke-virtual {p2}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/RadioCapability;->session:I

    .line 304
    invoke-virtual {p2}, Lcom/android/internal/telephony/RadioCapability;->getPhase()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/RadioCapability;->phase:I

    .line 305
    invoke-virtual {p2}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/RadioCapability;->raf:I

    .line 306
    invoke-virtual {p2}, Lcom/android/internal/telephony/RadioCapability;->getLogicalModemUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/RadioCapability;->logicalModemUuid:Ljava/lang/String;

    .line 307
    invoke-virtual {p2}, Lcom/android/internal/telephony/RadioCapability;->getStatus()I

    move-result p2

    iput p2, v0, Landroid/hardware/radio/V1_0/RadioCapability;->status:I

    .line 308
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/V1_0/IRadio;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    :goto_66
    return-void
.end method

.method public blacklist setRadioPower(IZZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 326
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 327
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/modem/IRadioModem;->setRadioPower(IZZZ)V

    goto :goto_3c

    .line 328
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 329
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/V1_6/IRadio;->setRadioPower_1_6(IZZZ)V

    goto :goto_3c

    .line 331
    :cond_25
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 332
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_5/IRadio;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/V1_5/IRadio;->setRadioPower_1_5(IZZZ)V

    goto :goto_3c

    .line 335
    :cond_37
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->setRadioPower(IZ)V

    :goto_3c
    return-void
.end method
