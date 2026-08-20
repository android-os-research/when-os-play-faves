.class public Lcom/android/internal/telephony/SemCallTrackerHelper;
.super Ljava/lang/Object;
.source "SemCallTrackerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;
    }
.end annotation


# static fields
.field public static final blacklist CAN_NOT_HOLD_ACTIVE_CALL_FOR_PENDINGMO:Ljava/lang/String; = "can_not_hold_active_call_for_pendingmo"

.field private static final blacklist FILTER_EXTRAS:[Ljava/lang/String;

.field private static blacklist mIsCmcSdEnabled:Z


# instance fields
.field private blacklist mAssistedDialingHelper:Lcom/android/internal/telephony/SemAssistedDialingHelper;

.field private final blacklist mImsCallListLock:Ljava/lang/Object;

.field private blacklist mLastNitzSignal:Lcom/android/internal/telephony/NitzSignal;

.field private blacklist mLastTimeZoneId:Ljava/lang/String;

.field private blacklist mNewImsCallList:Lcom/android/internal/telephony/ImsCallList;

.field private blacklist mOldImsCallList:Lcom/android/internal/telephony/ImsCallList;

.field blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smlog(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    const-string v0, "selectPhoneAccountAccounts"

    const-string v1, "com.samsung.android.contact.extra.USER_SELECTED_CONTACT_ID"

    const-string v2, "com.samsung.telecom.extra.CALL_BACK_PHONE_ACCOUNT_HANDLE"

    const-string v3, "com.samsung.telecom.extra.ORIGINAL_CALL_INTENT"

    const-string v4, "android.telecom.extra.CALL_TELECOM_ROUTING_START_TIME_MILLIS"

    const-string v5, "android.telecom.extra.CALL_TELECOM_ROUTING_END_TIME_MILLIS"

    .line 48
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemCallTrackerHelper;->FILTER_EXTRAS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 85
    sput-boolean v0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mIsCmcSdEnabled:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/android/internal/telephony/ImsCallList;

    invoke-direct {v0}, Lcom/android/internal/telephony/ImsCallList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mOldImsCallList:Lcom/android/internal/telephony/ImsCallList;

    .line 77
    new-instance v0, Lcom/android/internal/telephony/ImsCallList;

    invoke-direct {v0}, Lcom/android/internal/telephony/ImsCallList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mNewImsCallList:Lcom/android/internal/telephony/ImsCallList;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mImsCallListLock:Ljava/lang/Object;

    .line 91
    iput-object p1, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 92
    new-instance v0, Lcom/android/internal/telephony/SemAssistedDialingHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/SemAssistedDialingHelper;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mAssistedDialingHelper:Lcom/android/internal/telephony/SemAssistedDialingHelper;

    return-void
.end method

.method public static blacklist callConnectGateMessage(Lcom/android/internal/telephony/DriverCall$State;Lcom/android/internal/telephony/Call$State;)V
    .registers 3

    .line 824
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_15

    :cond_a
    sget-object p1, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    if-ne p0, p1, :cond_15

    const-string p0, "GATE"

    const-string p1, "<GATE-M>CALL_CONNECTED</GATE-M>"

    .line 825
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return-void
.end method

.method public static blacklist callEndGateMessage(ILcom/android/internal/telephony/Call$State;)V
    .registers 3

    const/16 v0, 0x22

    if-eq p0, v0, :cond_25

    const/16 v0, 0x29

    if-eq p0, v0, :cond_25

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_25

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_25

    const/16 v0, 0x31

    if-eq p0, v0, :cond_25

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_25

    const/16 v0, 0x26

    if-eq p0, v0, :cond_25

    const/16 v0, 0x39

    if-eq p0, v0, :cond_25

    const v0, 0xffff

    if-ne p0, v0, :cond_5b

    .line 835
    :cond_25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GATE LOG - callState: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 836
    sget-object p0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    const-string v0, "GATE"

    if-eq p1, p0, :cond_56

    sget-object p0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq p1, p0, :cond_56

    sget-object p0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq p1, p0, :cond_56

    sget-object p0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, p0, :cond_4c

    goto :goto_56

    .line 839
    :cond_4c
    sget-object p0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p1, p0, :cond_5b

    const-string p0, "<GATE-M>CALL_DROPPED</GATE-M>"

    .line 840
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    :cond_56
    :goto_56
    const-string p0, "<GATE-M>CALL_NETWORK_ERROR</GATE-M>"

    .line 838
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    :goto_5b
    return-void
.end method

.method public static blacklist checkEmergencyCallRedirectToNormalCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)Z
    .registers 11

    .line 668
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 670
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->sim_state()Ljava/util/List;

    move-result-object v1

    const-string v2, "ABSENT"

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/SemTelephonyHelper;->semGetTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 671
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1aa

    const-string v2, "PIN_REQUIRED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto/16 :goto_1aa

    .line 676
    :cond_21
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 677
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v2

    .line 678
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "KOR"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    const-string v4, "450"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 679
    :cond_49
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_69

    .line 680
    :cond_50
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "checkEmergencyCallRedirectToNormalCall - No redirect. phoneType: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return v3

    .line 684
    :cond_69
    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 685
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkEmergencyCallRedirectToNormalCall - svc state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isVowifiEanbled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 686
    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-eqz v5, :cond_a0

    const/4 v4, 0x0

    .line 690
    :cond_a0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c6

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "BRI"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c6

    if-eqz p2, :cond_c6

    const-string p2, "46692"

    .line 691
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c4

    const-string p2, "46601"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c6

    :cond_c4
    const-string v4, "46600"

    .line 695
    :cond_c6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1a4

    const-string p2, "460"

    invoke-virtual {v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_de

    const-string v2, "466"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_de

    goto/16 :goto_1a4

    .line 700
    :cond_de
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkEmergencyCallRedirectToNormalCall - address: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 704
    :try_start_f6
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_fa
    .catch Ljava/lang/NumberFormatException; {:try_start_f6 .. :try_end_fa} :catch_19e

    .line 710
    invoke-virtual {v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/16 v4, 0x6e

    const/4 v5, 0x1

    if-eqz p2, :cond_191

    const-string p2, "ril.simoperator"

    const-string v6, "ETC"

    .line 711
    invoke-static {v0, p2, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v6, "CTC"

    .line 712
    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/16 v6, 0x8

    if-eqz p2, :cond_16b

    if-eqz p2, :cond_12a

    .line 713
    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->isVonrSupported()Z

    move-result v7

    if-eqz v7, :cond_12a

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v7, 0x14

    if-ne v1, v7, :cond_12a

    goto :goto_16b

    .line 741
    :cond_12a
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result p2

    if-nez v0, :cond_133

    const-string v0, "voicecall_type"

    goto :goto_135

    :cond_133
    const-string v0, "voicecall_type2"

    .line 743
    :goto_135
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v7, -0x1

    invoke-static {v1, v0, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_197

    if-eqz v2, :cond_163

    if-eq v2, v6, :cond_163

    if-eq v2, v4, :cond_197

    const/16 v0, 0x70

    if-eq v2, v0, :cond_197

    const/16 v0, 0x38f

    if-eq v2, v0, :cond_197

    packed-switch v2, :pswitch_data_1b0

    .line 762
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemCallTrackerHelper;->isEmergencyNumberFromNet(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_197

    if-eqz p2, :cond_197

    const-string p0, "checkEmergencyCallRedirectToNormalCall - redirect ecc to normal for CTC Volte (not NET ECC)"

    .line 763
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return v5

    :cond_163
    :pswitch_163
    if-eqz p2, :cond_197

    const-string p0, "checkEmergencyCallRedirectToNormalCall - redirect ecc to normal for CTC Volte"

    .line 757
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return v5

    :cond_16b
    :goto_16b
    if-eqz v2, :cond_183

    if-eq v2, v6, :cond_183

    if-eq v2, v4, :cond_17d

    const/16 p1, 0x7a

    if-eq v2, p1, :cond_17d

    const/16 p1, 0x3e7

    if-eq v2, p1, :cond_17d

    packed-switch v2, :pswitch_data_1ba

    goto :goto_197

    :cond_17d
    :pswitch_17d
    const-string p0, "checkEmergencyCallRedirectToNormalCall - redirect ecc to normal because here is china"

    .line 726
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return v5

    .line 731
    :cond_183
    :pswitch_183
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result p0

    if-eqz p2, :cond_197

    if-eqz p0, :cond_197

    const-string p0, "checkEmergencyCallRedirectToNormalCall - redirect ecc to normal for CTC VoNR"

    .line 733
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return v5

    :cond_191
    if-eq v2, v4, :cond_198

    const/16 p0, 0x77

    if-eq v2, p0, :cond_198

    :cond_197
    :goto_197
    :pswitch_197
    return v3

    :cond_198
    const-string p0, "checkEmergencyCallRedirectToNormalCall - redirect ecc to normal because here is taiwan"

    .line 777
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return v5

    :catch_19e
    const-string p0, "checkEmergencyCallRedirectToNormalCall - Wrong address"

    .line 706
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return v3

    :cond_1a4
    :goto_1a4
    const-string p0, "checkEmergencyCallRedirectToNormalCall - Not inservice or not China/Taiwan"

    .line 696
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return v3

    :cond_1aa
    :goto_1aa
    const-string p0, "checkEmergencyCallRedirectToNormalCall - Card State is ABSENT OR LOCKED"

    .line 672
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return v3

    :pswitch_data_1b0
    .packed-switch 0x76
        :pswitch_163
        :pswitch_197
        :pswitch_197
    .end packed-switch

    :pswitch_data_1ba
    .packed-switch 0x76
        :pswitch_183
        :pswitch_17d
        :pswitch_17d
    .end packed-switch
.end method

.method public static blacklist checkRouteDirection(Lcom/android/internal/telephony/Phone;ZIZZ)I
    .registers 7

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkRouteDirection - searchResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " redialing: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "46692"

    .line 798
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "46601"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_41

    goto :goto_42

    :cond_41
    const/4 p4, 0x0

    .line 802
    :cond_42
    :goto_42
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object p2

    .line 803
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string v0, "BRI"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_65

    if-eqz p2, :cond_65

    .line 804
    invoke-virtual {p2}, Lcom/android/internal/telephony/ImsPreference;->getEmergencyDomainPref()I

    move-result p0

    if-ne p0, v0, :cond_65

    const-string p0, "TWM and T-Star refer E911 via CS"

    .line 805
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_80

    :cond_65
    if-eqz p3, :cond_70

    if-nez p1, :cond_70

    const-string p0, "CHN or TW refer E911 via IMS"

    .line 808
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    const/4 v0, 0x2

    goto :goto_80

    :cond_70
    if-eqz p4, :cond_7b

    if-nez p1, :cond_7b

    const-string p0, "TW refers E911 via VOWIFI"

    .line 811
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    const/4 v0, 0x3

    goto :goto_80

    :cond_7b
    const-string p0, "route E911 via CS"

    .line 814
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    :goto_80
    return v0
.end method

.method public static blacklist getEmergencyServiceCategoryFromDialer(Landroid/os/Bundle;)I
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    const-string v1, "com.samsung.telephony.extra.START_CALL_WITH_EMERGENCY_SERVICE_CATEGORY"

    .line 227
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_9
    return v0
.end method

.method public static blacklist imsPhoneStateToString(Lcom/android/internal/telephony/imsphone/ImsPhone;)Ljava/lang/String;
    .registers 5

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ImsPhoneState: {Foreground("

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_3b

    const-string v2, ", Background("

    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_3b
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-eq v2, v3, :cond_58

    const-string v2, ", Ringing("

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_58
    const-string p0, "}"

    .line 173
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist isCmcSdCall(Lcom/android/internal/telephony/Phone;Landroid/os/Bundle;)Z
    .registers 3

    .line 849
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "cmc_device_type"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "sd"

    .line 850
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    if-eqz p1, :cond_29

    const-string p0, "com.samsung.telephony.extra.CMC_TYPE"

    .line 851
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 852
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_29

    const/4 p0, 0x1

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isEmergencyNumber(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_14

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 237
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->isEmergencyNumber(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_14

    return v0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isEmergencyNumberFromNet(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .registers 4

    .line 656
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberList()Ljava/util/List;

    move-result-object p0

    .line 657
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    .line 658
    invoke-virtual {v0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v0
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_27} :catch_2a

    if-eqz v0, :cond_c

    return v1

    :catch_2a
    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "SemCallTrackerHelper"

    .line 645
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    const-string v0, "SemCallTrackerHelper"

    .line 649
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist makeBigDataString(IILcom/android/internal/telephony/Call$State;)Ljava/lang/String;
    .registers 5

    .line 200
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v0, :cond_b

    const-string p2, "makeCallDataString - Unexpected case. preciseState is DISCONNECTED"

    .line 201
    invoke-static {p2}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 202
    sget-object p2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    :cond_b
    const/4 v0, 0x0

    .line 206
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_2f

    .line 208
    :cond_12
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v1, :cond_18

    const/4 v0, 0x2

    goto :goto_2f

    .line 210
    :cond_18
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v1, :cond_1e

    const/4 v0, 0x3

    goto :goto_2f

    .line 212
    :cond_1e
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v1, :cond_24

    const/4 v0, 0x4

    goto :goto_2f

    .line 214
    :cond_24
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v1, :cond_2a

    const/4 v0, 0x5

    goto :goto_2f

    .line 216
    :cond_2a
    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v1, :cond_2f

    const/4 v0, 0x6

    .line 220
    :cond_2f
    :goto_2f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist recoveryFile(Ljava/io/File;I)Z
    .registers 10

    const-string p0, "recoveryFile - Try to close resources"

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 543
    fill-array-data v1, :array_d2

    .line 550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recoveryFile - File size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-gt p2, v0, :cond_d1

    const-string p2, "recoveryFile - Attempting to initialize file"

    .line 553
    invoke-static {p2}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 555
    :try_start_25
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_89
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_2a} :catch_89
    .catchall {:try_start_25 .. :try_end_2a} :catchall_82

    .line 556
    :try_start_2a
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2f} :catch_7f
    .catch Ljava/lang/SecurityException; {:try_start_2a .. :try_end_2f} :catch_7f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_7c

    .line 559
    :try_start_2f
    invoke-virtual {v4, v1, v2, v0}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 560
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 561
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V

    .line 564
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_41} :catch_79
    .catch Ljava/lang/SecurityException; {:try_start_2f .. :try_end_41} :catch_79
    .catchall {:try_start_2f .. :try_end_41} :catchall_76

    .line 565
    :try_start_41
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_46} :catch_71
    .catch Ljava/lang/SecurityException; {:try_start_41 .. :try_end_46} :catch_71
    .catchall {:try_start_41 .. :try_end_46} :catchall_6c

    .line 567
    :try_start_46
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_54

    const/4 v2, 0x1

    const-string p2, "recoveryFile - Success in initialization"

    .line 569
    invoke-static {p2}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_59

    :cond_54
    const-string p2, "recoveryFile - Failed again to read file"

    .line 571
    invoke-static {p2}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_59} :catch_6a
    .catch Ljava/lang/SecurityException; {:try_start_46 .. :try_end_59} :catch_6a
    .catchall {:try_start_46 .. :try_end_59} :catchall_b8

    .line 576
    :goto_59
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V

    .line 578
    :try_start_5c
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_5f

    .line 584
    :catch_5f
    :try_start_5f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_62

    .line 590
    :catch_62
    :try_start_62
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_65

    .line 596
    :catch_65
    :goto_65
    :try_start_65
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_d1

    goto/16 :goto_d1

    :catch_6a
    move-exception p2

    goto :goto_8f

    :catchall_6c
    move-exception p1

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    goto :goto_b9

    :catch_71
    move-exception p1

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    goto :goto_8f

    :catchall_76
    move-exception p1

    move-object v5, p2

    goto :goto_86

    :catch_79
    move-exception p1

    move-object v5, p2

    goto :goto_8d

    :catchall_7c
    move-exception p1

    move-object v4, p2

    goto :goto_85

    :catch_7f
    move-exception p1

    move-object v4, p2

    goto :goto_8c

    :catchall_82
    move-exception p1

    move-object v3, p2

    move-object v4, v3

    :goto_85
    move-object v5, v4

    :goto_86
    move-object p2, p1

    move-object p1, v5

    goto :goto_b9

    :catch_89
    move-exception p1

    move-object v3, p2

    move-object v4, v3

    :goto_8c
    move-object v5, v4

    :goto_8d
    move-object p2, p1

    move-object p1, v5

    .line 574
    :goto_8f
    :try_start_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recoveryFile - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_8f .. :try_end_a3} :catchall_b8

    .line 576
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V

    if-eqz v4, :cond_ab

    .line 578
    :try_start_a8
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ab

    :catch_ab
    :cond_ab
    if-eqz v3, :cond_b0

    .line 584
    :try_start_ad
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b0

    :catch_b0
    :cond_b0
    if-eqz p1, :cond_b5

    .line 590
    :try_start_b2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_b5

    :catch_b5
    :cond_b5
    if-eqz v5, :cond_d1

    goto :goto_65

    :catchall_b8
    move-exception p2

    .line 576
    :goto_b9
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V

    if-eqz v4, :cond_c1

    .line 578
    :try_start_be
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_c1

    :catch_c1
    :cond_c1
    if-eqz v3, :cond_c6

    .line 584
    :try_start_c3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_c6

    :catch_c6
    :cond_c6
    if-eqz p1, :cond_cb

    .line 590
    :try_start_c8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_cb

    :catch_cb
    :cond_cb
    if-eqz v5, :cond_d0

    .line 596
    :try_start_cd
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_d0

    .line 601
    :catch_d0
    :cond_d0
    throw p2

    :catch_d1
    :cond_d1
    :goto_d1
    return v2

    :array_d2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static blacklist setUseMdecEnabled(Z)V
    .registers 1

    .line 859
    sput-boolean p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mIsCmcSdEnabled:Z

    return-void
.end method

.method public static blacklist skipHandleInCallMmiCommands(ILandroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 5

    .line 245
    invoke-static {p3}, Lcom/android/internal/telephony/SemTelephonyUtils;->isSilentRedial(Landroid/os/Bundle;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_d

    const-string p0, "Skip handleInCallMmiCommands (Cause: Silent redial)"

    .line 246
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return v0

    .line 250
    :cond_d
    const-class p3, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object p0

    .line 251
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3d

    const-string p1, "604"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3d

    const-string p0, "15"

    .line 252
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    const-string p0, "19"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3d

    :cond_37
    const-string p0, "Skip handleInCallMmiCommands (Cause: Morocco local emergency number)"

    .line 253
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return v0

    :cond_3d
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist updateIntentExtras(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .registers 5

    if-nez p0, :cond_1d

    const-string p0, "updateIntentExtras - Unexpected case. dialArgs is null"

    .line 145
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 146
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 147
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance p1, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    invoke-direct {p1}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setIntentExtras(Landroid/os/Bundle;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->build()Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    move-result-object p0

    return-object p0

    .line 151
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIntentExtras - old: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyLogger;->dialArgsToString(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_41

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_46

    :cond_41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 154
    :goto_46
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->from(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object p0

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setIntentExtras(Landroid/os/Bundle;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object p0

    .line 159
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateIntentExtras - new: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyLogger;->dialArgsToString(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return-object p0
.end method

.method private blacklist updateTotalCallTime(J)V
    .registers 22

    const-string v1, "updateTotalCallTime - "

    const/4 v0, 0x4

    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 439
    :try_start_6
    new-instance v4, Ljava/io/File;

    const-string v5, "/efs/imei/total_call_time"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v5, :cond_65

    .line 441
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-nez v5, :cond_22

    const-string v0, "Failed to create file"

    .line 442
    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V

    return-void

    .line 446
    :cond_22
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v9, "chmod 664 /efs/imei/total_call_time"

    invoke-virtual {v5, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    if-eqz v5, :cond_31

    .line 448
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    .line 452
    :cond_31
    new-instance v5, Ljava/io/File;

    const-string v9, "/efs/total_call_time"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_61

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_61

    .line 454
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_49} :catch_1a3
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_49} :catch_1a3
    .catchall {:try_start_6 .. :try_end_49} :catchall_1a0

    .line 455
    :try_start_49
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4e} :catch_19d
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_4e} :catch_19d
    .catchall {:try_start_49 .. :try_end_4e} :catchall_1c3

    .line 456
    :try_start_4e
    invoke-virtual {v5, v2, v8, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    if-eq v10, v6, :cond_55

    goto :goto_75

    :cond_55
    const-string v0, "updateTotalCallTime - Failed to read file"

    .line 459
    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_5a} :catch_199
    .catch Ljava/lang/InterruptedException; {:try_start_4e .. :try_end_5a} :catch_199
    .catchall {:try_start_4e .. :try_end_5a} :catchall_196

    .line 492
    :try_start_5a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 493
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_60} :catch_60

    :catch_60
    return-void

    :cond_61
    move-object v5, v3

    move-object v9, v5

    move v6, v8

    goto :goto_89

    .line 464
    :cond_65
    :try_start_65
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6a} :catch_1a3
    .catch Ljava/lang/InterruptedException; {:try_start_65 .. :try_end_6a} :catch_1a3
    .catchall {:try_start_65 .. :try_end_6a} :catchall_1a0

    .line 465
    :try_start_6a
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6f} :catch_19d
    .catch Ljava/lang/InterruptedException; {:try_start_6a .. :try_end_6f} :catch_19d
    .catchall {:try_start_6a .. :try_end_6f} :catchall_1c3

    .line 468
    :try_start_6f
    invoke-virtual {v5, v2, v8, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    if-eq v10, v6, :cond_77

    :goto_75
    move v6, v7

    goto :goto_89

    .line 470
    :cond_77
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v6

    move-object/from16 v10, p0

    invoke-direct {v10, v4, v6}, Lcom/android/internal/telephony/SemCallTrackerHelper;->recoveryFile(Ljava/io/File;I)Z

    move-result v6

    if-ne v6, v7, :cond_181

    const-string v6, "updateTotalCallTime - Recovered file"

    .line 471
    invoke-static {v6}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_75

    :goto_89
    const/16 v10, 0x18

    const/4 v11, 0x3

    const/16 v12, 0x10

    const/4 v13, 0x2

    const/16 v14, 0x8

    const-wide/16 v15, 0x0

    if-eqz v6, :cond_d2

    aget-byte v6, v2, v8
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_97} :catch_199
    .catch Ljava/lang/InterruptedException; {:try_start_6f .. :try_end_97} :catch_199
    .catchall {:try_start_6f .. :try_end_97} :catchall_196

    and-int/lit16 v6, v6, 0xff

    move-object/from16 v17, v1

    int-to-long v0, v6

    add-long/2addr v0, v15

    :try_start_9d
    aget-byte v6, v2, v7

    shl-int/2addr v6, v14

    const v18, 0xff00

    and-int v6, v6, v18

    int-to-long v7, v6

    add-long/2addr v0, v7

    aget-byte v6, v2, v13

    shl-int/2addr v6, v12

    const/high16 v7, 0xff0000

    and-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v0, v6

    aget-byte v6, v2, v11

    shl-int/2addr v6, v10

    const/high16 v7, -0x1000000

    and-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 485
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTotalCallTime - Current total call time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_cb} :catch_cc
    .catch Ljava/lang/InterruptedException; {:try_start_9d .. :try_end_cb} :catch_cc
    .catchall {:try_start_9d .. :try_end_cb} :catchall_196

    goto :goto_d5

    :catch_cc
    move-exception v0

    move-object v3, v5

    move-object/from16 v4, v17

    goto/16 :goto_1a6

    :cond_d2
    move-object/from16 v17, v1

    move-wide v0, v15

    :goto_d5
    if-eqz v5, :cond_da

    .line 492
    :try_start_d7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_da
    if-eqz v9, :cond_df

    .line 493
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_df} :catch_df

    :catch_df
    :cond_df
    const-wide/16 v5, 0x1c20

    cmp-long v7, v0, v5

    if-ltz v7, :cond_e6

    return-void

    :cond_e6
    cmp-long v7, p1, v15

    if-eqz v7, :cond_ef

    const-wide/16 v7, 0x3e8

    .line 506
    div-long v7, p1, v7

    add-long/2addr v0, v7

    :cond_ef
    cmp-long v7, v0, v5

    if-ltz v7, :cond_f4

    goto :goto_f5

    :cond_f4
    move-wide v5, v0

    .line 514
    :goto_f5
    :try_start_f5
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_fa} :catch_156
    .catchall {:try_start_f5 .. :try_end_fa} :catchall_153

    .line 515
    :try_start_fa
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_ff} :catch_151
    .catchall {:try_start_fa .. :try_end_ff} :catchall_175

    const-wide/16 v7, 0xff

    and-long v10, v5, v7

    long-to-int v3, v10

    int-to-byte v3, v3

    const/4 v9, 0x0

    :try_start_106
    aput-byte v3, v2, v9

    shr-long v9, v5, v14

    and-long/2addr v9, v7

    long-to-int v3, v9

    int-to-byte v3, v3

    const/4 v9, 0x1

    aput-byte v3, v2, v9

    shr-long v9, v5, v12

    and-long/2addr v9, v7

    long-to-int v3, v9

    int-to-byte v3, v3

    aput-byte v3, v2, v13

    const/16 v3, 0x18

    shr-long v9, v5, v3

    and-long/2addr v7, v9

    long-to-int v3, v7

    int-to-byte v3, v3

    const/4 v0, 0x3

    aput-byte v3, v2, v0

    const/4 v0, 0x4

    const/4 v3, 0x0

    .line 522
    invoke-virtual {v4, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 523
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 524
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTotalCallTime - File closed new totalCallTime: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_144} :catch_14e
    .catchall {:try_start_106 .. :try_end_144} :catchall_14b

    .line 530
    :try_start_144
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 531
    :goto_147
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_14a} :catch_174

    goto :goto_174

    :catchall_14b
    move-exception v0

    move-object v3, v4

    goto :goto_176

    :catch_14e
    move-exception v0

    move-object v3, v4

    goto :goto_158

    :catch_151
    move-exception v0

    goto :goto_158

    :catchall_153
    move-exception v0

    move-object v1, v3

    goto :goto_176

    :catch_156
    move-exception v0

    move-object v1, v3

    .line 527
    :goto_158
    :try_start_158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v17

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V
    :try_end_16c
    .catchall {:try_start_158 .. :try_end_16c} :catchall_175

    if-eqz v3, :cond_171

    .line 530
    :try_start_16e
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_171
    .catch Ljava/io/IOException; {:try_start_16e .. :try_end_171} :catch_174

    :cond_171
    if-eqz v1, :cond_174

    goto :goto_147

    :catch_174
    :cond_174
    :goto_174
    return-void

    :catchall_175
    move-exception v0

    :goto_176
    if-eqz v3, :cond_17b

    :try_start_178
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_17b
    if-eqz v1, :cond_180

    .line 531
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_180
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_180} :catch_180

    .line 537
    :catch_180
    :cond_180
    throw v0

    :cond_181
    move-object v4, v1

    :try_start_182
    const-string v0, "updateTotalCallTime - Recovery file failed"

    .line 474
    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 476
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_18d
    .catch Ljava/io/IOException; {:try_start_182 .. :try_end_18d} :catch_194
    .catch Ljava/lang/InterruptedException; {:try_start_182 .. :try_end_18d} :catch_194
    .catchall {:try_start_182 .. :try_end_18d} :catchall_196

    .line 492
    :try_start_18d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 493
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_193
    .catch Ljava/io/IOException; {:try_start_18d .. :try_end_193} :catch_193

    :catch_193
    return-void

    :catch_194
    move-exception v0

    goto :goto_19b

    :catchall_196
    move-exception v0

    move-object v3, v5

    goto :goto_1c4

    :catch_199
    move-exception v0

    move-object v4, v1

    :goto_19b
    move-object v3, v5

    goto :goto_1a6

    :catch_19d
    move-exception v0

    move-object v4, v1

    goto :goto_1a6

    :catchall_1a0
    move-exception v0

    move-object v9, v3

    goto :goto_1c4

    :catch_1a3
    move-exception v0

    move-object v4, v1

    move-object v9, v3

    .line 488
    :goto_1a6
    :try_start_1a6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V
    :try_end_1b8
    .catchall {:try_start_1a6 .. :try_end_1b8} :catchall_1c3

    if-eqz v3, :cond_1bd

    .line 492
    :try_start_1ba
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_1bd
    if-eqz v9, :cond_1c2

    .line 493
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1c2
    .catch Ljava/io/IOException; {:try_start_1ba .. :try_end_1c2} :catch_1c2

    :catch_1c2
    :cond_1c2
    return-void

    :catchall_1c3
    move-exception v0

    :goto_1c4
    if-eqz v3, :cond_1c9

    .line 492
    :try_start_1c6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_1c9
    if-eqz v9, :cond_1ce

    .line 493
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1ce
    .catch Ljava/io/IOException; {:try_start_1c6 .. :try_end_1ce} :catch_1ce

    .line 499
    :catch_1ce
    :cond_1ce
    throw v0
.end method

.method public static blacklist useMdecEnabled()Z
    .registers 1

    .line 863
    sget-boolean v0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mIsCmcSdEnabled:Z

    return v0
.end method


# virtual methods
.method public blacklist convertNumberForAssistedDialing(Ljava/lang/String;Landroid/os/Bundle;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_a

    .line 624
    new-instance p0, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_a
    const-string v0, "com.samsung.telephony.extra.EXTRA_ASSISTED_DIAL_FROM"

    const/4 v1, 0x0

    .line 630
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_35

    .line 632
    iget-object p2, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mAssistedDialingHelper:Lcom/android/internal/telephony/SemAssistedDialingHelper;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->assistedDialFromContactList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 633
    iget-object p0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mAssistedDialingHelper:Lcom/android/internal/telephony/SemAssistedDialingHelper;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->getIsAssistedDialingNumber()Z

    move-result v1

    .line 634
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Use AssistedDialing feature (ContactList), isUseAssistedDialing: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_58

    :cond_35
    const/4 v0, 0x2

    if-ne p2, v0, :cond_58

    .line 636
    iget-object p2, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mAssistedDialingHelper:Lcom/android/internal/telephony/SemAssistedDialingHelper;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->assistedDialFromDialPad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 637
    iget-object p0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mAssistedDialingHelper:Lcom/android/internal/telephony/SemAssistedDialingHelper;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->getIsAssistedDialingNumber()Z

    move-result v1

    .line 638
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Use AssistedDialing feature (Idle), isUseAssistedDialing: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 641
    :cond_58
    :goto_58
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method protected blacklist preprocessDialArgs(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/telephony/ServiceState;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .registers 12

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallRoute - preprocessDialArgs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/TelephonyLogger;->dialArgsToString(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 99
    iget-object v2, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 102
    iget-object v3, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    if-eqz v3, :cond_3a

    new-instance v3, Landroid/os/Bundle;

    iget-object v4, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_3f

    :cond_3a
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 103
    :goto_3f
    sget-object v4, Lcom/android/internal/telephony/SemCallTrackerHelper;->FILTER_EXTRAS:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_43
    if-ge v6, v5, :cond_4d

    aget-object v7, v4, v6

    .line 104
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_43

    .line 107
    :cond_4d
    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->from(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object p2

    .line 108
    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setIntentExtras(Landroid/os/Bundle;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object p2

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 111
    iget-object v4, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", dialString: "

    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", dialLength: "

    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    if-eqz v0, :cond_a7

    .line 115
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->imsPhoneStateToString(Lcom/android/internal/telephony/imsphone/ImsPhone;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a7
    const-string v0, ", NetworkMode: "

    .line 118
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCachedAllowedNetworkTypesBitmask()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", SIM: "

    .line 119
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Network: "

    .line 120
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_d7

    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    goto :goto_d9

    :cond_d7
    const-string v0, ""

    :goto_d9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_140

    const-string v0, ", Voice: ("

    .line 123
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->rilServiceStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Data: ("

    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/ServiceState;->rilServiceStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result p3

    invoke-static {p3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_140
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-static {p2}, Lcom/android/internal/telephony/TelephonyLogger;->dialArgsToString(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyLogger()Lcom/android/internal/telephony/TelephonyLogger;

    move-result-object p1

    if-eqz p1, :cond_175

    .line 137
    iget-object p0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyLogger()Lcom/android/internal/telephony/TelephonyLogger;

    move-result-object p0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyLogger;->writeLastDialInfoLog(Ljava/lang/String;)V

    :cond_175
    return-object p2
.end method

.method public blacklist setCallTime(Lcom/android/internal/telephony/Connection;)V
    .registers 16

    if-nez p1, :cond_8

    const-string p0, "setCallTime - conn is null"

    .line 334
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return-void

    .line 338
    :cond_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v0

    .line 339
    iget-object v2, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 340
    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->isFactorySim(Ljava/lang/String;)Z

    move-result v3

    .line 342
    iget-object v4, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_45

    .line 343
    instance-of v7, p1, Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v7, :cond_45

    .line 344
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-nez v4, :cond_36

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_36

    move v4, v6

    goto :goto_37

    :cond_36
    move v4, v5

    :goto_37
    if-eqz v4, :cond_44

    .line 345
    move-object v4, p1

    check-cast v4, Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->isOtaspCall()Z

    move-result v4

    if-eqz v4, :cond_44

    move v4, v6

    goto :goto_45

    :cond_44
    move v4, v5

    .line 348
    :cond_45
    :goto_45
    iget-object v7, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "LTN"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7c

    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-lez v7, :cond_7c

    .line 349
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCallTime - Update total call time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 350
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7c

    if-nez v3, :cond_7c

    .line 351
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SemCallTrackerHelper;->updateTotalCallTime(J)V

    .line 356
    :cond_7c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_89

    const-string p0, "setCallTime - Don\'t set call time values (No IMSI)"

    .line 357
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    goto/16 :goto_21b

    :cond_89
    if-eqz v3, :cond_92

    const-string p0, "setCallTime - Don\'t set call time values (Factory SIM)"

    .line 359
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    goto/16 :goto_21b

    :cond_92
    if-eqz v4, :cond_9b

    const-string p0, "setCallTime - Don\'t set call time values (OTASP)"

    .line 361
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    goto/16 :goto_21b

    .line 364
    :cond_9b
    iget-object v2, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mLastNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    const/4 v3, 0x0

    if-eqz v2, :cond_c4

    .line 365
    invoke-virtual {v2}, Lcom/android/internal/telephony/NitzSignal;->getNitzData()Lcom/android/internal/telephony/NitzData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v7

    .line 366
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-object v2, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mLastNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    invoke-virtual {v2}, Lcom/android/internal/telephony/NitzSignal;->getAgeAdjustedElapsedRealtimeMillis()J

    move-result-wide v11

    sub-long/2addr v9, v11

    .line 367
    new-instance v2, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mLastTimeZoneId:Ljava/lang/String;

    if-eqz v4, :cond_ba

    goto :goto_bc

    :cond_ba
    const-string v4, "GMT"

    :goto_bc
    invoke-direct {v2, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    add-long/2addr v7, v9

    .line 368
    invoke-virtual {v2, v7, v8}, Landroid/text/format/Time;->set(J)V

    goto :goto_e8

    .line 369
    :cond_c4
    iget-object v2, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v4, "CHN"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 371
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/16 v13, 0x7bc

    move-object v7, v2

    .line 372
    invoke-virtual/range {v7 .. v13}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_e8

    :cond_e7
    move-object v2, v3

    :goto_e8
    const/16 v4, 0xb

    const-string v7, "setCallTime - "

    if-eqz v2, :cond_19a

    .line 375
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setCallTime - networkTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 376
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 377
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v10, 0xc

    .line 379
    :try_start_10e
    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v10, 0x41

    .line 380
    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 381
    invoke-virtual {v9, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 382
    iget v10, v2, Landroid/text/format/Time;->year:I

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 383
    iget v10, v2, Landroid/text/format/Time;->month:I

    add-int/2addr v10, v6

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 384
    iget v10, v2, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 385
    iget v10, v2, Landroid/text/format/Time;->hour:I

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 386
    iget v10, v2, Landroid/text/format/Time;->minute:I

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 387
    iget v2, v2, Landroid/text/format/Time;->second:I

    invoke-virtual {v9, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 388
    iget-object v2, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v2, v10, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_141} :catch_151
    .catchall {:try_start_10e .. :try_end_141} :catchall_14f

    .line 393
    :try_start_141
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 394
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_147} :catch_148

    goto :goto_19a

    :catch_148
    move-exception v2

    .line 396
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_171

    :catchall_14f
    move-exception p0

    goto :goto_17f

    :catch_151
    move-exception v2

    .line 390
    :try_start_152
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V
    :try_end_164
    .catchall {:try_start_152 .. :try_end_164} :catchall_14f

    .line 393
    :try_start_164
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 394
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_16a
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_16a} :catch_16b

    goto :goto_19a

    :catch_16b
    move-exception v2

    .line 396
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :goto_171
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V

    goto :goto_19a

    .line 393
    :goto_17f
    :try_start_17f
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 394
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_185
    .catch Ljava/io/IOException; {:try_start_17f .. :try_end_185} :catch_186

    goto :goto_199

    :catch_186
    move-exception p1

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V

    .line 398
    :goto_199
    throw p0

    .line 401
    :cond_19a
    :goto_19a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCallTime - duration: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v8, 0x3e8

    div-long v10, v0, v8

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 403
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 404
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-direct {v10, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 406
    :try_start_1bc
    invoke-virtual {v10, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0xd

    .line 407
    invoke-virtual {v10, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 408
    invoke-virtual {v10, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 409
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result p1

    if-eqz p1, :cond_1ce

    move v5, v6

    :cond_1ce
    invoke-virtual {v10, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 410
    div-long/2addr v0, v8

    invoke-virtual {v10, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 411
    iget-object p0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_1de
    .catch Ljava/io/IOException; {:try_start_1bc .. :try_end_1de} :catch_1ee
    .catchall {:try_start_1bc .. :try_end_1de} :catchall_1ec

    .line 416
    :try_start_1de
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 417
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1e4
    .catch Ljava/io/IOException; {:try_start_1de .. :try_end_1e4} :catch_1e5

    goto :goto_21b

    :catch_1e5
    move-exception p0

    .line 419
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_20e

    :catchall_1ec
    move-exception p0

    goto :goto_21c

    :catch_1ee
    move-exception p0

    .line 413
    :try_start_1ef
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V
    :try_end_201
    .catchall {:try_start_1ef .. :try_end_201} :catchall_1ec

    .line 416
    :try_start_201
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 417
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_207
    .catch Ljava/io/IOException; {:try_start_201 .. :try_end_207} :catch_208

    goto :goto_21b

    :catch_208
    move-exception p0

    .line 419
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_20e
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V

    :goto_21b
    return-void

    .line 416
    :goto_21c
    :try_start_21c
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 417
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_222
    .catch Ljava/io/IOException; {:try_start_21c .. :try_end_222} :catch_223

    goto :goto_236

    :catch_223
    move-exception p1

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V

    .line 421
    :goto_236
    throw p0
.end method

.method public blacklist setImsCallList()V
    .registers 4

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mImsCallListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 183
    iget-object v2, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mNewImsCallList:Lcom/android/internal/telephony/ImsCallList;

    iput-object v2, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mOldImsCallList:Lcom/android/internal/telephony/ImsCallList;

    .line 184
    new-instance v2, Lcom/android/internal/telephony/ImsCallList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getHandoverConnection()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/ImsCallList;-><init>(Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mNewImsCallList:Lcom/android/internal/telephony/ImsCallList;

    .line 185
    iget-object v1, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mOldImsCallList:Lcom/android/internal/telephony/ImsCallList;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ImsCallList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_5b

    .line 188
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] setImsCallList - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mNewImsCallList:Lcom/android/internal/telephony/ImsCallList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mNewImsCallList:Lcom/android/internal/telephony/ImsCallList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsCallList;->toSehImsCallList()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/android/internal/telephony/SemCommandsInterface;->setImsCallList(Ljava/util/ArrayList;Landroid/os/Message;)V

    goto :goto_5b

    :cond_56
    const-string p0, "setImsCallList - imsPhone is null"

    .line 192
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 194
    :goto_5b
    monitor-exit v0

    return-void

    :catchall_5d
    move-exception p0

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public blacklist setLastNitzSignal(Lcom/android/internal/telephony/NitzSignal;)V
    .registers 3

    .line 323
    iput-object p1, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mLastNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    .line 324
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setLastNitzSignal: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mLastNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setTimezoneId(Ljava/lang/String;)V
    .registers 3

    .line 328
    iput-object p1, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mLastTimeZoneId:Ljava/lang/String;

    .line 329
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setTimezoneId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mLastTimeZoneId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist useFormatDialStringForImsCall()Z
    .registers 5

    .line 609
    iget-object v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_2d

    .line 611
    iget-object v2, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getMNOCarrierId()I

    move-result v2

    const/16 v3, 0x72f

    if-ne v2, v3, :cond_2d

    .line 612
    iget-object v2, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 613
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object p0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getMobileDataRoaming()Z

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_2e

    :cond_2d
    move v1, v0

    :goto_2e
    return v1
.end method
