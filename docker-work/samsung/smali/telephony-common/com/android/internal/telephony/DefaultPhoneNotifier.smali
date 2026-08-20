.class public Lcom/android/internal/telephony/DefaultPhoneNotifier;
.super Ljava/lang/Object;
.source "DefaultPhoneNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/PhoneNotifier;


# instance fields
.field private blacklist mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "telephony_registry"

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyRegistryManager;

    iput-object p1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    return-void
.end method

.method public static blacklist convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I
    .registers 2

    .line 285
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_1e

    const/4 p0, 0x0

    return p0

    :pswitch_d
    const/16 p0, 0x8

    return p0

    :pswitch_10
    const/4 p0, 0x7

    return p0

    :pswitch_12
    const/4 p0, 0x6

    return p0

    :pswitch_14
    const/4 p0, 0x5

    return p0

    :pswitch_16
    const/4 p0, 0x4

    return p0

    :pswitch_18
    const/4 p0, 0x3

    return p0

    :pswitch_1a
    const/4 p0, 0x2

    return p0

    :pswitch_1c
    const/4 p0, 0x1

    return p0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1a
        :pswitch_18
        :pswitch_16
        :pswitch_14
        :pswitch_12
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    const-string p0, "DefaultPhoneNotifier"

    .line 308
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist clearPreciseDataConnectionStates(I)V
    .registers 2

    .line 314
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyRegistryManager;->clearPreciseDataConnectionStates(I)V

    return-void
.end method

.method public blacklist notifyAllowedNetworkTypesChanged(Lcom/android/internal/telephony/Phone;IJ)V
    .registers 11

    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 270
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    move v3, p2

    move-wide v4, p3

    .line 269
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/TelephonyRegistryManager;->notifyAllowedNetworkTypesChanged(IIIJ)V

    return-void
.end method

.method public blacklist notifyBarringInfoChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/BarringInfo;)V
    .registers 4

    .line 249
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyBarringInfoChanged(IILandroid/telephony/BarringInfo;)V

    return-void
.end method

.method public blacklist notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V
    .registers 5

    .line 117
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCallForwardingChanged: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isCFActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultPhoneNotifier"

    .line 118
    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 122
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result p1

    .line 121
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyRegistryManager;->notifyCallForwardingChanged(IZ)V

    return-void
.end method

.method public blacklist notifyCallQualityChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/CallQuality;I)V
    .registers 5

    .line 236
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/TelephonyRegistryManager;->notifyCallQualityChanged(IILandroid/telephony/CallQuality;I)V

    return-void
.end method

.method public blacklist notifyCellInfo(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 150
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 151
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyCellInfoChanged(ILjava/util/List;)V

    return-void
.end method

.method public blacklist notifyCellLocation(Lcom/android/internal/telephony/Phone;Landroid/telephony/CellIdentity;)V
    .registers 5

    .line 139
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 141
    sget-boolean v1, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez v1, :cond_22

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCellLocation: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 145
    :cond_22
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p0, v0, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyCellLocation(ILandroid/telephony/CellIdentity;)V

    return-void
.end method

.method public blacklist notifyDataActivationStateChanged(Lcom/android/internal/telephony/Phone;I)V
    .registers 4

    .line 189
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 190
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 189
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyDataActivationStateChanged(III)V

    return-void
.end method

.method public blacklist notifyDataActivity(Lcom/android/internal/telephony/Phone;)V
    .registers 3

    .line 127
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 128
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getDataActivityState()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyRegistryManager;->notifyDataActivityChanged(II)V

    return-void
.end method

.method public blacklist notifyDataConnection(Lcom/android/internal/telephony/Phone;Landroid/telephony/PreciseDataConnectionState;)V
    .registers 4

    .line 133
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 134
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 133
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyDataConnectionForSubscriber(IILandroid/telephony/PreciseDataConnectionState;)V

    return-void
.end method

.method public blacklist notifyDataEnabled(Lcom/android/internal/telephony/Phone;ZI)V
    .registers 5

    .line 262
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/TelephonyRegistryManager;->notifyDataEnabled(IIZI)V

    return-void
.end method

.method public blacklist notifyDisconnectCause(Lcom/android/internal/telephony/Phone;II)V
    .registers 5

    .line 173
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/TelephonyRegistryManager;->notifyDisconnectCause(IIII)V

    return-void
.end method

.method public blacklist notifyDisplayInfoChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 4

    .line 207
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyDisplayInfoChanged(IILandroid/telephony/TelephonyDisplayInfo;)V

    return-void
.end method

.method public blacklist notifyEmergencyNumberList(Lcom/android/internal/telephony/Phone;)V
    .registers 3

    .line 224
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyRegistryManager;->notifyEmergencyNumberList(II)V

    return-void
.end method

.method public blacklist notifyImsDisconnectCause(Lcom/android/internal/telephony/Phone;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    .line 179
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyImsDisconnectCause(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist notifyLinkCapacityEstimateChanged(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;)V"
        }
    .end annotation

    .line 276
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 277
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 276
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyLinkCapacityEstimateChanged(IILjava/util/List;)V

    return-void
.end method

.method public blacklist notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 109
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 110
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 111
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 112
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result p1

    .line 111
    invoke-virtual {p0, v0, v1, p1}, Landroid/telephony/TelephonyRegistryManager;->notifyMessageWaitingChanged(IIZ)V

    return-void
.end method

.method public blacklist notifyOutgoingEmergencySms(Lcom/android/internal/telephony/Phone;Landroid/telephony/emergency/EmergencyNumber;)V
    .registers 4

    .line 229
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 230
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 229
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyOutgoingEmergencySms(IILandroid/telephony/emergency/EmergencyNumber;)V

    return-void
.end method

.method public blacklist notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    .registers 2

    .line 213
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyRegistryManager;->notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V

    return-void
.end method

.method public blacklist notifyPhoneState(Lcom/android/internal/telephony/Phone;)V
    .registers 8

    .line 61
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 62
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 63
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    if-eqz v0, :cond_1d

    .line 65
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 66
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_1d
    const-string v0, ""

    .line 69
    :goto_1f
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneConstantConversions;->convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I

    move-result v3

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyPhoneState - state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", phoneId: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", subId: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 72
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 73
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConstantConversions;->convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I

    move-result p1

    .line 72
    invoke-virtual {p0, v2, v1, p1, v0}, Landroid/telephony/TelephonyRegistryManager;->notifyCallStateChanged(IIILjava/lang/String;)V

    return-void
.end method

.method public blacklist notifyPhysicalChannelConfig(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 256
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 257
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 256
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyPhysicalChannelConfigForSubscriber(IILjava/util/List;)V

    return-void
.end method

.method public blacklist notifyPreciseCallState(Lcom/android/internal/telephony/Phone;)V
    .registers 12

    .line 155
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 156
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 157
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    if-eqz v0, :cond_73

    if-eqz v1, :cond_73

    if-eqz v2, :cond_73

    .line 160
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v3

    .line 161
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v4

    .line 162
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v5

    .line 163
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyPreciseCallState - RingingCall: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ForegroundCall: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", BackgroundCall: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 165
    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    .line 166
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v7

    .line 167
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v8

    .line 168
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v9

    .line 165
    invoke-virtual/range {v4 .. v9}, Landroid/telephony/TelephonyRegistryManager;->notifyPreciseCallState(IIIII)V

    :cond_73
    return-void
.end method

.method public blacklist notifyRadioPowerStateChanged(Lcom/android/internal/telephony/Phone;I)V
    .registers 4

    .line 218
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyRadioPowerStateChanged(III)V

    return-void
.end method

.method public blacklist notifyRegistrationFailed(Lcom/android/internal/telephony/Phone;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .registers 15

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/TelephonyRegistryManager;->notifyRegistrationFailed(IILandroid/telephony/CellIdentity;Ljava/lang/String;III)V

    return-void
.end method

.method public blacklist notifyServiceState(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 78
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifyServiceStateForSubId(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)V

    return-void
.end method

.method public blacklist notifyServiceStateForSubId(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)V
    .registers 7

    .line 83
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyServiceStateForSubId: mRegistryMgr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " sender="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " phondId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " subId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DefaultPhoneNotifier"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_46

    .line 88
    new-instance p2, Landroid/telephony/ServiceState;

    invoke-direct {p2}, Landroid/telephony/ServiceState;-><init>()V

    .line 89
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 91
    :cond_46
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p0, v0, p3, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyServiceStateChanged(IILandroid/telephony/ServiceState;)V

    return-void
.end method

.method public blacklist notifySignalStrength(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 96
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 97
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 103
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 104
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p1

    .line 103
    invoke-virtual {p0, v0, v1, p1}, Landroid/telephony/TelephonyRegistryManager;->notifySignalStrengthChanged(IILandroid/telephony/SignalStrength;)V

    return-void
.end method

.method public blacklist notifySrvccStateChanged(Lcom/android/internal/telephony/Phone;I)V
    .registers 3

    .line 184
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifySrvccStateChanged(II)V

    return-void
.end method

.method public blacklist notifyUserMobileDataStateChanged(Lcom/android/internal/telephony/Phone;Z)V
    .registers 4

    .line 201
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 202
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 201
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyUserMobileDataStateChanged(IIZ)V

    return-void
.end method

.method public blacklist notifyVoiceActivationStateChanged(Lcom/android/internal/telephony/Phone;I)V
    .registers 4

    .line 195
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 196
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 195
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyVoiceActivationStateChanged(III)V

    return-void
.end method
