.class public Lcom/android/internal/telephony/RadioConfigIndicationAidl;
.super Landroid/hardware/radio/config/IRadioConfigIndication$Stub;
.source "RadioConfigIndicationAidl.java"


# instance fields
.field private final blacklist mRadioConfig:Lcom/android/internal/telephony/RadioConfig;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RadioConfig;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/hardware/radio/config/IRadioConfigIndication$Stub;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/internal/telephony/RadioConfigIndicationAidl;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    return-void
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    const-string v0, "RadioConfigIndicationAidl"

    .line 54
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
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

.method public blacklist simSlotsStatusChanged(I[Landroid/hardware/radio/config/SimSlotStatus;)V
    .registers 4

    .line 45
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalSlotStatus(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[UNSL]< UNSOL_SIM_SLOT_STATUS_CHANGED "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/RadioConfigIndicationAidl;->logd(Ljava/lang/String;)V

    .line 47
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigIndicationAidl;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfig;->mSimSlotStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_2b

    .line 48
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_2b
    return-void
.end method
