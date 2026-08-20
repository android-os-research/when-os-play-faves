.class public Lcom/android/internal/telephony/RadioDataProxy;
.super Lcom/android/internal/telephony/RadioServiceProxy;
.source "RadioDataProxy.java"


# instance fields
.field private volatile blacklist mDataProxy:Landroid/hardware/radio/data/IRadioData;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Lcom/android/internal/telephony/RadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    return-void
.end method


# virtual methods
.method public blacklist allocatePduSessionId(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 89
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 90
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-interface {p0, p1}, Landroid/hardware/radio/data/IRadioData;->allocatePduSessionId(I)V

    goto :goto_24

    .line 92
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_6/IRadio;->allocatePduSessionId(I)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist cancelHandover(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 104
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 105
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/data/IRadioData;->cancelHandover(II)V

    goto :goto_24

    .line 107
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_6/IRadio;->cancelHandover(II)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist clear()V
    .registers 2

    .line 69
    invoke-super {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->clear()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    return-void
.end method

.method public blacklist deactivateDataCall(III)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 120
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 121
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/data/IRadioData;->deactivateDataCall(III)V

    goto :goto_30

    .line 122
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 123
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_2/IRadio;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/V1_2/IRadio;->deactivateDataCall_1_2(III)V

    goto :goto_30

    .line 126
    :cond_25
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2c

    const/4 p3, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p3, 0x0

    :goto_2d
    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/V1_0/IRadio;->deactivateDataCall(IIZ)V

    :goto_30
    return-void
.end method

.method public blacklist getAidl()Landroid/hardware/radio/data/IRadioData;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    return-object p0
.end method

.method public blacklist getDataCallList(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 138
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 139
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-interface {p0, p1}, Landroid/hardware/radio/data/IRadioData;->getDataCallList(I)V

    goto :goto_2a

    .line 140
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 141
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_6/IRadio;->getDataCallList_1_6(I)V

    goto :goto_2a

    .line 143
    :cond_25
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getDataCallList(I)V

    :goto_2a
    return-void
.end method

.method public blacklist getSlicingConfig(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 154
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 155
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-interface {p0, p1}, Landroid/hardware/radio/data/IRadioData;->getSlicingConfig(I)V

    goto :goto_24

    .line 157
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_6/IRadio;->getSlicingConfig(I)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public blacklist releasePduSessionId(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 169
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 170
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/data/IRadioData;->releasePduSessionId(II)V

    goto :goto_24

    .line 172
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_6/IRadio;->releasePduSessionId(II)V

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

    .line 182
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 183
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 184
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-interface {p0}, Landroid/hardware/radio/data/IRadioData;->responseAcknowledgement()V

    goto :goto_18

    .line 186
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0}, Landroid/hardware/radio/V1_0/IRadio;->responseAcknowledgement()V

    :goto_18
    return-void
.end method

.method public blacklist setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/data/IRadioData;)V
    .registers 3

    .line 50
    iput-object p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 51
    iput-object p2, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mIsAidl:Z

    const-string p0, "RadioDataProxy"

    const-string p1, "AIDL initialized"

    .line 53
    invoke-static {p0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setDataAllowed(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 198
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 199
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/data/IRadioData;->setDataAllowed(IZ)V

    goto :goto_18

    .line 201
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->setDataAllowed(IZ)V

    :goto_18
    return-void
.end method

.method public blacklist setDataProfile(I[Landroid/telephony/data/DataProfile;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 215
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 216
    array-length p3, p2

    new-array p3, p3, [Landroid/hardware/radio/data/DataProfileInfo;

    .line 218
    :goto_11
    array-length v0, p2

    if-ge v1, v0, :cond_1f

    .line 219
    aget-object v0, p2, v1

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertToHalDataProfile(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/data/DataProfileInfo;

    move-result-object v0

    aput-object v0, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 221
    :cond_1f
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-interface {p0, p1, p3}, Landroid/hardware/radio/data/IRadioData;->setDataProfile(I[Landroid/hardware/radio/data/DataProfileInfo;)V

    goto/16 :goto_97

    .line 222
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 223
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 224
    array-length v0, p2

    :goto_36
    if-ge v1, v0, :cond_44

    aget-object v2, p2, v1

    .line 225
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertToHalDataProfile15(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_5/DataProfileInfo;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 227
    :cond_44
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_5/IRadio;

    invoke-interface {p0, p1, p3}, Landroid/hardware/radio/V1_5/IRadio;->setDataProfile_1_5(ILjava/util/ArrayList;)V

    goto :goto_97

    .line 228
    :cond_4c
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 229
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 230
    array-length v0, p2

    :goto_5c
    if-ge v1, v0, :cond_6a

    aget-object v2, p2, v1

    .line 231
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertToHalDataProfile14(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_4/DataProfileInfo;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 233
    :cond_6a
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p3}, Landroid/hardware/radio/V1_4/IRadio;->setDataProfile_1_4(ILjava/util/ArrayList;)V

    goto :goto_97

    .line 235
    :cond_72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    array-length v2, p2

    :goto_78
    if-ge v1, v2, :cond_8c

    aget-object v3, p2, v1

    .line 237
    invoke-virtual {v3}, Landroid/telephony/data/DataProfile;->isPersistent()Z

    move-result v4

    if-eqz v4, :cond_89

    .line 238
    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertToHalDataProfile10(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_0/DataProfileInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_89
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    .line 241
    :cond_8c
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_97

    .line 242
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0, p1, v0, p3}, Landroid/hardware/radio/V1_0/IRadio;->setDataProfile(ILjava/util/ArrayList;Z)V

    :cond_97
    :goto_97
    return-void
.end method

.method public blacklist setDataThrottling(IBJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 258
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 259
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/data/IRadioData;->setDataThrottling(IBJ)V

    goto :goto_24

    .line 261
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/V1_6/IRadio;->setDataThrottling(IBJ)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist setInitialAttachApn(ILandroid/telephony/data/DataProfile;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 276
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 277
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalDataProfile(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/data/DataProfileInfo;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/data/IRadioData;->setInitialAttachApn(ILandroid/hardware/radio/data/DataProfileInfo;)V

    goto :goto_50

    .line 278
    :cond_17
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 279
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_5/IRadio;

    .line 280
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalDataProfile15(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_5/DataProfileInfo;

    move-result-object p2

    .line 279
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_5/IRadio;->setInitialAttachApn_1_5(ILandroid/hardware/radio/V1_5/DataProfileInfo;)V

    goto :goto_50

    .line 281
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 282
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_4/IRadio;

    .line 283
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalDataProfile14(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_4/DataProfileInfo;

    move-result-object p2

    .line 282
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->setInitialAttachApn_1_4(ILandroid/hardware/radio/V1_4/DataProfileInfo;)V

    goto :goto_50

    .line 285
    :cond_43
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalDataProfile10(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_0/DataProfileInfo;

    move-result-object v0

    .line 286
    invoke-virtual {p2}, Landroid/telephony/data/DataProfile;->isPersistent()Z

    move-result p2

    .line 285
    invoke-interface {p0, p1, v0, p2, p3}, Landroid/hardware/radio/V1_0/IRadio;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    :goto_50
    return-void
.end method

.method public blacklist setupDataCall(IIILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;Z)V
    .registers 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 315
    :cond_9
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 316
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p8, :cond_6b

    .line 319
    invoke-virtual/range {p8 .. p8}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 320
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 322
    :cond_32
    invoke-virtual/range {p8 .. p8}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move v3, v1

    .line 323
    :goto_3d
    invoke-virtual/range {p8 .. p8}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6d

    .line 324
    invoke-virtual/range {p8 .. p8}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-virtual/range {p8 .. p8}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    :cond_6b
    new-array v2, v1, [Ljava/lang/String;

    :cond_6d
    move-object/from16 v18, v2

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 332
    new-instance v1, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {v1}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    .line 333
    invoke-virtual/range {p4 .. p4}, Landroid/telephony/data/DataProfile;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/data/DataProfile$Builder;->setType(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v1

    .line 334
    invoke-virtual/range {p4 .. p4}, Landroid/telephony/data/DataProfile;->isPreferred()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/data/DataProfile$Builder;->setPreferred(Z)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v1

    move-object/from16 v2, p11

    .line 335
    invoke-virtual {v1, v2}, Landroid/telephony/data/DataProfile$Builder;->setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v1

    .line 336
    invoke-virtual/range {p4 .. p4}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v1

    .line 338
    invoke-virtual/range {p4 .. p4}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/data/DataProfile$Builder;->setProfileId(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v1

    .line 340
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object v1

    .line 341
    iget-object v11, v0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertToHalDataProfile(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/data/DataProfileInfo;

    move-result-object v14

    .line 342
    invoke-static/range {p8 .. p8}, Lcom/android/internal/telephony/RILUtils;->convertToHalLinkProperties(Landroid/net/LinkProperties;)[Landroid/hardware/radio/data/LinkAddress;

    move-result-object v17

    .line 343
    invoke-static/range {p10 .. p10}, Lcom/android/internal/telephony/RILUtils;->convertToHalSliceInfoAidl(Landroid/telephony/data/NetworkSliceInfo;)Landroid/hardware/radio/data/SliceInfo;

    move-result-object v20

    move/from16 v12, p1

    move/from16 v13, p3

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v19, p9

    move/from16 v21, p12

    .line 341
    invoke-interface/range {v11 .. v21}, Landroid/hardware/radio/data/IRadioData;->setupDataCall(IILandroid/hardware/radio/data/DataProfileInfo;ZI[Landroid/hardware/radio/data/LinkAddress;[Ljava/lang/String;ILandroid/hardware/radio/data/SliceInfo;Z)V

    goto/16 :goto_186

    :cond_c3
    move-object/from16 v2, p11

    .line 345
    iget-object v3, v0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-eqz v3, :cond_f7

    .line 346
    iget-object v0, v0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    move-object v11, v0

    check-cast v11, Landroid/hardware/radio/V1_6/IRadio;

    .line 347
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalDataProfile15(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_5/DataProfileInfo;

    move-result-object v14

    .line 348
    invoke-static/range {p8 .. p8}, Lcom/android/internal/telephony/RILUtils;->convertToHalLinkProperties15(Landroid/net/LinkProperties;)Ljava/util/ArrayList;

    move-result-object v17

    .line 349
    invoke-static/range {p10 .. p10}, Lcom/android/internal/telephony/RILUtils;->convertToHalSliceInfo(Landroid/telephony/data/NetworkSliceInfo;)Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    move-result-object v20

    .line 350
    invoke-static/range {p11 .. p11}, Lcom/android/internal/telephony/RILUtils;->convertToHalTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/hardware/radio/V1_6/OptionalTrafficDescriptor;

    move-result-object v21

    move/from16 v12, p1

    move/from16 v13, p3

    move/from16 v15, p6

    move/from16 v16, p7

    move-object/from16 v18, v9

    move/from16 v19, p9

    move/from16 v22, p12

    .line 346
    invoke-interface/range {v11 .. v22}, Landroid/hardware/radio/V1_6/IRadio;->setupDataCall_1_6(IILandroid/hardware/radio/V1_5/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;ILandroid/hardware/radio/V1_6/OptionalSliceInfo;Landroid/hardware/radio/V1_6/OptionalTrafficDescriptor;Z)V

    goto/16 :goto_186

    .line 352
    :cond_f7
    iget-object v2, v0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 353
    iget-object v0, v0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast v0, Landroid/hardware/radio/V1_5/IRadio;

    .line 354
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalDataProfile15(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_5/DataProfileInfo;

    move-result-object v3

    .line 355
    invoke-static/range {p8 .. p8}, Lcom/android/internal/telephony/RILUtils;->convertToHalLinkProperties15(Landroid/net/LinkProperties;)Ljava/util/ArrayList;

    move-result-object v6

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v4, p6

    move/from16 v5, p7

    move-object v7, v9

    .line 353
    invoke-interface/range {v0 .. v7}, Landroid/hardware/radio/V1_5/IRadio;->setupDataCall_1_5(IILandroid/hardware/radio/V1_5/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_186

    .line 357
    :cond_11b
    iget-object v2, v0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_13b

    .line 358
    iget-object v0, v0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    move-object v2, v0

    check-cast v2, Landroid/hardware/radio/V1_4/IRadio;

    .line 359
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalDataProfile14(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_4/DataProfileInfo;

    move-result-object v5

    move/from16 v3, p1

    move/from16 v4, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v10

    .line 358
    invoke-interface/range {v2 .. v9}, Landroid/hardware/radio/V1_4/IRadio;->setupDataCall_1_4(IILandroid/hardware/radio/V1_4/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_186

    .line 361
    :cond_13b
    iget-object v2, v0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_162

    .line 362
    iget-object v0, v0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    move-object v2, v0

    check-cast v2, Landroid/hardware/radio/V1_2/IRadio;

    .line 363
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalDataProfile10(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_0/DataProfileInfo;

    move-result-object v5

    .line 364
    invoke-virtual/range {p4 .. p4}, Landroid/telephony/data/DataProfile;->isPersistent()Z

    move-result v6

    move/from16 v3, p1

    move/from16 v4, p3

    move/from16 v7, p6

    move/from16 v8, p5

    move-object v0, v9

    move/from16 v9, p7

    move-object v11, v0

    .line 362
    invoke-interface/range {v2 .. v11}, Landroid/hardware/radio/V1_2/IRadio;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_186

    .line 372
    :cond_162
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_172

    .line 374
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    if-eqz v2, :cond_172

    .line 376
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    :cond_172
    move v4, v1

    .line 379
    iget-object v2, v0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 380
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalDataProfile10(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_0/DataProfileInfo;

    move-result-object v5

    .line 381
    invoke-virtual/range {p4 .. p4}, Landroid/telephony/data/DataProfile;->isPersistent()Z

    move-result v6

    move/from16 v3, p1

    move/from16 v7, p6

    move/from16 v8, p5

    .line 379
    invoke-interface/range {v2 .. v8}, Landroid/hardware/radio/V1_0/IRadio;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    :goto_186
    return-void
.end method

.method public blacklist startHandover(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 392
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 393
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 394
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/data/IRadioData;->startHandover(II)V

    goto :goto_24

    .line 396
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_6/IRadio;->startHandover(II)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist startKeepalive(IILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e3

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_e3

    .line 412
    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    const/16 v1, 0x2c

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_8d

    .line 413
    new-instance v0, Landroid/hardware/radio/data/KeepaliveRequest;

    invoke-direct {v0}, Landroid/hardware/radio/data/KeepaliveRequest;-><init>()V

    .line 415
    iput p2, v0, Landroid/hardware/radio/data/KeepaliveRequest;->cid:I

    .line 417
    invoke-virtual {p3}, Landroid/net/KeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object p2

    instance-of p2, p2, Ljava/net/Inet4Address;

    if-eqz p2, :cond_2f

    .line 418
    iput v4, v0, Landroid/hardware/radio/data/KeepaliveRequest;->type:I

    goto :goto_39

    .line 419
    :cond_2f
    invoke-virtual {p3}, Landroid/net/KeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object p2

    instance-of p2, p2, Ljava/net/Inet6Address;

    if-eqz p2, :cond_82

    .line 420
    iput v3, v0, Landroid/hardware/radio/data/KeepaliveRequest;->type:I

    .line 428
    :goto_39
    invoke-virtual {p3}, Landroid/net/KeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object p2

    .line 429
    invoke-virtual {p3}, Landroid/net/KeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object p5

    .line 430
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    array-length v1, v1

    new-array v2, v1, [B

    move v3, v4

    :goto_49
    if-ge v3, v1, :cond_56

    .line 432
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    aget-byte v5, v5, v3

    aput-byte v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 434
    :cond_56
    iput-object v2, v0, Landroid/hardware/radio/data/KeepaliveRequest;->sourceAddress:[B

    .line 435
    invoke-virtual {p3}, Landroid/net/KeepalivePacketData;->getSrcPort()I

    move-result p2

    iput p2, v0, Landroid/hardware/radio/data/KeepaliveRequest;->sourcePort:I

    .line 436
    invoke-virtual {p5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p2

    array-length p2, p2

    new-array v1, p2, [B

    :goto_65
    if-ge v4, p2, :cond_72

    .line 438
    invoke-virtual {p5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    aget-byte v2, v2, v4

    aput-byte v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    .line 440
    :cond_72
    iput-object v1, v0, Landroid/hardware/radio/data/KeepaliveRequest;->destinationAddress:[B

    .line 441
    invoke-virtual {p3}, Landroid/net/KeepalivePacketData;->getDstPort()I

    move-result p2

    iput p2, v0, Landroid/hardware/radio/data/KeepaliveRequest;->destinationPort:I

    .line 442
    iput p4, v0, Landroid/hardware/radio/data/KeepaliveRequest;->maxKeepaliveIntervalMillis:I

    .line 444
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/data/IRadioData;->startKeepalive(ILandroid/hardware/radio/data/KeepaliveRequest;)V

    goto :goto_d8

    .line 423
    :cond_82
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p0

    .line 422
    invoke-static {p5, v2, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 424
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 446
    :cond_8d
    new-instance v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v0}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 449
    iput p2, v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->cid:I

    .line 451
    invoke-virtual {p3}, Landroid/net/KeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object p2

    instance-of p2, p2, Ljava/net/Inet4Address;

    if-eqz p2, :cond_9f

    .line 452
    iput v4, v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->type:I

    goto :goto_a9

    .line 453
    :cond_9f
    invoke-virtual {p3}, Landroid/net/KeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object p2

    instance-of p2, p2, Ljava/net/Inet6Address;

    if-eqz p2, :cond_d9

    .line 454
    iput v3, v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->type:I

    .line 462
    :goto_a9
    invoke-virtual {p3}, Landroid/net/KeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object p2

    .line 463
    invoke-virtual {p3}, Landroid/net/KeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object p5

    .line 465
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p2

    iget-object v1, v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->sourceAddress:Ljava/util/ArrayList;

    .line 464
    invoke-static {p2, v1}, Lcom/android/internal/telephony/RILUtils;->appendPrimitiveArrayToArrayList([BLjava/util/ArrayList;)V

    .line 466
    invoke-virtual {p3}, Landroid/net/KeepalivePacketData;->getSrcPort()I

    move-result p2

    iput p2, v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->sourcePort:I

    .line 468
    invoke-virtual {p5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p2

    iget-object p5, v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->destinationAddress:Ljava/util/ArrayList;

    .line 467
    invoke-static {p2, p5}, Lcom/android/internal/telephony/RILUtils;->appendPrimitiveArrayToArrayList([BLjava/util/ArrayList;)V

    .line 469
    invoke-virtual {p3}, Landroid/net/KeepalivePacketData;->getDstPort()I

    move-result p2

    iput p2, v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->destinationPort:I

    .line 470
    iput p4, v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->maxKeepaliveIntervalMillis:I

    .line 472
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_1/IRadio;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/V1_1/IRadio;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    :goto_d8
    return-void

    .line 457
    :cond_d9
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p0

    .line 456
    invoke-static {p5, v2, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 458
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    :cond_e3
    :goto_e3
    return-void
.end method

.method public blacklist stopKeepalive(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 483
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 484
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 485
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/data/IRadioData;->stopKeepalive(II)V

    goto :goto_24

    .line 487
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_1/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_1/IRadio;->stopKeepalive(II)V

    :cond_24
    :goto_24
    return-void
.end method
