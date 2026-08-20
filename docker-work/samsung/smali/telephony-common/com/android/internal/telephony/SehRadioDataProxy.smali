.class public Lcom/android/internal/telephony/SehRadioDataProxy;
.super Lcom/android/internal/telephony/SehRadioServiceProxy;
.source "SehRadioDataProxy.java"


# instance fields
.field private volatile blacklist mSehDataProxy:Lvendor/samsung/hardware/radio/data/ISehRadioData;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioDataProxy;->mSehDataProxy:Lvendor/samsung/hardware/radio/data/ISehRadioData;

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    .line 64
    sget-object v0, Lcom/android/internal/telephony/SemRIL;->SEC_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    .line 66
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioDataProxy;->mSehDataProxy:Lvendor/samsung/hardware/radio/data/ISehRadioData;

    return-void
.end method

.method public blacklist getAidl()Lvendor/samsung/hardware/radio/data/ISehRadioData;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioDataProxy;->mSehDataProxy:Lvendor/samsung/hardware/radio/data/ISehRadioData;

    return-object p0
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioDataProxy;->mSehDataProxy:Lvendor/samsung/hardware/radio/data/ISehRadioData;

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public blacklist setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/samsung/hardware/radio/data/ISehRadioData;)V
    .registers 3

    .line 45
    iput-object p1, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 46
    iput-object p2, p0, Lcom/android/internal/telephony/SehRadioDataProxy;->mSehDataProxy:Lvendor/samsung/hardware/radio/data/ISehRadioData;

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mIsAidl:Z

    const-string p0, "SehRadioDataProxy"

    const-string p1, "AIDL initialized"

    .line 48
    invoke-static {p0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setDataAllowed(IZLvendor/samsung/hardware/radio/data/SehAllowDataParam;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 80
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 81
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioDataProxy;->mSehDataProxy:Lvendor/samsung/hardware/radio/data/ISehRadioData;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/data/ISehRadioData;->setDataAllowed(IZLvendor/samsung/hardware/radio/data/SehAllowDataParam;)V

    goto :goto_21

    .line 83
    :cond_13
    new-instance v0, Lvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;-><init>()V

    .line 84
    iget p3, p3, Lvendor/samsung/hardware/radio/data/SehAllowDataParam;->defaultDataPhoneId:I

    iput p3, v0, Lvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;->defaultDataPhoneId:I

    .line 85
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, p2, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->setDataAllowed(IZLvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;)V

    :goto_21
    return-void
.end method

.method public blacklist setMobileDataSetting(IZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 91
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 92
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioDataProxy;->mSehDataProxy:Lvendor/samsung/hardware/radio/data/ISehRadioData;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/data/ISehRadioData;->setMobileDataSetting(IZZ)V

    goto :goto_18

    .line 94
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->setMobileDataSetting(IZZ)V

    :goto_18
    return-void
.end method
