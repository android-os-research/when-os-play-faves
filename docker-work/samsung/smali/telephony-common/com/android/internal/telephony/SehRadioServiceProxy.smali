.class public abstract Lcom/android/internal/telephony/SehRadioServiceProxy;
.super Ljava/lang/Object;
.source "SehRadioServiceProxy.java"


# instance fields
.field blacklist mHalVersion:Lcom/android/internal/telephony/HalVersion;

.field blacklist mIsAidl:Z

.field volatile blacklist mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/android/internal/telephony/SemRIL;->SEC_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    return-void
.end method


# virtual methods
.method abstract blacklist clear()V
.end method

.method public blacklist getHidl()Lvendor/samsung/hardware/radio/V2_0/ISehRadio;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    return-object p0
.end method

.method public blacklist isAidl()Z
    .registers 1

    .line 37
    iget-boolean p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mIsAidl:Z

    return p0
.end method

.method abstract blacklist isEmpty()Z
.end method

.method public blacklist setHidl(Lcom/android/internal/telephony/HalVersion;Lvendor/samsung/hardware/radio/V2_0/ISehRadio;)V
    .registers 3

    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 47
    iput-object p2, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mIsAidl:Z

    return-void
.end method
