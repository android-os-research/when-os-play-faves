.class public Lcom/android/internal/telephony/RadioNetworkProxy;
.super Lcom/android/internal/telephony/RadioServiceProxy;
.source "RadioNetworkProxy.java"


# instance fields
.field private volatile blacklist mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;


# direct methods
.method public static synthetic blacklist $r8$lambda$GRSJKqsnhNQDnaP_JhudHSNgagk(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->lambda$startNetworkScan$1(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$nK6ky9mBjfF8NrQdxtndeij3lnQ(I)[Landroid/hardware/radio/network/RadioAccessSpecifier;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->lambda$startNetworkScan$2(I)[Landroid/hardware/radio/network/RadioAccessSpecifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$pSAYVRji9CpozVraZAkQS3MUYiM(I)[Landroid/hardware/radio/network/RadioAccessSpecifier;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->lambda$setSystemSelectionChannels$0(I)[Landroid/hardware/radio/network/RadioAccessSpecifier;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Lcom/android/internal/telephony/RadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    return-void
.end method

.method private static synthetic blacklist lambda$setSystemSelectionChannels$0(I)[Landroid/hardware/radio/network/RadioAccessSpecifier;
    .registers 1

    .line 654
    new-array p0, p0, [Landroid/hardware/radio/network/RadioAccessSpecifier;

    return-object p0
.end method

.method private static synthetic blacklist lambda$startNetworkScan$1(I)[Ljava/lang/String;
    .registers 1

    .line 686
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic blacklist lambda$startNetworkScan$2(I)[Landroid/hardware/radio/network/RadioAccessSpecifier;
    .registers 1

    .line 701
    new-array p0, p0, [Landroid/hardware/radio/network/RadioAccessSpecifier;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    .line 90
    invoke-super {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->clear()V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    return-void
.end method

.method public blacklist getAidl()Landroid/hardware/radio/network/IRadioNetwork;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    return-object p0
.end method

.method public blacklist getAllowedNetworkTypesBitmap(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 110
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 111
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getAllowedNetworkTypesBitmap(I)V

    goto :goto_3c

    .line 112
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 113
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_6/IRadio;->getAllowedNetworkTypesBitmap(I)V

    goto :goto_3c

    .line 114
    :cond_25
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 115
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_4/IRadio;

    .line 116
    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getPreferredNetworkTypeBitmap(I)V

    goto :goto_3c

    .line 118
    :cond_37
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getPreferredNetworkType(I)V

    :goto_3c
    return-void
.end method

.method public blacklist getAvailableBandModes(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 129
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 130
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getAvailableBandModes(I)V

    goto :goto_18

    .line 132
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getAvailableBandModes(I)V

    :goto_18
    return-void
.end method

.method public blacklist getAvailableNetworks(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 143
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 144
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getAvailableNetworks(I)V

    goto :goto_18

    .line 146
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getAvailableNetworks(I)V

    :goto_18
    return-void
.end method

.method public blacklist getBarringInfo(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 157
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 158
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getBarringInfo(I)V

    goto :goto_24

    .line 160
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_5/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_5/IRadio;->getBarringInfo(I)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist getCdmaRoamingPreference(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 171
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 172
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getCdmaRoamingPreference(I)V

    goto :goto_18

    .line 174
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getCdmaRoamingPreference(I)V

    :goto_18
    return-void
.end method

.method public blacklist getCellInfoList(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 185
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 186
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getCellInfoList(I)V

    goto :goto_2a

    .line 187
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 188
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_6/IRadio;->getCellInfoList_1_6(I)V

    goto :goto_2a

    .line 190
    :cond_25
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getCellInfoList(I)V

    :goto_2a
    return-void
.end method

.method public blacklist getDataRegistrationState(ILcom/android/internal/telephony/HalVersion;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 203
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 204
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getDataRegistrationState(I)V

    goto :goto_50

    :cond_13
    if-eqz p2, :cond_1d

    .line 205
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    .line 206
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_1d
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    .line 207
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 208
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_6/IRadio;->getDataRegistrationState_1_6(I)V

    goto :goto_50

    :cond_2f
    if-eqz p2, :cond_39

    .line 209
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    .line 210
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p2

    if-eqz p2, :cond_4b

    :cond_39
    iget-object p2, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    .line 211
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 212
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_5/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_5/IRadio;->getDataRegistrationState_1_5(I)V

    goto :goto_50

    .line 214
    :cond_4b
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getDataRegistrationState(I)V

    :goto_50
    return-void
.end method

.method public blacklist getImsRegistrationState(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 225
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 226
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getImsRegistrationState(I)V

    goto :goto_18

    .line 228
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getImsRegistrationState(I)V

    :goto_18
    return-void
.end method

.method public blacklist getNetworkSelectionMode(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 239
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 240
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getNetworkSelectionMode(I)V

    goto :goto_18

    .line 242
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getNetworkSelectionMode(I)V

    :goto_18
    return-void
.end method

.method public blacklist getOperator(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 253
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 254
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getOperator(I)V

    goto :goto_18

    .line 256
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getOperator(I)V

    :goto_18
    return-void
.end method

.method public blacklist getSignalStrength(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 267
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 268
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getSignalStrength(I)V

    goto :goto_3c

    .line 269
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 270
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_6/IRadio;->getSignalStrength_1_6(I)V

    goto :goto_3c

    .line 271
    :cond_25
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 272
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getSignalStrength_1_4(I)V

    goto :goto_3c

    .line 274
    :cond_37
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getSignalStrength(I)V

    :goto_3c
    return-void
.end method

.method public blacklist getSystemSelectionChannels(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 285
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 286
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getSystemSelectionChannels(I)V

    goto :goto_24

    .line 288
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_6/IRadio;->getSystemSelectionChannels(I)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist getUsageSetting(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 811
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 812
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 813
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getUsageSetting(I)V

    :cond_12
    return-void
.end method

.method public blacklist getVoiceRadioTechnology(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 299
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 300
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getVoiceRadioTechnology(I)V

    goto :goto_18

    .line 302
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getVoiceRadioTechnology(I)V

    :goto_18
    return-void
.end method

.method public blacklist getVoiceRegistrationState(ILcom/android/internal/telephony/HalVersion;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 315
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 316
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getVoiceRegistrationState(I)V

    goto :goto_50

    :cond_13
    if-eqz p2, :cond_1d

    .line 317
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    .line 318
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_1d
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    .line 319
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 320
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    .line 321
    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_6/IRadio;->getVoiceRegistrationState_1_6(I)V

    goto :goto_50

    :cond_2f
    if-eqz p2, :cond_39

    .line 322
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    .line 323
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p2

    if-eqz p2, :cond_4b

    :cond_39
    iget-object p2, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    .line 324
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 325
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_5/IRadio;

    .line 326
    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_5/IRadio;->getVoiceRegistrationState_1_5(I)V

    goto :goto_50

    .line 328
    :cond_4b
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getVoiceRegistrationState(I)V

    :goto_50
    return-void
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public blacklist isNrDualConnectivityEnabled(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 339
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 340
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->isNrDualConnectivityEnabled(I)V

    goto :goto_24

    .line 342
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_6/IRadio;->isNrDualConnectivityEnabled(I)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist responseAcknowledgement()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 353
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 354
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0}, Landroid/hardware/radio/network/IRadioNetwork;->responseAcknowledgement()V

    goto :goto_18

    .line 356
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0}, Landroid/hardware/radio/V1_0/IRadio;->responseAcknowledgement()V

    :goto_18
    return-void
.end method

.method public blacklist setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/network/IRadioNetwork;)V
    .registers 3

    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 72
    iput-object p2, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mIsAidl:Z

    const-string p0, "RadioNetworkProxy"

    const-string p1, "AIDL initialized"

    .line 74
    invoke-static {p0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setAllowedNetworkTypesBitmap(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2c

    .line 369
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 370
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    .line 371
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalRadioAccessFamilyAidl(I)I

    move-result p2

    .line 370
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/network/IRadioNetwork;->setAllowedNetworkTypesBitmap(II)V

    goto :goto_2c

    .line 373
    :cond_21
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    .line 374
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalRadioAccessFamily(I)I

    move-result p2

    .line 373
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_6/IRadio;->setAllowedNetworkTypesBitmap(II)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public blacklist setBandMode(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 402
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 403
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 404
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/network/IRadioNetwork;->setBandMode(II)V

    goto :goto_18

    .line 406
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->setBandMode(II)V

    :goto_18
    return-void
.end method

.method public blacklist setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 421
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 422
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/network/IRadioNetwork;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 424
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/V1_0/IRadio;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    return-void
.end method

.method public blacklist setCdmaRoamingPreference(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 436
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 437
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/network/IRadioNetwork;->setCdmaRoamingPreference(II)V

    goto :goto_18

    .line 439
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->setCdmaRoamingPreference(II)V

    :goto_18
    return-void
.end method

.method public blacklist setCellInfoListRate(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 450
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 451
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 452
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/network/IRadioNetwork;->setCellInfoListRate(II)V

    goto :goto_18

    .line 454
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->setCellInfoListRate(II)V

    :goto_18
    return-void
.end method

.method public blacklist setIndicationFilter(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 465
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 466
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 467
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    and-int/lit8 p2, p2, 0x7f

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/network/IRadioNetwork;->setIndicationFilter(II)V

    goto :goto_44

    .line 468
    :cond_15
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 469
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_5/IRadio;

    and-int/lit8 p2, p2, 0x7f

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_5/IRadio;->setIndicationFilter_1_5(II)V

    goto :goto_44

    .line 471
    :cond_29
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 472
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_2/IRadio;

    and-int/lit8 p2, p2, 0x1f

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_2/IRadio;->setIndicationFilter_1_2(II)V

    goto :goto_44

    .line 475
    :cond_3d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    and-int/lit8 p2, p2, 0x7

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->setIndicationFilter(II)V

    :goto_44
    return-void
.end method

.method public blacklist setLinkCapacityReportingCriteria(IIII[I[II)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    .line 497
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_84

    iget-object v1, v0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto/16 :goto_84

    .line 498
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 499
    iget-object v2, v0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    .line 501
    invoke-static/range {p7 .. p7}, Lcom/android/internal/telephony/RILUtils;->convertToHalAccessNetworkAidl(I)I

    move-result v9

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    .line 499
    invoke-interface/range {v2 .. v9}, Landroid/hardware/radio/network/IRadioNetwork;->setLinkCapacityReportingCriteria(IIII[I[II)V

    goto :goto_6a

    .line 502
    :cond_2a
    iget-object v1, v0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 503
    iget-object v0, v0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/V1_5/IRadio;

    .line 505
    invoke-static {p5}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v6

    .line 506
    invoke-static/range {p6 .. p6}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v7

    .line 507
    invoke-static/range {p7 .. p7}, Lcom/android/internal/telephony/RILUtils;->convertToHalAccessNetwork(I)I

    move-result v8

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 503
    invoke-interface/range {v1 .. v8}, Landroid/hardware/radio/V1_5/IRadio;->setLinkCapacityReportingCriteria_1_5(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_6a

    :cond_4d
    const/4 v1, 0x6

    move/from16 v2, p7

    if-eq v2, v1, :cond_6b

    .line 512
    iget-object v0, v0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/V1_2/IRadio;

    .line 514
    invoke-static {p5}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v6

    .line 515
    invoke-static/range {p6 .. p6}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v7

    .line 516
    invoke-static/range {p7 .. p7}, Lcom/android/internal/telephony/RILUtils;->convertToHalAccessNetwork(I)I

    move-result v8

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 512
    invoke-interface/range {v1 .. v8}, Landroid/hardware/radio/V1_2/IRadio;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    :goto_6a
    return-void

    .line 510
    :cond_6b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NGRAN unsupported on IRadio version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_84
    :goto_84
    return-void
.end method

.method public blacklist setLocationUpdates(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 528
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 529
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 530
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/network/IRadioNetwork;->setLocationUpdates(IZ)V

    goto :goto_18

    .line 532
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->setLocationUpdates(IZ)V

    :goto_18
    return-void
.end method

.method public blacklist setNetworkSelectionModeAutomatic(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 542
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 543
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 544
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->setNetworkSelectionModeAutomatic(I)V

    goto :goto_18

    .line 546
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->setNetworkSelectionModeAutomatic(I)V

    :goto_18
    return-void
.end method

.method public blacklist setNetworkSelectionModeManual(ILjava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 559
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 560
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 561
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    .line 562
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalAccessNetworkAidl(I)I

    move-result p3

    .line 561
    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/network/IRadioNetwork;->setNetworkSelectionModeManual(ILjava/lang/String;I)V

    goto :goto_32

    .line 563
    :cond_17
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 564
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_5/IRadio;

    .line 565
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalRadioAccessNetworks(I)I

    move-result p3

    .line 564
    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/V1_5/IRadio;->setNetworkSelectionModeManual_1_5(ILjava/lang/String;I)V

    goto :goto_32

    .line 567
    :cond_2d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    :goto_32
    return-void
.end method

.method public blacklist setNrDualConnectivityState(IB)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 579
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 580
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 581
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/network/IRadioNetwork;->setNrDualConnectivityState(IB)V

    goto :goto_24

    .line 583
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_6/IRadio;->setNrDualConnectivityState(IB)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist setPreferredNetworkTypeBitmap(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2c

    .line 387
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 388
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_4/IRadio;

    .line 389
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalRadioAccessFamily(I)I

    move-result p2

    .line 388
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->setPreferredNetworkTypeBitmap(II)V

    goto :goto_2c

    .line 391
    :cond_27
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->setPreferredNetworkType(II)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public blacklist setSignalStrengthReportingCriteria(ILjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/SignalThresholdInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 596
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9a

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_9a

    .line 597
    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 599
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/radio/network/SignalThresholdInfo;

    const/4 v1, 0x0

    .line 600
    :goto_1f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 602
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SignalThresholdInfo;

    .line 601
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertToHalSignalThresholdInfoAidl(Landroid/telephony/SignalThresholdInfo;)Landroid/hardware/radio/network/SignalThresholdInfo;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 604
    :cond_34
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/network/IRadioNetwork;->setSignalStrengthReportingCriteria(I[Landroid/hardware/radio/network/SignalThresholdInfo;)V

    goto :goto_9a

    .line 605
    :cond_3a
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 606
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_48
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SignalThresholdInfo;

    .line 607
    iget-object v1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast v1, Landroid/hardware/radio/V1_5/IRadio;

    .line 609
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertToHalSignalThresholdInfo(Landroid/telephony/SignalThresholdInfo;)Landroid/hardware/radio/V1_5/SignalThresholdInfo;

    move-result-object v2

    .line 611
    invoke-virtual {v0}, Landroid/telephony/SignalThresholdInfo;->getRadioAccessNetworkType()I

    move-result v0

    .line 610
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertToHalAccessNetwork(I)I

    move-result v0

    .line 608
    invoke-interface {v1, p1, v2, v0}, Landroid/hardware/radio/V1_5/IRadio;->setSignalStrengthReportingCriteria_1_5(ILandroid/hardware/radio/V1_5/SignalThresholdInfo;I)V

    goto :goto_48

    .line 614
    :cond_68
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SignalThresholdInfo;

    .line 615
    iget-object v1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    move-object v2, v1

    check-cast v2, Landroid/hardware/radio/V1_2/IRadio;

    .line 617
    invoke-virtual {v0}, Landroid/telephony/SignalThresholdInfo;->getHysteresisMs()I

    move-result v4

    .line 618
    invoke-virtual {v0}, Landroid/telephony/SignalThresholdInfo;->getHysteresisDb()I

    move-result v5

    .line 620
    invoke-virtual {v0}, Landroid/telephony/SignalThresholdInfo;->getThresholds()[I

    move-result-object v1

    .line 619
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v6

    .line 622
    invoke-virtual {v0}, Landroid/telephony/SignalThresholdInfo;->getRadioAccessNetworkType()I

    move-result v0

    .line 621
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertToHalAccessNetwork(I)I

    move-result v7

    move v3, p1

    .line 616
    invoke-interface/range {v2 .. v7}, Landroid/hardware/radio/V1_2/IRadio;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    goto :goto_6c

    :cond_9a
    :goto_9a
    return-void
.end method

.method public blacklist setSuppServiceNotifications(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 634
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 635
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 636
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/network/IRadioNetwork;->setSuppServiceNotifications(IZ)V

    goto :goto_18

    .line 638
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->setSuppServiceNotifications(IZ)V

    :goto_18
    return-void
.end method

.method public blacklist setSystemSelectionChannels(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 650
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_99

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_99

    .line 651
    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 652
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 653
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda3;-><init>()V

    .line 654
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/hardware/radio/network/RadioAccessSpecifier;

    .line 652
    invoke-interface {p0, p1, v0, p2}, Landroid/hardware/radio/network/IRadioNetwork;->setSystemSelectionChannels(IZ[Landroid/hardware/radio/network/RadioAccessSpecifier;)V

    goto :goto_99

    .line 655
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 656
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_5/IRadio;

    .line 657
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda4;-><init>()V

    .line 658
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda5;-><init>()V

    .line 659
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    .line 656
    invoke-interface {p0, p1, v0, p2}, Landroid/hardware/radio/V1_5/IRadio;->setSystemSelectionChannels_1_5(IZLjava/util/ArrayList;)V

    goto :goto_99

    .line 661
    :cond_70
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_3/IRadio;

    .line 662
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda6;-><init>()V

    .line 663
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda5;-><init>()V

    .line 664
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    .line 661
    invoke-interface {p0, p1, v0, p2}, Landroid/hardware/radio/V1_3/IRadio;->setSystemSelectionChannels(IZLjava/util/ArrayList;)V

    :cond_99
    :goto_99
    return-void
.end method

.method public blacklist setUsageSetting(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 825
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 826
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 827
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/network/IRadioNetwork;->setUsageSetting(II)V

    :cond_12
    return-void
.end method

.method public blacklist startNetworkScan(ILandroid/telephony/NetworkScanRequest;Lcom/android/internal/telephony/HalVersion;Landroid/os/Message;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 677
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a7

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_1a7

    .line 678
    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_90

    .line 679
    new-instance p3, Landroid/hardware/radio/network/NetworkScanRequest;

    invoke-direct {p3}, Landroid/hardware/radio/network/NetworkScanRequest;-><init>()V

    .line 681
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getScanType()I

    move-result v0

    iput v0, p3, Landroid/hardware/radio/network/NetworkScanRequest;->type:I

    .line 682
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getSearchPeriodicity()I

    move-result v0

    iput v0, p3, Landroid/hardware/radio/network/NetworkScanRequest;->interval:I

    .line 683
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getMaxSearchTime()I

    move-result v0

    iput v0, p3, Landroid/hardware/radio/network/NetworkScanRequest;->maxSearchTime:I

    .line 684
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getIncrementalResultsPeriodicity()I

    move-result v0

    iput v0, p3, Landroid/hardware/radio/network/NetworkScanRequest;->incrementalResultsPeriodicity:I

    .line 685
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getIncrementalResults()Z

    move-result v0

    iput-boolean v0, p3, Landroid/hardware/radio/network/NetworkScanRequest;->incrementalResults:Z

    .line 686
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getPlmns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p3, Landroid/hardware/radio/network/NetworkScanRequest;->mccMncs:[Ljava/lang/String;

    .line 687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 689
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getSpecifiers()[Landroid/telephony/RadioAccessSpecifier;

    move-result-object p2

    array-length v4, p2

    :goto_5d
    if-ge v3, v4, :cond_78

    aget-object v5, p2, v3

    .line 691
    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertToHalRadioAccessSpecifierAidl(Landroid/telephony/RadioAccessSpecifier;)Landroid/hardware/radio/network/RadioAccessSpecifier;

    move-result-object v5

    if-nez v5, :cond_72

    .line 694
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p0

    .line 693
    invoke-static {p4, v2, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 695
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 698
    :cond_72
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5d

    .line 700
    :cond_78
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p4, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda1;

    invoke-direct {p4}, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/hardware/radio/network/RadioAccessSpecifier;

    iput-object p2, p3, Landroid/hardware/radio/network/NetworkScanRequest;->specifiers:[Landroid/hardware/radio/network/RadioAccessSpecifier;

    .line 702
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetwork;->startNetworkScan(ILandroid/hardware/radio/network/NetworkScanRequest;)V

    goto/16 :goto_1a7

    :cond_90
    if-eqz p3, :cond_9a

    .line 703
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    .line 704
    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p3

    if-eqz p3, :cond_fb

    :cond_9a
    iget-object p3, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    .line 705
    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p3

    if-eqz p3, :cond_fb

    .line 706
    new-instance p3, Landroid/hardware/radio/V1_5/NetworkScanRequest;

    invoke-direct {p3}, Landroid/hardware/radio/V1_5/NetworkScanRequest;-><init>()V

    .line 708
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getScanType()I

    move-result v0

    iput v0, p3, Landroid/hardware/radio/V1_5/NetworkScanRequest;->type:I

    .line 709
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getSearchPeriodicity()I

    move-result v0

    iput v0, p3, Landroid/hardware/radio/V1_5/NetworkScanRequest;->interval:I

    .line 710
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getMaxSearchTime()I

    move-result v0

    iput v0, p3, Landroid/hardware/radio/V1_5/NetworkScanRequest;->maxSearchTime:I

    .line 711
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getIncrementalResultsPeriodicity()I

    move-result v0

    iput v0, p3, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResultsPeriodicity:I

    .line 712
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getIncrementalResults()Z

    move-result v0

    iput-boolean v0, p3, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResults:Z

    .line 713
    iget-object v0, p3, Landroid/hardware/radio/V1_5/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getPlmns()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 714
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getSpecifiers()[Landroid/telephony/RadioAccessSpecifier;

    move-result-object p2

    array-length v0, p2

    :goto_d5
    if-ge v3, v0, :cond_f2

    aget-object v4, p2, v3

    .line 716
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertToHalRadioAccessSpecifier15(Landroid/telephony/RadioAccessSpecifier;)Landroid/hardware/radio/V1_5/RadioAccessSpecifier;

    move-result-object v4

    if-nez v4, :cond_ea

    .line 719
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p0

    .line 718
    invoke-static {p4, v2, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 720
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 723
    :cond_ea
    iget-object v5, p3, Landroid/hardware/radio/V1_5/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_d5

    .line 725
    :cond_f2
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_5/IRadio;

    invoke-interface {p0, p1, p3}, Landroid/hardware/radio/V1_5/IRadio;->startNetworkScan_1_5(ILandroid/hardware/radio/V1_5/NetworkScanRequest;)V

    goto/16 :goto_1a7

    .line 727
    :cond_fb
    iget-object p3, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p3

    if-eqz p3, :cond_16d

    .line 728
    new-instance p3, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {p3}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 730
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getScanType()I

    move-result v0

    iput v0, p3, Landroid/hardware/radio/V1_2/NetworkScanRequest;->type:I

    .line 731
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getSearchPeriodicity()I

    move-result v0

    iput v0, p3, Landroid/hardware/radio/V1_2/NetworkScanRequest;->interval:I

    .line 732
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getMaxSearchTime()I

    move-result v0

    iput v0, p3, Landroid/hardware/radio/V1_2/NetworkScanRequest;->maxSearchTime:I

    .line 733
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getIncrementalResultsPeriodicity()I

    move-result v0

    iput v0, p3, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResultsPeriodicity:I

    .line 734
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getIncrementalResults()Z

    move-result v0

    iput-boolean v0, p3, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResults:Z

    .line 735
    iget-object v0, p3, Landroid/hardware/radio/V1_2/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getPlmns()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 737
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getSpecifiers()[Landroid/telephony/RadioAccessSpecifier;

    move-result-object p2

    array-length v0, p2

    :goto_136
    if-ge v3, v0, :cond_153

    aget-object v4, p2, v3

    .line 739
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertToHalRadioAccessSpecifier11(Landroid/telephony/RadioAccessSpecifier;)Landroid/hardware/radio/V1_1/RadioAccessSpecifier;

    move-result-object v4

    if-nez v4, :cond_14b

    .line 742
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p0

    .line 741
    invoke-static {p4, v2, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 743
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 746
    :cond_14b
    iget-object v5, p3, Landroid/hardware/radio/V1_2/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_136

    .line 749
    :cond_153
    iget-object p2, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object p4, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p2, p4}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p2

    if-eqz p2, :cond_165

    .line 750
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p3}, Landroid/hardware/radio/V1_4/IRadio;->startNetworkScan_1_4(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    goto :goto_1a7

    .line 753
    :cond_165
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_2/IRadio;

    invoke-interface {p0, p1, p3}, Landroid/hardware/radio/V1_2/IRadio;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    goto :goto_1a7

    .line 757
    :cond_16d
    new-instance p3, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {p3}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 759
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getScanType()I

    move-result v0

    iput v0, p3, Landroid/hardware/radio/V1_1/NetworkScanRequest;->type:I

    .line 760
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getSearchPeriodicity()I

    move-result v0

    iput v0, p3, Landroid/hardware/radio/V1_1/NetworkScanRequest;->interval:I

    .line 761
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getSpecifiers()[Landroid/telephony/RadioAccessSpecifier;

    move-result-object p2

    array-length v0, p2

    :goto_183
    if-ge v3, v0, :cond_1a0

    aget-object v4, p2, v3

    .line 763
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertToHalRadioAccessSpecifier11(Landroid/telephony/RadioAccessSpecifier;)Landroid/hardware/radio/V1_1/RadioAccessSpecifier;

    move-result-object v4

    if-nez v4, :cond_198

    .line 766
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p0

    .line 765
    invoke-static {p4, v2, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 767
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 770
    :cond_198
    iget-object v5, p3, Landroid/hardware/radio/V1_1/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_183

    .line 772
    :cond_1a0
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_1/IRadio;

    invoke-interface {p0, p1, p3}, Landroid/hardware/radio/V1_1/IRadio;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    :cond_1a7
    :goto_1a7
    return-void
.end method

.method public blacklist stopNetworkScan(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 782
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 783
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 784
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->stopNetworkScan(I)V

    goto :goto_24

    .line 786
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_1/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_1/IRadio;->stopNetworkScan(I)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist supplyNetworkDepersonalization(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 797
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 798
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 799
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/network/IRadioNetwork;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    goto :goto_18

    .line 801
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    :goto_18
    return-void
.end method
