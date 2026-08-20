.class public Lcom/android/internal/telephony/SehRadioNetworkProxy;
.super Lcom/android/internal/telephony/SehRadioServiceProxy;
.source "SehRadioNetworkProxy.java"


# instance fields
.field private volatile blacklist mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    return-void
.end method

.method private static blacklist convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_3

    goto :goto_5

    :cond_3
    const-string p0, ""

    :goto_5
    return-object p0
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    .line 67
    sget-object v0, Lcom/android/internal/telephony/SemRIL;->SEC_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    .line 69
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    return-void
.end method

.method public blacklist emergencyControl(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 166
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 167
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->emergencyControl(II)V

    goto :goto_18

    .line 169
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->emergencyControl(II)V

    :goto_18
    return-void
.end method

.method public blacklist emergencySearch(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 157
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 158
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->emergencySearch(I)V

    goto :goto_18

    .line 160
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->emergencySearch(I)V

    :goto_18
    return-void
.end method

.method public blacklist getAidl()Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    return-object p0
.end method

.method public blacklist getAvailableNetworks(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 317
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 318
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->getAvailableNetworks(I)V

    goto :goto_18

    .line 320
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getAvailableNetworks(I)V

    :goto_18
    return-void
.end method

.method public blacklist getCnap(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 175
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 176
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->getCnap(I)V

    goto :goto_18

    .line 178
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getCnap(I)V

    :goto_18
    return-void
.end method

.method public blacklist getCsgList(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 184
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 185
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->getCsgList(I)V

    goto :goto_18

    .line 187
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getCsgList(I)V

    :goto_18
    return-void
.end method

.method public blacklist getDisable2g(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 139
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 140
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->getDisable2g(I)V

    goto :goto_18

    .line 142
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getDisable2g(I)V

    :goto_18
    return-void
.end method

.method public blacklist getNrIconType(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 234
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 235
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->getNrIconType(I)V

    goto :goto_1a

    .line 237
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    check-cast p0, Lvendor/samsung/hardware/radio/V2_1/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio;->getNrIconType(I)V

    :goto_1a
    return-void
.end method

.method public blacklist getNrMode(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 225
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 226
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->getNrMode(I)V

    goto :goto_1a

    .line 228
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    check-cast p0, Lvendor/samsung/hardware/radio/V2_1/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio;->getNrMode(I)V

    :goto_1a
    return-void
.end method

.method public blacklist getPreferredNetworkList(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 104
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 105
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->getPreferredNetworkList(I)V

    goto :goto_18

    .line 107
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getPreferredNetworkList(I)V

    :goto_18
    return-void
.end method

.method public blacklist getRoamingNetworkInfoViaBLE(IBLjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist getVendorSpecificConfiguration(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 243
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 244
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->getVendorSpecificConfiguration(I)V

    goto :goto_1a

    .line 246
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    check-cast p0, Lvendor/samsung/hardware/radio/V2_2/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio;->getVendorSpecificConfiguration(I)V

    :goto_1a
    return-void
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public blacklist selectCsgManual(ILjava/lang/String;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 193
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_2b

    .line 194
    new-instance v0, Lvendor/samsung/hardware/radio/network/SehCsgInfo;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/network/SehCsgInfo;-><init>()V

    .line 195
    iput p3, v0, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->csgId:I

    .line 196
    iput-object v1, v0, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->name:Ljava/lang/String;

    .line 197
    invoke-static {p2}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->plmn:Ljava/lang/String;

    .line 198
    iput p4, v0, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->rat:I

    .line 199
    iput v2, v0, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->category:I

    .line 200
    iput v2, v0, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->signalStrength:I

    .line 201
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->selectCsgManual(ILvendor/samsung/hardware/radio/network/SehCsgInfo;)V

    goto :goto_45

    .line 203
    :cond_2b
    new-instance v0, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;-><init>()V

    .line 204
    iput p3, v0, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->csgId:I

    .line 205
    iput-object v1, v0, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->name:Ljava/lang/String;

    .line 206
    invoke-static {p2}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->plmn:Ljava/lang/String;

    .line 207
    iput p4, v0, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->rat:I

    .line 208
    iput v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->category:I

    .line 209
    iput v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->signalStrength:I

    .line 210
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->selectCsgManual(ILvendor/samsung/hardware/radio/V2_0/SehCsgInfo;)V

    :goto_45
    return-void
.end method

.method public blacklist sendEncodedUssd(I[BII)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 276
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 277
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 278
    new-instance v0, Lvendor/samsung/hardware/radio/network/SehEncodedUssd;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/network/SehEncodedUssd;-><init>()V

    .line 279
    new-array v2, p3, [B

    iput-object v2, v0, Lvendor/samsung/hardware/radio/network/SehEncodedUssd;->encodedUssd:[B

    :goto_17
    if-ge v1, p3, :cond_22

    .line 281
    iget-object v2, v0, Lvendor/samsung/hardware/radio/network/SehEncodedUssd;->encodedUssd:[B

    aget-byte v3, p2, v1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 283
    :cond_22
    iput p3, v0, Lvendor/samsung/hardware/radio/network/SehEncodedUssd;->ussdLength:I

    .line 284
    iput p4, v0, Lvendor/samsung/hardware/radio/network/SehEncodedUssd;->dcsCode:I

    .line 285
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->sendEncodedUssd(ILvendor/samsung/hardware/radio/network/SehEncodedUssd;)V

    goto :goto_4b

    .line 287
    :cond_2c
    new-instance v0, Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;-><init>()V

    .line 288
    array-length v2, p2

    :goto_32
    if-ge v1, v2, :cond_42

    aget-byte v3, p2, v1

    .line 289
    iget-object v4, v0, Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;->encodedUssd:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 291
    :cond_42
    iput p3, v0, Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;->ussdLength:I

    .line 292
    iput p4, v0, Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;->dcsCode:I

    .line 293
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->sendEncodedUssd(ILvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;)V

    :goto_4b
    return-void
.end method

.method public blacklist sendRequestRaw(I[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 299
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 300
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->sendRequestRaw(I[B)V

    goto :goto_1c

    .line 302
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->sendRequestRaw(ILjava/util/ArrayList;)V

    :goto_1c
    return-void
.end method

.method public blacklist sendRequestStrings(I[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 307
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 308
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 309
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->sendRequestStrings(I[Ljava/lang/String;)V

    goto :goto_21

    .line 311
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->sendRequestStrings(ILjava/util/ArrayList;)V

    :goto_21
    return-void
.end method

.method public blacklist setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;)V
    .registers 3

    .line 48
    iput-object p1, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 49
    iput-object p2, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mIsAidl:Z

    const-string p0, "SehRadioNetworkProxy"

    const-string p1, "AIDL initialized"

    .line 51
    invoke-static {p0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setCurrentNetworkInfoViaBLE(I[Lvendor/samsung/hardware/radio/network/SehCurrentNetworkInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist setDisable2g(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 148
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 149
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->setDisable2g(II)V

    goto :goto_18

    .line 151
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->setDisable2g(II)V

    :goto_18
    return-void
.end method

.method public blacklist setImsCallList(ILjava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehImsCall;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 83
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 85
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lvendor/samsung/hardware/radio/network/SehImsCall;

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;

    .line 88
    new-instance v3, Lvendor/samsung/hardware/radio/network/SehImsCall;

    invoke-direct {v3}, Lvendor/samsung/hardware/radio/network/SehImsCall;-><init>()V

    aput-object v3, v0, v1

    .line 89
    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;->state:I

    iput v4, v3, Lvendor/samsung/hardware/radio/network/SehImsCall;->state:I

    .line 90
    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;->type:I

    iput v4, v3, Lvendor/samsung/hardware/radio/network/SehImsCall;->type:I

    .line 91
    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;->isMt:I

    iput v4, v3, Lvendor/samsung/hardware/radio/network/SehImsCall;->isMt:I

    .line 92
    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;->isMpty:I

    iput v4, v3, Lvendor/samsung/hardware/radio/network/SehImsCall;->isMpty:I

    .line 93
    iget-object v2, v2, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;->number:Ljava/lang/String;

    if-eqz v2, :cond_40

    goto :goto_42

    :cond_40
    const-string v2, ""

    :goto_42
    iput-object v2, v3, Lvendor/samsung/hardware/radio/network/SehImsCall;->number:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 96
    :cond_47
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->setImsCallList(I[Lvendor/samsung/hardware/radio/network/SehImsCall;)V

    goto :goto_52

    .line 98
    :cond_4d
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->setImsCallList(ILjava/util/ArrayList;)V

    :goto_52
    return-void
.end method

.method public blacklist setNrDisableMode(IIZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 216
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 217
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->setNrMode(IIZ)V

    goto :goto_1a

    .line 219
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    check-cast p0, Lvendor/samsung/hardware/radio/V2_2/ISehRadio;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio;->setNrMode_2_2(IIZ)V

    :goto_1a
    return-void
.end method

.method public blacklist setPreferredNetworkList(IILjava/lang/String;Ljava/lang/String;IIII)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 114
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 115
    new-instance v0, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;-><init>()V

    .line 116
    iput p2, v0, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->index:I

    .line 117
    invoke-static {p3}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->oper:Ljava/lang/String;

    .line 118
    invoke-static {p4}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->plmn:Ljava/lang/String;

    .line 119
    iput p5, v0, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->gsmAct:I

    .line 120
    iput p6, v0, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->gsmCompactAct:I

    .line 121
    iput p7, v0, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->utranAct:I

    .line 122
    iput p8, v0, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->mode:I

    .line 123
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->setPreferredNetworkList(ILvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;)V

    goto :goto_4e

    .line 125
    :cond_2e
    new-instance v0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;-><init>()V

    .line 126
    iput p2, v0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->index:I

    .line 127
    invoke-static {p3}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->oper:Ljava/lang/String;

    .line 128
    invoke-static {p4}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->plmn:Ljava/lang/String;

    .line 129
    iput p5, v0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->gsmAct:I

    .line 130
    iput p6, v0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->gsmCompactAct:I

    .line 131
    iput p7, v0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->utranAct:I

    .line 132
    iput p8, v0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->mode:I

    .line 133
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->setPreferredNetworkList(ILvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;)V

    :goto_4e
    return-void
.end method

.method public blacklist setRoamingNetworkInfoViaBLE(I[Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist setScanResultViaBLE(IBB)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist setVendorSpecificConfiguration(ILjava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SemVendorConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 252
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 254
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;

    const/4 v1, 0x0

    .line 256
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SemVendorConfiguration;

    .line 257
    new-instance v3, Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;

    invoke-direct {v3}, Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;-><init>()V

    .line 258
    invoke-virtual {v2}, Lcom/android/internal/telephony/SemVendorConfiguration;->getConfigurationName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;->name:Ljava/lang/String;

    .line 259
    invoke-virtual {v2}, Lcom/android/internal/telephony/SemVendorConfiguration;->getConfigurationValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;->value:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .line 260
    aput-object v3, v0, v1

    move v1, v2

    goto :goto_18

    .line 262
    :cond_43
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->setVendorSpecificConfiguration(I[Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;)V

    goto :goto_82

    .line 264
    :cond_49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_52
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SemVendorConfiguration;

    .line 266
    new-instance v2, Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;

    invoke-direct {v2}, Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;-><init>()V

    .line 267
    invoke-virtual {v1}, Lcom/android/internal/telephony/SemVendorConfiguration;->getConfigurationName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;->name:Ljava/lang/String;

    .line 268
    invoke-virtual {v1}, Lcom/android/internal/telephony/SemVendorConfiguration;->getConfigurationValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;->value:Ljava/lang/String;

    .line 269
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 271
    :cond_7b
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    check-cast p0, Lvendor/samsung/hardware/radio/V2_2/ISehRadio;

    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio;->setVendorSpecificConfiguration(ILjava/util/ArrayList;)V

    :goto_82
    return-void
.end method
