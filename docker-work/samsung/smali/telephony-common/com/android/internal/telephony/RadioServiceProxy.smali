.class public abstract Lcom/android/internal/telephony/RadioServiceProxy;
.super Ljava/lang/Object;
.source "RadioServiceProxy.java"


# instance fields
.field blacklist mHalVersion:Lcom/android/internal/telephony/HalVersion;

.field blacklist mIsAidl:Z

.field volatile blacklist mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    .line 61
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    return-void
.end method

.method public blacklist getHidl()Landroid/hardware/radio/V1_0/IRadio;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    return-object p0
.end method

.method public blacklist isAidl()Z
    .registers 1

    .line 35
    iget-boolean p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mIsAidl:Z

    return p0
.end method

.method public blacklist isEmpty()Z
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public blacklist responseAcknowledgement()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 79
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {p0}, Landroid/hardware/radio/V1_0/IRadio;->responseAcknowledgement()V

    :cond_12
    return-void
.end method

.method public blacklist setHidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/V1_0/IRadio;)V
    .registers 3

    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 45
    iput-object p2, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mIsAidl:Z

    return-void
.end method
