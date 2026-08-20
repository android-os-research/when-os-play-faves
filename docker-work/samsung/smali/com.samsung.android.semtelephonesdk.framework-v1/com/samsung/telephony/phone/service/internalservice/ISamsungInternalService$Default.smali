.class public Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Default;
.super Ljava/lang/Object;
.source "ISamsungInternalService.java"

# interfaces
.implements Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public changeCallBarringPassword(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    return-void
.end method

.method public changeIccFdnPassword(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "oldPin"    # Ljava/lang/String;
    .param p3, "newPin"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public getActiveFgCallState()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllowedNetworkTypes(I)I
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public getIccPersoSubStateAsString(I)Ljava/lang/String;
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccPin2RetryCount(I)I
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public getIccPuk2retryCount(I)I
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public getOcsglAvailable(I)Z
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public getRevision()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public invokeOemRilRequestRaw(I[BLcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "bytes"    # [B
    .param p3, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    return-void
.end method

.method public isCspPlmnEnabled(I)Z
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public isFdnAvailable(I)Z
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public isIccFdnEnabled(I)Z
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public isIccPin2Blocked(I)Z
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkPolicyRestrictBackground()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public isOCSGLAvailable(I)Z
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public notifyVoicemailNumberChanged(I)V
    .registers 2
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public queryAvailableCsg(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    return-void
.end method

.method public queryAvailableNetwork(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    return-void
.end method

.method public queryCallBarring(IZLjava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "isVideo"    # Z
    .param p3, "facility"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    return-void
.end method

.method public queryCallForwardingOption(IZILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "isVideo"    # Z
    .param p3, "reason"    # I
    .param p4, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    return-void
.end method

.method public queryCallWaiting(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    return-void
.end method

.method public queryCdmaRoamingPreference(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    return-void
.end method

.method public queryEnhancedVoicePrivacy(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    return-void
.end method

.method public queryIcBarring(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    return-void
.end method

.method public queryOutGoingCallerIdDisplay(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    return-void
.end method

.method public queryPreferredNetworkList(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    return-void
.end method

.method public queryPreferredNetworkType(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    return-void
.end method

.method public selectCsg(ILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    return-void
.end method

.method public setAllowedNetworkTypes(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "networkType"    # I
    .param p3, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    return-void
.end method

.method public setCallBarring(IZLjava/lang/String;ZLjava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .registers 7
    .param p1, "phoneId"    # I
    .param p2, "isVideo"    # Z
    .param p3, "facility"    # Ljava/lang/String;
    .param p4, "enabled"    # Z
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    return-void
.end method

.method public setCallForwardingOption(IZIZLjava/lang/String;ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "isVideo"    # Z
    .param p3, "reason"    # I
    .param p4, "isEnabled"    # Z
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "time"    # I
    .param p7, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    return-void
.end method

.method public setCallWaiting(IZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "enabled"    # Z
    .param p3, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    return-void
.end method

.method public setCdmaRoamingPreference(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "roamingType"    # I
    .param p3, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    return-void
.end method

.method public setCdmaSubscription(IILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "cdmaSubscriptionType"    # I
    .param p3, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    return-void
.end method

.method public setCsgManually(ILjava/util/List;ZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "list"    # Ljava/util/List;
    .param p3, "isPersistent"    # Z
    .param p4, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    return-void
.end method

.method public setDataRoamingEnabled(IZ)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public setEnhancedVoicePrivacy(IZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    return-void
.end method

.method public setIcBarring(I[Landroid/os/Bundle;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "options"    # [Landroid/os/Bundle;
    .param p3, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    return-void
.end method

.method public setIccEpsLoci(I[BLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "loci"    # [B
    .param p3, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public setIccFdnEnabled(IZLjava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    return-void
.end method

.method public setIccFplmn(I[BLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "plmn"    # [B
    .param p3, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    return-void
.end method

.method public setIccLoci(I[BLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "loci"    # [B
    .param p3, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    return-void
.end method

.method public setIccPsLoci(I[B)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "loci"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    return-void
.end method

.method public setInternalPdnEnabled(IZ)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    return-void
.end method

.method public setNetworkManually(ILjava/util/List;ZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "list"    # Ljava/util/List;
    .param p3, "isPersistent"    # Z
    .param p4, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(ILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    return-void
.end method

.method public setOutGoingCallerIdDisplay(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "value"    # I
    .param p3, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    return-void
.end method

.method public setPreferredNetworkList(ILjava/util/List;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "list"    # Ljava/util/List;
    .param p3, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    return-void
.end method

.method public setPreferredNetworkType(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "networkType"    # I
    .param p3, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    return-void
.end method

.method public setRadioPower(IZ)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    return-void
.end method

.method public setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    return-void
.end method

.method public supplyIccNetworkDepersonalization(ILjava/lang/String;ILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    return-void
.end method

.method public supplyIccPuk2(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "puk2"    # Ljava/lang/String;
    .param p3, "newPin"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    return-void
.end method
