.class public Lcom/android/internal/telephony/SemTelephonyComponentFactory;
.super Lcom/android/internal/telephony/TelephonyComponentFactory;
.source "SemTelephonyComponentFactory.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist makeCarrierResolver(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CarrierResolver;
    .registers 2

    .line 135
    new-instance p0, Lcom/android/internal/telephony/SemCarrierIdentifier;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemCarrierIdentifier;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object p0
.end method

.method public blacklist makeDeviceStateMonitor(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/DeviceStateMonitor;
    .registers 2

    .line 60
    new-instance p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object p0
.end method

.method public blacklist makeEmergencyNumberTracker(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;
    .registers 3

    .line 122
    new-instance p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object p0
.end method

.method public blacklist makeEriManager(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/cdma/EriManager;
    .registers 3

    .line 55
    new-instance p0, Lcom/android/internal/telephony/cdma/SemEriManager;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SemEriManager;-><init>(Lcom/android/internal/telephony/Phone;I)V

    return-object p0
.end method

.method public blacklist makeGsmCdmaCallTracker(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/GsmCdmaCallTracker;
    .registers 2

    .line 107
    new-instance p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    return-object p0
.end method

.method public blacklist makeImsPhoneCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .registers 3

    .line 112
    new-instance p0, Lcom/android/internal/telephony/imsphone/SemImsPhoneCallTracker;

    new-instance v0, Lcom/android/internal/telephony/SemTelephonyComponentFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/SemTelephonyComponentFactory$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/SemImsPhoneCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ConnectorFactory;)V

    return-object p0
.end method

.method public blacklist makeNitzStateMachine(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/NitzStateMachine;
    .registers 2

    .line 130
    invoke-static {p1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->createInstance(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    move-result-object p0

    return-object p0
.end method

.method public blacklist makePhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)Lcom/android/internal/telephony/Phone;
    .registers 14

    .line 69
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->latest_modeltype()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4, p0, v0}, Lcom/android/internal/telephony/SemTelephonyHelper;->semGetTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", latestModelType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", preferred: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "] - phoneType: "

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "SemTelephonyComponentFactory"

    const-string v5, "createPhone["

    if-eq p0, v2, :cond_7a

    if-ne p0, v3, :cond_3b

    goto :goto_7a

    :cond_3b
    const/4 v2, 0x3

    if-eq p0, v2, :cond_5e

    const/4 v2, 0x4

    if-ne p0, v2, :cond_42

    goto :goto_5e

    .line 80
    :cond_42
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 77
    :cond_5e
    :goto_5e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "] - phoneType: CDMA"

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p5, v3

    goto :goto_95

    .line 74
    :cond_7a
    :goto_7a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "] - phoneType: GSM"

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p5, v2

    :goto_95
    :try_start_95
    const-string p0, "InitPhone"

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/PhoneFactory;->localLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_b2} :catch_b2

    :catch_b2
    if-ne p5, v3, :cond_b5

    const/4 p5, 0x6

    :cond_b5
    move v5, p5

    .line 91
    new-instance p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/SemGsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)V

    return-object p0
.end method

.method public blacklist makePhoneSwitcher(ILandroid/content/Context;Landroid/os/Looper;)Lcom/android/internal/telephony/data/PhoneSwitcher;
    .registers 5

    .line 96
    invoke-static {p2}, Lcom/android/internal/telephony/SemPhoneFactory;->makeSemPhoneFactory(Landroid/content/Context;)Lcom/android/internal/telephony/SemPhoneFactory;

    .line 98
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_13

    .line 99
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->make(ILandroid/content/Context;Landroid/os/Looper;)Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object p0

    return-object p0

    .line 101
    :cond_13
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->make(ILandroid/content/Context;Landroid/os/Looper;)Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object p0

    return-object p0
.end method

.method public blacklist makeServiceStateTracker(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ServiceStateTracker;
    .registers 3

    .line 117
    new-instance p0, Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SemServiceStateTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object p0
.end method
