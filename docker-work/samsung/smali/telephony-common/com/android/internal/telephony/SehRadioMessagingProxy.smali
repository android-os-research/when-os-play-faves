.class public Lcom/android/internal/telephony/SehRadioMessagingProxy;
.super Lcom/android/internal/telephony/SehRadioServiceProxy;
.source "SehRadioMessagingProxy.java"


# instance fields
.field private volatile blacklist mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    return-void
.end method

.method private static blacklist convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_3

    goto :goto_5

    :cond_3
    const-string p0, ""

    :goto_5
    return-object p0
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    .line 62
    sget-object v0, Lcom/android/internal/telephony/SemRIL;->SEC_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    .line 64
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    return-void
.end method

.method public blacklist getAidl()Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    return-object p0
.end method

.method public blacklist getCellBroadcastConfig(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 78
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 79
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;->getCellBroadcastConfig(I)V

    goto :goto_18

    .line 81
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getCellBroadcastConfig(I)V

    :goto_18
    return-void
.end method

.method public blacklist getImsRegistrationState(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 87
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 88
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;->getImsRegistrationState(I)V

    goto :goto_18

    .line 90
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getImsRegistrationState(I)V

    :goto_18
    return-void
.end method

.method public blacklist getStoredMsgCountFromSim(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 96
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 97
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;->getStoredMsgCountFromSim(I)V

    goto :goto_18

    .line 99
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getStoredMsgCountFromSim(I)V

    :goto_18
    return-void
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public blacklist readSmsFromSim(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 105
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 106
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;->readSmsFromSim(II)V

    goto :goto_18

    .line 108
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->readSmsFromSim(II)V

    :goto_18
    return-void
.end method

.method public blacklist sendCdmaSms(I[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 114
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 115
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalCdmaSmsMessageAidl([B)Landroid/hardware/radio/messaging/CdmaSmsMessage;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;->sendCdmaSms(ILandroid/hardware/radio/messaging/CdmaSmsMessage;)V

    goto :goto_20

    .line 117
    :cond_17
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalCdmaSmsMessage([B)Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    :goto_20
    return-void
.end method

.method public blacklist sendCdmaSmsExpectMore(I[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 123
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 124
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalCdmaSmsMessageAidl([B)Landroid/hardware/radio/messaging/CdmaSmsMessage;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;->sendCdmaSmsExpectMore(ILandroid/hardware/radio/messaging/CdmaSmsMessage;)V

    goto :goto_20

    .line 126
    :cond_17
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalCdmaSmsMessage([B)Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->sendCdmaSmsExpectMore(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    :goto_20
    return-void
.end method

.method public blacklist sendSMSExpectMore(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 132
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 133
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessageAidl(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/messaging/GsmSmsMessage;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;->sendSMSExpectMore(ILandroid/hardware/radio/messaging/GsmSmsMessage;)V

    goto :goto_20

    .line 135
    :cond_17
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessage(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    :goto_20
    return-void
.end method

.method public blacklist sendSms(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 141
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 142
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessageAidl(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/messaging/GsmSmsMessage;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;->sendSms(ILandroid/hardware/radio/messaging/GsmSmsMessage;)V

    goto :goto_20

    .line 144
    :cond_17
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessage(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    :goto_20
    return-void
.end method

.method public blacklist setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;)V
    .registers 3

    .line 43
    iput-object p1, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 44
    iput-object p2, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mIsAidl:Z

    const-string p0, "SehRadioMessagingProxy"

    const-string p1, "AIDL initialized"

    .line 46
    invoke-static {p0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist writeSmsToSim(IIILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 150
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 151
    new-instance v0, Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;-><init>()V

    .line 152
    iput p2, v0, Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;->index:I

    .line 153
    iput p3, v0, Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;->status:I

    .line 154
    invoke-static {p4}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;->smsc:Ljava/lang/String;

    .line 155
    invoke-static {p5}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;->pdu:Ljava/lang/String;

    .line 156
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;->writeSmsToSim(ILvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;)V

    goto :goto_42

    .line 158
    :cond_28
    new-instance v0, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;-><init>()V

    .line 159
    iput p2, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->index:I

    .line 160
    iput p3, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->status:I

    .line 161
    invoke-static {p4}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->smsc:Ljava/lang/String;

    .line 162
    invoke-static {p5}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->pdu:Ljava/lang/String;

    .line 163
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->writeSmsToSim(ILvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;)V

    :goto_42
    return-void
.end method
