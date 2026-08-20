.class abstract Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;
.super Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Stub;
.source "SemSupplicantStaIfaceCallbackV1_3Impl.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallbackV12:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;

.field private final mIfaceName:Ljava/lang/String;

.field private final mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

.field private mStateIsFourwayV13:Z

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const-class v0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V
    .registers 5

    .line 40
    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Stub;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mStateIsFourwayV13:Z

    .line 41
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    .line 42
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mIfaceName:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 46
    new-instance p3, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p3, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mCallbackV12:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;

    return-void
.end method


# virtual methods
.method public onAnqpQueryDone([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;)V
    .registers 4

    .line 71
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mCallbackV12:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->onAnqpQueryDone([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;)V

    return-void
.end method

.method public onAssociationRejected([BIZ)V
    .registers 4

    .line 115
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mCallbackV12:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->onAssociationRejected([BIZ)V

    return-void
.end method

.method public onAuthenticationTimeout([B)V
    .registers 2

    .line 120
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mCallbackV12:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->onAuthenticationTimeout([B)V

    return-void
.end method

.method public onBssTmHandlingDone(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;)V
    .registers 2

    .line 214
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string p1, "onBssTmHandlingDone, not implement yet..."

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onBssidChanged(B[B)V
    .registers 3

    .line 125
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mCallbackV12:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->onBssidChanged(B[B)V

    return-void
.end method

.method public onDisconnected([BZI)V
    .registers 9

    .line 95
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v1, "onDisconnected"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 97
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnected 4way="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mStateIsFourwayV13:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " locallyGenerated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " reasonCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_37
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mStateIsFourwayV13:Z

    if-eqz v0, :cond_4e

    if-eqz p2, :cond_41

    const/16 v0, 0x11

    if-eq p3, v0, :cond_4e

    .line 103
    :cond_41
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mIfaceName:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, -0x1

    .line 105
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastAuthenticationFailureEvent(Ljava/lang/String;IILjava/lang/String;)V

    .line 107
    :cond_4e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mIfaceName:Ljava/lang/String;

    .line 109
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-virtual {v0, p0, p2, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastNetworkDisconnectionEvent(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public onDppFailure(I)V
    .registers 2

    .line 188
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mCallbackV12:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->onDppFailure(I)V

    return-void
.end method

.method public onDppFailure_1_3(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .line 204
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string p1, "onDppFailure_1_3, not implement yet..."

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onDppProgress(I)V
    .registers 2

    .line 183
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mCallbackV12:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->onDppProgress(I)V

    return-void
.end method

.method public onDppProgress_1_3(I)V
    .registers 2

    .line 198
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string p1, "onDppProgress_1_3, not implement yet..."

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onDppSuccess(I)V
    .registers 2

    .line 209
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string p1, "onDppSuccess, not implement yet..."

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onDppSuccessConfigReceived(Ljava/util/ArrayList;Ljava/lang/String;[BI)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/lang/String;",
            "[BI)V"
        }
    .end annotation

    .line 172
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mCallbackV12:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->onDppSuccessConfigReceived(Ljava/util/ArrayList;Ljava/lang/String;[BI)V

    return-void
.end method

.method public onDppSuccessConfigSent()V
    .registers 1

    .line 178
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mCallbackV12:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->onDppSuccessConfigSent()V

    return-void
.end method

.method public onEapFailure()V
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mCallbackV12:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->onEapFailure()V

    return-void
.end method

.method public onEapFailure_1_1(I)V
    .registers 2

    .line 135
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mCallbackV12:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->onEapFailure_1_1(I)V

    return-void
.end method

.method public onEapFailure_1_3(I)V
    .registers 5

    .line 140
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mIfaceName:Ljava/lang/String;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastAuthenticationFailureEvent(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public onExtRadioWorkStart(I)V
    .registers 2

    .line 161
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mCallbackV12:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->onExtRadioWorkStart(I)V

    return-void
.end method

.method public onExtRadioWorkTimeout(I)V
    .registers 2

    .line 166
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mCallbackV12:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->onExtRadioWorkTimeout(I)V

    return-void
.end method

.method public onHs20DeauthImminentNotice([BIILjava/lang/String;)V
    .registers 5

    .line 89
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mCallbackV12:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->onHs20DeauthImminentNotice([BIILjava/lang/String;)V

    return-void
.end method

.method public onHs20IconQueryDone([BLjava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 77
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mCallbackV12:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->onHs20IconQueryDone([BLjava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onHs20SubscriptionRemediation([BBLjava/lang/String;)V
    .registers 4

    .line 83
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mCallbackV12:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->onHs20SubscriptionRemediation([BBLjava/lang/String;)V

    return-void
.end method

.method public onNetworkAdded(I)V
    .registers 2

    .line 51
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mCallbackV12:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->onNetworkAdded(I)V

    return-void
.end method

.method public onNetworkRemoved(I)V
    .registers 3

    .line 56
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v0, "onNetworkRemoved"

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mStateIsFourwayV13:Z

    return-void
.end method

.method public onPmkCacheAdded(JLjava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 193
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string p1, "onPmkCacheAdded, not implement yet..."

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onStateChanged(I[BILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 64
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mCallbackV12:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->onStateChanged(I[BILjava/util/ArrayList;)V

    return-void
.end method

.method public onStateChanged_1_3(I[BILjava/util/ArrayList;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;Z)V"
        }
    .end annotation

    .line 220
    iget-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v0, "onStateChanged_1_3"

    invoke-virtual {p3, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    .line 222
    invoke-static {p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->supplicantHidlStateToFrameworkState(I)Landroid/net/wifi/SupplicantState;

    move-result-object v6

    .line 224
    invoke-static {p4}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/wifi/SemWifiSsid;->createFromByteArray([B)Lcom/samsung/android/wifi/SemWifiSsid;

    move-result-object v4

    .line 225
    invoke-static {p2}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v5

    const/4 p2, 0x7

    if-ne p1, p2, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    .line 226
    :goto_1d
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mStateIsFourwayV13:Z

    .line 228
    sget-object p1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v6, p1, :cond_40

    if-eqz p5, :cond_33

    .line 230
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mIfaceName:Ljava/lang/String;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    .line 231
    invoke-virtual {p3, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getCurrentSupplicantNetworkId(Ljava/lang/String;)I

    move-result p3

    .line 230
    invoke-virtual {p1, p2, p3, v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastFilsNetworkConnectionEvent(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_40

    .line 233
    :cond_33
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mIfaceName:Ljava/lang/String;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    .line 234
    invoke-virtual {p3, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getCurrentSupplicantNetworkId(Ljava/lang/String;)I

    move-result p3

    .line 233
    invoke-virtual {p1, p2, p3, v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastNetworkConnectionEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 237
    :cond_40
    :goto_40
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mIfaceName:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    .line 238
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getCurrentSupplicantNetworkId(Ljava/lang/String;)I

    move-result v3

    .line 237
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastSupplicantStateChangeEvent(Ljava/lang/String;ILcom/samsung/android/wifi/SemWifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    return-void
.end method

.method public onWpsEventFail([BSS)V
    .registers 4

    .line 151
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mCallbackV12:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->onWpsEventFail([BSS)V

    return-void
.end method

.method public onWpsEventPbcOverlap()V
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mCallbackV12:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->onWpsEventPbcOverlap()V

    return-void
.end method

.method public onWpsEventSuccess()V
    .registers 1

    .line 146
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->mCallbackV12:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->onWpsEventSuccess()V

    return-void
.end method
