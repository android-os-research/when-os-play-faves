.class public Lcom/android/internal/telephony/SmsDomainSelector;
.super Landroid/os/Handler;
.source "SmsDomainSelector.java"


# static fields
.field public static final blacklist NET_TYPE_MAX:I = 0x5

.field public static final blacklist SIM_TYPE_KTT:I = 0x2

.field public static final blacklist SIM_TYPE_LGU:I = 0x3

.field public static final blacklist SIM_TYPE_SKT:I = 0x4

.field public static final blacklist SIM_TYPE_STD:I = 0x1

.field public static final blacklist SIM_TYPE_TEST:I = 0xc

.field public static final blacklist SIM_TYPE_UNREG_KTT:I = 0x14

.field public static final blacklist SIM_TYPE_UNREG_LGU:I = 0x12

.field public static final blacklist SIM_TYPE_UNREG_SKT:I = 0x13

.field public static final blacklist SMS_DOMAIN_CS_ONLY:I = 0x0

.field public static final blacklist SMS_DOMAIN_CS_ONLY_KTT:I = 0x3

.field public static final blacklist SMS_DOMAIN_CS_ONLY_SKT:I = 0x3

.field public static final blacklist SMS_DOMAIN_CS_PREFERRED:I = 0x2

.field public static final blacklist SMS_DOMAIN_CS_PREF_KTT:I = 0x1

.field public static final blacklist SMS_DOMAIN_CS_PREF_SKT:I = 0x2

.field public static final blacklist SMS_DOMAIN_IMS_ONLY:I = 0x4

.field public static final blacklist SMS_DOMAIN_IMS_PREFERRED:I = 0x5

.field public static final blacklist SMS_DOMAIN_PS_ONLY:I = 0x1

.field public static final blacklist SMS_DOMAIN_PS_ONLY_SKT:I = 0x1

.field public static final blacklist SMS_DOMAIN_PS_PREFERRED:I = 0x3

.field public static final blacklist SMS_DOMAIN_PS_PREF_KTT:I

.field public static final blacklist SMS_DOMAIN_PS_PREF_SKT:I

.field private static final blacklist isMultiSim:Z


# instance fields
.field private final blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final blacklist mContext:Landroid/content/Context;

.field private volatile blacklist mIsRegistered:Z

.field private volatile blacklist mIsSmsCapable:Z

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private volatile blacklist mRegisteredTransportType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 64
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    sput-boolean v1, Lcom/android/internal/telephony/SmsDomainSelector;->isMultiSim:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V
    .registers 4

    .line 79
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mRegisteredTransportType:I

    .line 80
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 81
    iput-object p2, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mContext:Landroid/content/Context;

    .line 82
    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method

.method private blacklist convertPrefmodeToDomain(II)I
    .registers 8

    .line 408
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object p1

    const-string v0, "SKT"

    const-string v1, "LGU"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eqz p1, :cond_26

    if-eqz p2, :cond_25

    if-eq p2, v2, :cond_24

    if-eq p2, v4, :cond_23

    if-eq p2, v3, :cond_22

    return v1

    :cond_22
    return v3

    :cond_23
    return v0

    :cond_24
    return v2

    :cond_25
    return v4

    .line 423
    :cond_26
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object p0

    const-string p1, "KT_KR"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_41

    if-eq p2, v2, :cond_41

    if-eq p2, v4, :cond_40

    if-eq p2, v3, :cond_3f

    return v4

    :cond_3f
    return v3

    :cond_40
    return v0

    :cond_41
    return v1
.end method

.method private blacklist convertSimTypeToString(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2b

    const/4 p0, 0x2

    if-eq p1, p0, :cond_28

    const/4 p0, 0x3

    if-eq p1, p0, :cond_25

    const/4 p0, 0x4

    if-eq p1, p0, :cond_22

    const/16 p0, 0xc

    if-eq p1, p0, :cond_1f

    packed-switch p1, :pswitch_data_2e

    const-string p0, "unknown"

    goto :goto_2d

    :pswitch_16
    const-string p0, "Unreg KTT"

    goto :goto_2d

    :pswitch_19
    const-string p0, "Unreg SKT"

    goto :goto_2d

    :pswitch_1c
    const-string p0, "Unreg LGU"

    goto :goto_2d

    :cond_1f
    const-string p0, "Samsung Testbed"

    goto :goto_2d

    :cond_22
    const-string p0, "SKT"

    goto :goto_2d

    :cond_25
    const-string p0, "LGU"

    goto :goto_2d

    :cond_28
    const-string p0, "KTT"

    goto :goto_2d

    :cond_2b
    const-string p0, "STD"

    :goto_2d
    return-object p0

    :pswitch_data_2e
    .packed-switch 0x12
        :pswitch_1c
        :pswitch_19
        :pswitch_16
    .end packed-switch
.end method

.method private blacklist is2gDataNetwork()Z
    .registers 3

    .line 304
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_20

    if-eq p0, v0, :cond_20

    const/4 v1, 0x2

    if-eq p0, v1, :cond_20

    const/4 v1, 0x4

    if-eq p0, v1, :cond_20

    const/4 v1, 0x5

    if-eq p0, v1, :cond_20

    const/4 v1, 0x6

    if-eq p0, v1, :cond_20

    const/16 v1, 0x10

    if-eq p0, v1, :cond_20

    const/4 v0, 0x0

    :cond_20
    return v0
.end method

.method private blacklist isOnCall()Z
    .registers 7

    .line 324
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCallStateForSlot(I)I

    move-result v0

    .line 325
    sget-boolean v2, Lcom/android/internal/telephony/SmsDomainSelector;->isMultiSim:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_17

    .line 326
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getCallStateForSlot(I)I

    move-result v2

    goto :goto_18

    :cond_17
    move v2, v1

    .line 329
    :goto_18
    iget-object v4, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    const-string v5, "SmsDomainSelector"

    if-eqz v4, :cond_3b

    .line 330
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p0

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p0, v4, :cond_36

    const-string p0, "NO IMS call State"

    .line 331
    invoke-static {v5, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    :cond_36
    const-string p0, "IMS call State"

    .line 333
    invoke-static {v5, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    :goto_3b
    if-eq v0, v3, :cond_46

    const/4 p0, 0x2

    if-eq v0, p0, :cond_46

    if-eq v2, v3, :cond_46

    if-ne v2, p0, :cond_45

    goto :goto_46

    :cond_45
    return v1

    :cond_46
    :goto_46
    const-string p0, "isOnCall"

    .line 339
    invoke-static {v5, p0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private blacklist isRegistered(I)Z
    .registers 3

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SmsDomainSelector;->isRegistered(IZ)Z

    move-result p0

    return p0
.end method

.method private blacklist isRegistered(IZ)Z
    .registers 8

    const-string v0, "ril.simtype"

    const-string v1, "0"

    .line 107
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 108
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mIsRegistered:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mIsSmsCapable:Z

    if-eqz v1, :cond_1b

    move v1, v2

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 109
    :goto_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSmsIpRegistered["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " SIM = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsDomainSelector;->convertSimTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "SmsDomainSelector"

    invoke-static {v3, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object p0

    const-string p1, "LGU"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5e

    const/4 p0, 0x3

    if-ne v0, p0, :cond_5e

    if-nez p2, :cond_5e

    return v2

    :cond_5e
    return v1
.end method


# virtual methods
.method public blacklist convertToDomainName(I)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_23

    const/4 p0, 0x1

    if-eq p1, p0, :cond_20

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1d

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1a

    const/4 p0, 0x4

    if-eq p1, p0, :cond_17

    const/4 p0, 0x5

    if-eq p1, p0, :cond_14

    const-string p0, "Unknown domain"

    goto :goto_25

    :cond_14
    const-string p0, "SMS_DOMAIN_IMS_PREFERRED"

    goto :goto_25

    :cond_17
    const-string p0, "SMS_DOMAIN_IMS_ONLY"

    goto :goto_25

    :cond_1a
    const-string p0, "SMS_DOMAIN_PS_PREFERRED"

    goto :goto_25

    :cond_1d
    const-string p0, "SMS_DOMAIN_CS_PREFERRED"

    goto :goto_25

    :cond_20
    const-string p0, "SMS_DOMAIN_PS_ONLY"

    goto :goto_25

    :cond_23
    const-string p0, "SMS_DOMAIN_CS_ONLY"

    :goto_25
    return-object p0
.end method

.method public blacklist getCommonSmsDomain(ILjava/lang/String;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v0

    const-string v1, "VZW"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_28

    const-string v0, "911"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_28

    const-string p2, "ro.product.first_api_level"

    .line 121
    invoke-static {p2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0x1d

    if-lt p2, v0, :cond_28

    move p2, v2

    goto :goto_29

    :cond_28
    move p2, v3

    .line 123
    :goto_29
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const-string v4, "gsm.sim.operator.numeric"

    const-string v5, "00000"

    .line 124
    invoke-static {p1, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " operator = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " dataNetworkType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 127
    invoke-interface {v6}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    invoke-static {v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SmsDomainSelector"

    .line 126
    invoke-static {v6, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "31015"

    .line 129
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x2

    if-nez v5, :cond_96

    const-string v5, "31017"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_96

    const-string v5, "31041"

    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_96

    const-string v5, "31098"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_96

    const-string v5, "31180"

    .line 131
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_94

    goto :goto_96

    :cond_94
    move v5, v7

    goto :goto_97

    :cond_96
    :goto_96
    move v5, v3

    :goto_97
    const-string v8, "44020"

    .line 135
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a0

    return v7

    .line 140
    :cond_a0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDomainSelector;->isRegistered(I)Z

    move-result p1

    const/4 v8, 0x4

    if-eqz p1, :cond_ea

    .line 141
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object p1

    if-eqz p1, :cond_c1

    iget-object p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsPreference;->isSmsOverIpSupported()Z

    move-result p1

    if-eqz p1, :cond_c1

    const-string p1, "isSmsOverIpSupported = true"

    .line 142
    invoke-static {v6, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c8

    :cond_c1
    if-eqz p2, :cond_ca

    const-string p1, "SMS over IP Indication is disabled. But overrided for E911 SMS."

    .line 145
    invoke-static {v6, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c8
    move v5, v8

    goto :goto_d0

    :cond_ca
    const-string p1, "SMS over IP Indication is disabled."

    .line 148
    invoke-static {v6, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    :goto_d0
    const-string p1, "ro.ril.svlte1x"

    .line 152
    invoke-static {p1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isSVLTEDevice = "

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ea
    if-eqz p2, :cond_f8

    .line 156
    invoke-static {v0}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result p1

    if-eqz p1, :cond_f8

    const-string p1, "E911 SMS should go out over IMS in LTE."

    .line 157
    invoke-static {v6, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    :cond_f8
    if-eq v5, v8, :cond_101

    const/4 p1, 0x5

    if-ne v5, p1, :cond_fe

    goto :goto_101

    :cond_fe
    :goto_fe
    move v7, v5

    goto/16 :goto_1f2

    .line 162
    :cond_101
    :goto_101
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result p1

    .line 163
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDomainSelector;->isOnCall()Z

    move-result p2

    if-eqz p2, :cond_192

    .line 164
    iget-object p2, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object p2

    const-string v9, "ATT_US"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_12e

    if-eq p1, v7, :cond_127

    if-ne p1, v2, :cond_12e

    :cond_127
    const-string p1, "SMS over CS domain during 2G voice call"

    .line 166
    invoke-static {v6, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12c
    move v5, v7

    goto :goto_192

    :cond_12e
    if-eqz v3, :cond_13f

    .line 168
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result p1

    if-ne p1, v7, :cond_13f

    const/16 p1, 0xd

    if-ne v0, p1, :cond_13f

    :goto_13e
    goto :goto_12c

    :cond_13f
    if-nez v3, :cond_179

    .line 179
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_15f

    iget-object p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_179

    iget-object p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 180
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p1

    sget-object p2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, p2, :cond_179

    :cond_15f
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 181
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object p1

    const-string p2, "USCC"

    const-string v2, "SPRINT"

    filled-new-array {v1, p2, v2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_179

    const-string p1, "hybrid volte should send sms over 1X during voice call"

    .line 182
    invoke-static {v6, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12c

    .line 184
    :cond_179
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object p1

    const-string p2, "CMCC_CN:CHM"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_192

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDomainSelector;->is2gDataNetwork()Z

    move-result p1

    if-eqz p1, :cond_192

    goto :goto_13e

    .line 189
    :cond_192
    :goto_192
    iget p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mRegisteredTransportType:I

    if-ne p1, v7, :cond_19d

    const-string p1, "EPDG is registered, SMS should go out over IMS"

    .line 190
    invoke-static {v6, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fe

    .line 191
    :cond_19d
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p1

    if-nez p1, :cond_1d9

    if-lt v0, v8, :cond_1af

    const/16 p1, 0x8

    if-le v0, p1, :cond_1d9

    :cond_1af
    const/16 p1, 0xc

    if-eq v0, p1, :cond_1d9

    if-eqz v0, :cond_1d9

    iget-object p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 194
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object p1

    const-string p2, "TMOBILE_US"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1cf

    const-string p1, "26201"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_fe

    .line 195
    :cond_1cf
    invoke-static {v0}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result p1

    if-nez p1, :cond_fe

    const/16 p1, 0x12

    if-eq v0, p1, :cond_fe

    .line 197
    :cond_1d9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RAT = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". SMS over CS domain for RAT which does not support IMS."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_1f2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "selected domain = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SmsDomainSelector;->convertToDomainName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public blacklist getKorSmsDomain(I)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    const-string v0, "ril.sms_preference"

    const-string v1, "2/0"

    .line 208
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ril.simtype"

    const-string v2, "0"

    .line 209
    invoke-static {p1, v1, v2}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, "00000"

    .line 213
    invoke-static {p1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "gsm.operator.numeric"

    .line 214
    invoke-static {p1, v4, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "simOperator["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SmsDomainSelector"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-le v4, v7, :cond_51

    .line 218
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_53

    :cond_51
    const-string v3, "000"

    :goto_53
    const-string v4, "450"

    .line 222
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v8, 0x1

    if-nez v4, :cond_67

    const-string v4, "001"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    goto :goto_67

    :cond_65
    move v3, v6

    goto :goto_68

    :cond_67
    :goto_67
    move v3, v8

    :goto_68
    const-string v4, "45001"

    .line 223
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7b

    const-string v4, "00101"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    goto :goto_7b

    :cond_79
    move v2, v6

    goto :goto_7c

    :cond_7b
    :goto_7b
    move v2, v8

    .line 227
    :goto_7c
    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x2

    .line 228
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 229
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "preference = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " pref = "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " prefDomestic = "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KOR Operator Name = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/SmsConfig;->getMnoName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-nez v2, :cond_228

    const-string v2, "KorDomainSelector SUPPORT UsimMobility"

    .line 232
    invoke-static {v5, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IsRegistered(): "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDomainSelector;->isRegistered(I)Z

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "isSmsOverIpSupported = "

    const-string v11, "LGU"

    if-eqz v3, :cond_186

    .line 236
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDomainSelector;->isRegistered(I)Z

    move-result v3

    const-string v8, "set SMS pref domain: SMS_DOMAIN_IMS_ONLY"

    if-eqz v3, :cond_15d

    .line 237
    iget-object v3, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v3

    if-eqz v3, :cond_13f

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ImsPreference;->isSmsOverIpSupported()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmsOverIpFormat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ImsPreference;->getSmsOverIpFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_13f
    iget-object v2, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v2

    if-eqz v2, :cond_157

    iget-object v2, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ImsPreference;->isSmsOverIpSupported()Z

    move-result v2

    if-eqz v2, :cond_157

    .line 244
    invoke-static {v5, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_177

    :cond_157
    const-string v2, "set SMS pref domain: Operator\'s setting"

    .line 247
    invoke-static {v5, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_179

    .line 250
    :cond_15d
    iget-object v2, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v2

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_179

    if-ne v1, v7, :cond_179

    const-string v2, "Ims isn\'t registered"

    .line 253
    invoke-static {v5, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {v5, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_177
    move v7, v0

    goto :goto_17a

    :cond_179
    :goto_179
    move v7, v6

    :goto_17a
    if-eq v7, v0, :cond_229

    if-ne v1, v0, :cond_181

    move v7, v4

    goto/16 :goto_229

    :cond_181
    if-ne v1, v6, :cond_228

    move v7, v9

    goto/16 :goto_229

    .line 271
    :cond_186
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v1

    const-string v3, "KT_KR"

    filled-new-array {v11, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_222

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Oversea "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsConfig;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". need to check volte roaming"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDomainSelector;->isRegistered(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-direct {p0, p1, v8}, Lcom/android/internal/telephony/SmsDomainSelector;->isRegistered(IZ)Z

    move-result v1

    if-eqz v1, :cond_21c

    .line 277
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v1

    if-eqz v1, :cond_1fb

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ImsPreference;->isSmsOverIpSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_1fb
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v1

    if-eqz v1, :cond_216

    iget-object v1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsPreference;->isSmsOverIpSupported()Z

    move-result v1

    if-eqz v1, :cond_216

    const-string v1, "Oversea KTT/LGT. support volte roaming. set IMS_ONLY"

    .line 283
    invoke-static {v5, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v0

    goto :goto_229

    :cond_216
    const-string v0, "Oversea KTT/LGT. isSmsOverIpSupported:false. set CS ONLY"

    .line 286
    invoke-static {v5, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_229

    :cond_21c
    const-string v0, "Oversea KTT/LGT. Ims isn\'t registered: CS ONLY"

    .line 290
    invoke-static {v5, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_229

    :cond_222
    const-string v0, "Oversea. set CS ONLY"

    .line 293
    invoke-static {v5, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_229

    :cond_228
    move v7, v6

    .line 299
    :cond_229
    :goto_229
    invoke-direct {p0, p1, v7}, Lcom/android/internal/telephony/SmsDomainSelector;->convertPrefmodeToDomain(II)I

    move-result p0

    return p0
.end method

.method public blacklist getSmsDomain(ILjava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v0

    const-string v1, "sms_show_hidden_menu_sms_pref_mode"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsDomainSelector;->getKorSmsDomain(I)I

    move-result p0

    return p0

    .line 95
    :cond_13
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SmsDomainSelector;->getCommonSmsDomain(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist setImgRegiAndCapability(ZIZ)V
    .registers 4

    .line 86
    iput-boolean p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mIsRegistered:Z

    .line 87
    iput p2, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mRegisteredTransportType:I

    .line 88
    iput-boolean p3, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mIsSmsCapable:Z

    return-void
.end method
