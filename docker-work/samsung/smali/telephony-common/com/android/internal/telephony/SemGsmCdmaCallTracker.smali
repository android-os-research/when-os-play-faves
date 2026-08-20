.class public Lcom/android/internal/telephony/SemGsmCdmaCallTracker;
.super Lcom/android/internal/telephony/GsmCdmaCallTracker;
.source "SemGsmCdmaCallTracker.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;


# instance fields
.field private blacklist mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field private blacklist mSemCallDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SemCallDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    const-class v0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .registers 4

    .line 28
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mSemCallDetails:Ljava/util/ArrayList;

    .line 29
    iput-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 30
    iget-object p1, p1, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/16 v1, 0x3e8

    invoke-interface {p1, p0, v1, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->registerForCallDetailsChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialCdma - dial to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/TelephonyLogger;->dialArgsToString(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 37
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized blacklist dialGsm(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    monitor-enter p0

    .line 43
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialGsm - dial to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/TelephonyLogger;->dialArgsToString(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 45
    iget-boolean v0, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->isEmergency:Z

    .line 47
    iget-object v1, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "CHN"

    const-string v3, "HKG"

    const-string v4, "TPE"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 48
    iget-object v1, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "ril.simoperator"

    const-string v3, "ETC"

    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    const-string v3, "CBN"

    .line 51
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6b

    if-nez v0, :cond_6b

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_63

    goto :goto_6b

    .line 52
    :cond_63
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const-string p2, "CS call not available"

    invoke-direct {p1, v4, p2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 54
    :cond_6b
    :goto_6b
    iget-object v3, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    const-string v5, "CHN"

    const-string v6, "HKG"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c7

    const-string v3, "CTC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 55
    iget-object v1, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v1

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    if-eqz v1, :cond_94

    move v1, v4

    goto :goto_95

    :cond_94
    const/4 v1, 0x0

    :goto_95
    if-eqz v1, :cond_b6

    .line 56
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-nez v1, :cond_b6

    iget-object v1, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result v1

    if-nez v1, :cond_b6

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_ac

    goto :goto_b6

    .line 57
    :cond_ac
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const/16 p2, 0x65

    const-string v0, "Impossible to make CS Call with CTC card"

    invoke-direct {p1, p2, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_b6
    :goto_b6
    if-nez v0, :cond_c7

    .line 58
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eq v1, v4, :cond_bf

    goto :goto_c7

    .line 60
    :cond_bf
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const-string p2, "CS call not available now"

    invoke-direct {p1, v4, p2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 66
    :cond_c7
    :goto_c7
    iget-object v1, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "KDI"

    const-string v3, "RKT"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_148

    if-nez v0, :cond_148

    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    if-eqz v0, :cond_148

    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getMNOCarrierId()I

    move-result v0

    const/16 v1, 0x62d

    if-eq v0, v1, :cond_10d

    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getMNOCarrierId()I

    move-result v0

    const/16 v1, 0x9d2

    if-eq v0, v1, :cond_10d

    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 68
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getMNOCarrierId()I

    move-result v0

    const/16 v1, 0x83e

    if-eq v0, v1, :cond_10d

    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getMNOCarrierId()I

    move-result v0

    const/16 v1, 0x97d

    if-ne v0, v1, :cond_11d

    :cond_10d
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 69
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 72
    :cond_11d
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_12e

    goto :goto_148

    :cond_12e
    const-string p1, "dialGsm - Block dial CS call in SingleLTE network"

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 74
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const-string p2, "cannot dial in current state"

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13b
    const-string p1, "dialGsm - Block dial CS call in SingleLTE network"

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 71
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const-string p2, "cannot dial in current state"

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_148
    :goto_148
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialGsm(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p1
    :try_end_14c
    .catchall {:try_start_1 .. :try_end_14c} :catchall_14e

    monitor-exit p0

    return-object p1

    :catchall_14e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    .line 171
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_45

    :cond_a
    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mSemCallDetails:Ljava/util/ArrayList;

    .line 156
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_45

    .line 157
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_45

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_45

    .line 158
    check-cast v0, Ljava/util/ArrayList;

    .line 159
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_45

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mSemCallDetails:Ljava/util/ArrayList;

    .line 162
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SemCallDetails;

    .line 163
    iget-object v1, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mSemCallDetails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 165
    :cond_40
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mSemCallDetails:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_45
    :goto_45
    return-void
.end method

.method protected declared-synchronized blacklist handlePollCalls(Landroid/os/AsyncResult;)V
    .registers 13

    monitor-enter p0

    .line 83
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mSemCallDetails:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_57

    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 84
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/HalVersion;->lessOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 85
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_57

    .line 86
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    move v2, v1

    .line 88
    :goto_23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_55

    .line 89
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/DriverCall;

    .line 90
    iget-object v4, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mSemCallDetails:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SemCallDetails;

    const-string v5, "redirectnm"

    .line 92
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SemCallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/telephony/DriverCall;->forwardedNumber:Ljava/lang/String;

    if-eqz v5, :cond_45

    .line 94
    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    :cond_45
    const-string v5, "dualnumber"

    .line 96
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SemCallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/DriverCall;->forwardedNumber:Ljava/lang/String;

    if-eqz v4, :cond_52

    .line 98
    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_52
    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 102
    :cond_55
    iput-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 106
    :cond_57
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mSemCallDetails:Ljava/util/ArrayList;

    if-eqz v0, :cond_10c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_10c

    .line 109
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 111
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    move v3, v2

    :goto_6e
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length v5, v4

    if-ge v2, v5, :cond_10c

    .line 112
    aget-object v4, v4, v2

    if-ge v3, v0, :cond_108

    .line 117
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/DriverCall;

    .line 119
    iget v5, v5, Lcom/android/internal/telephony/DriverCall;->index:I

    add-int/lit8 v6, v2, 0x1

    if-ne v5, v6, :cond_108

    .line 120
    iget-object v5, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mSemCallDetails:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SemCallDetails;

    .line 121
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getConnectionExtras()Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_96

    .line 124
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :cond_96
    const-string v7, "isTwoPhone"

    .line 126
    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/SemCallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v7, :cond_bf

    const-string v7, "com.samsung.telephony.extra.IS_TWO_PHONE_MODE"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_bf

    const-string v7, "com.samsung.telephony.extra.IS_TWO_PHONE_MODE"

    const-string v9, "true"

    const-string v10, "isTwoPhone"

    .line 127
    invoke-virtual {v5, v10}, Lcom/android/internal/telephony/SemCallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b9

    move v9, v8

    goto :goto_ba

    :cond_b9
    move v9, v1

    :goto_ba
    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move v7, v8

    goto :goto_c0

    :cond_bf
    move v7, v1

    :goto_c0
    const-string v9, "cwToneSignal"

    .line 130
    invoke-virtual {v5, v9}, Lcom/android/internal/telephony/SemCallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e4

    const-string v9, "com.samsung.telephony.extra.CALL_WAITING_TONE_SIGNAL"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e4

    const-string v7, "com.samsung.telephony.extra.CALL_WAITING_TONE_SIGNAL"

    const-string v9, "cwToneSignal"

    .line 131
    invoke-virtual {v5, v9}, Lcom/android/internal/telephony/SemCallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v7, v8

    :cond_e4
    const-string v9, "redirectpi"

    .line 134
    invoke-virtual {v5, v9}, Lcom/android/internal/telephony/SemCallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_100

    const-string v9, "com.samsung.telephony.extra.CALL_FORWARDING_PRESENTATION"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_100

    const-string v7, "com.samsung.telephony.extra.CALL_FORWARDING_PRESENTATION"

    const-string v9, "redirectpi"

    .line 135
    invoke-virtual {v5, v9}, Lcom/android/internal/telephony/SemCallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_101

    :cond_100
    move v8, v7

    :goto_101
    if-eqz v8, :cond_106

    .line 139
    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/Connection;->setConnectionExtras(Landroid/os/Bundle;)V
    :try_end_106
    .catchall {:try_start_1 .. :try_end_106} :catchall_10e

    :cond_106
    add-int/lit8 v3, v3, 0x1

    :cond_108
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6e

    .line 146
    :cond_10c
    monitor-exit p0

    return-void

    :catchall_10e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
