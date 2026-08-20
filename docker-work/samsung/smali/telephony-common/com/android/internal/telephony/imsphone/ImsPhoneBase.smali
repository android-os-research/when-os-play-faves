.class abstract Lcom/android/internal/telephony/imsphone/ImsPhoneBase;
.super Lcom/android/internal/telephony/Phone;
.source "ImsPhoneBase.java"


# instance fields
.field private blacklist mOnHoldRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mRingbackRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private blacklist mTtyModeReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Z)V
    .registers 11

    .line 61
    new-instance v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCommandInterface;

    invoke-direct {v4, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCommandInterface;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 54
    new-instance p1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mRingbackRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 55
    new-instance p1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mOnHoldRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 56
    new-instance p1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mTtyModeReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 57
    sget-object p1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-void
.end method


# virtual methods
.method public blacklist activateCellBroadcastSms(ILandroid/os/Message;)V
    .registers 3

    const-string p0, "ImsPhoneBase"

    const-string p1, "Error! This functionality is not implemented for Volte."

    .line 496
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist canDial()Z
    .registers 6

    .line 235
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canDial(): serviceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsPhoneBase"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_23

    return v1

    .line 239
    :cond_23
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->disable_call()Ljava/util/Optional;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canDial(): disableCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4a

    return v1

    .line 243
    :cond_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canDial(): ringingCall: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canDial(): foregndCall: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canDial(): backgndCall: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-nez v0, :cond_c5

    .line 247
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 248
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result p0

    if-nez p0, :cond_c5

    :cond_c4
    const/4 v1, 0x1

    :cond_c5
    return v1
.end method

.method public blacklist disableDataConnectivity()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist disableLocationUpdates()V
    .registers 1

    return-void
.end method

.method public blacklist enableDataConnectivity()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist enableLocationUpdates()V
    .registers 1

    return-void
.end method

.method public blacklist getAvailableNetworks(Landroid/os/Message;)V
    .registers 2

    return-void
.end method

.method public blacklist getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .registers 5

    return-void
.end method

.method public blacklist getCallForwardingOption(IILandroid/os/Message;)V
    .registers 4

    return-void
.end method

.method public blacklist getCallForwardingOption(ILandroid/os/Message;)V
    .registers 3

    return-void
.end method

.method public blacklist getCallWaiting(Landroid/os/Message;)V
    .registers 2

    const/4 p0, 0x0

    .line 401
    invoke-static {p1, p0, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 402
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .registers 2

    const-string p0, "ImsPhoneBase"

    const-string p1, "Error! This functionality is not implemented for Volte."

    .line 501
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist getCurrentDataConnectionList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getDataActivityState()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .registers 1

    .line 178
    sget-object p0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object p0
.end method

.method public blacklist getDataRoamingEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getDeviceId()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getDeviceSvn()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getEsn()Ljava/lang/String;
    .registers 2

    const-string p0, "ImsPhoneBase"

    const-string v0, "[VoltePhone] getEsn() is a CDMA method"

    .line 314
    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "0"

    return-object p0
.end method

.method public blacklist getGroupIdLevel1()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getGroupIdLevel2()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getIccCard()Lcom/android/internal/telephony/IccCard;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getIccRecordsLoaded()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getIccSerialNumber()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getImei()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getLine1AlphaTag()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getMeid()Ljava/lang/String;
    .registers 2

    const-string p0, "ImsPhoneBase"

    const-string v0, "[VoltePhone] getMeid() is a CDMA method"

    .line 320
    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "0"

    return-object p0
.end method

.method public blacklist getMessageWaitingIndicator()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .registers 2

    const/4 p0, 0x0

    .line 387
    invoke-static {p1, p0, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 388
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist getPendingMmiCodes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .line 173
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method

.method public blacklist getPhoneType()I
    .registers 1

    const/4 p0, 0x5

    return p0
.end method

.method public blacklist getServiceState()Landroid/telephony/ServiceState;
    .registers 2

    .line 146
    new-instance p0, Landroid/telephony/ServiceState;

    invoke-direct {p0}, Landroid/telephony/ServiceState;-><init>()V

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0, v0}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    return-object p0
.end method

.method public blacklist getSignalStrength()Landroid/telephony/SignalStrength;
    .registers 1

    .line 163
    new-instance p0, Landroid/telephony/SignalStrength;

    invoke-direct {p0}, Landroid/telephony/SignalStrength;-><init>()V

    return-object p0
.end method

.method public blacklist getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object p0
.end method

.method public blacklist getSubscriberId()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getVoiceMailNumber()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist handleInCallMmiCommands(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist handlePinMmi(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isDataAllowed()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isUserDataEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist migrateFrom(Lcom/android/internal/telephony/Phone;)V
    .registers 3

    .line 66
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->migrateFrom(Lcom/android/internal/telephony/Phone;)V

    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mRingbackRegistrants:Lcom/android/internal/telephony/RegistrantList;

    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mRingbackRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/Phone;->migrate(Lcom/android/internal/telephony/RegistrantList;Lcom/android/internal/telephony/RegistrantList;)V

    return-void
.end method

.method public blacklist needsOtaServiceProvisioning()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist notifyCallForwardingIndicator()V
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public blacklist notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .registers 2

    .line 209
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mDisconnectRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist notifyImsReason(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyImsDisconnectCause(Lcom/android/internal/telephony/Phone;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist notifyPhoneStateChanged()V
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public blacklist notifyPreciseCallStateChanged()V
    .registers 3

    .line 201
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->notifyPreciseCallStateChangedP()V

    const-string v0, "ImsPhoneBase"

    const-string v1, "notifyPreciseCallStateChanged"

    .line 203
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setImsCallList()V

    return-void
.end method

.method public blacklist notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V
    .registers 2

    .line 222
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mSuppServiceFailedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onCallQualityChanged(Landroid/telephony/CallQuality;I)V
    .registers 4

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallQualityChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/CallQuality;I)V

    return-void
.end method

.method public blacklist onTtyModeReceived(I)V
    .registers 4

    .line 134
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 135
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mTtyModeReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method protected blacklist onUpdateIccAvailability()V
    .registers 1

    return-void
.end method

.method public blacklist registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 94
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mOnHoldRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 72
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mRingbackRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    return-void
.end method

.method public blacklist registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 125
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mTtyModeReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V
    .registers 4

    return-void
.end method

.method public blacklist sendUssdResponse(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public blacklist setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V
    .registers 6

    return-void
.end method

.method public blacklist setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .registers 7

    return-void
.end method

.method public blacklist setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .registers 6

    return-void
.end method

.method public blacklist setCallWaiting(ZLandroid/os/Message;)V
    .registers 3

    const-string p0, "ImsPhoneBase"

    const-string p1, "call waiting not supported"

    .line 407
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .registers 3

    const-string p0, "ImsPhoneBase"

    const-string p1, "Error! This functionality is not implemented for Volte."

    .line 506
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setDataRoamingEnabled(Z)V
    .registers 2

    return-void
.end method

.method blacklist setImsCallList()V
    .registers 1

    .line 550
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getCallTrackerHelper()Lcom/android/internal/telephony/SemCallTrackerHelper;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 552
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->setImsCallList()V

    :cond_9
    return-void
.end method

.method public blacklist setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .registers 2

    return-void
.end method

.method public blacklist setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .registers 3

    const/4 p0, 0x0

    .line 395
    invoke-static {p2, p0, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 396
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist setRadioPower(Z)V
    .registers 2

    return-void
.end method

.method public blacklist setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4

    const/4 p0, 0x0

    .line 359
    invoke-static {p3, p0, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 360
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .registers 3

    return-void
.end method

.method public blacklist startOnHoldTone(Lcom/android/internal/telephony/Connection;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 109
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mOnHoldRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist startRingbackTone()V
    .registers 4

    .line 82
    new-instance v0, Landroid/os/AsyncResult;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 83
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mRingbackRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist stopNetworkScan(Landroid/os/Message;)V
    .registers 2

    return-void
.end method

.method protected blacklist stopOnHoldTone(Lcom/android/internal/telephony/Connection;)V
    .registers 4

    .line 119
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mOnHoldRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist stopRingbackTone()V
    .registers 4

    .line 88
    new-instance v0, Landroid/os/AsyncResult;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 89
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mRingbackRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist unregisterForOnHoldTone(Landroid/os/Handler;)V
    .registers 2

    .line 99
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mOnHoldRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForRingbackTone(Landroid/os/Handler;)V
    .registers 2

    .line 77
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mRingbackRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .registers 2

    return-void
.end method

.method public blacklist unregisterForTtyModeReceived(Landroid/os/Handler;)V
    .registers 2

    .line 130
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mTtyModeReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist updateServiceLocation()V
    .registers 1

    return-void
.end method
