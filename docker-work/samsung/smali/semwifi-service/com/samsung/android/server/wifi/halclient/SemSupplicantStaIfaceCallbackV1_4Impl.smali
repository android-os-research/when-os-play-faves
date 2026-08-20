.class abstract Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;
.super Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$Stub;
.source "SemSupplicantStaIfaceCallbackV1_4Impl.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallbackV10:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;

.field private final mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

.field private final mIfaceName:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-class v0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V
    .registers 5

    .line 37
    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$Stub;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    .line 39
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mIfaceName:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mLock:Ljava/lang/Object;

    .line 41
    iput-object p4, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 44
    new-instance p3, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p3, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    .line 45
    new-instance p3, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p3, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV10:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;

    return-void
.end method


# virtual methods
.method public onAnqpQueryDone([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;)V
    .registers 4

    .line 79
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onAnqpQueryDone([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;)V

    return-void
.end method

.method public onAnqpQueryDone_1_4([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;)V
    .registers 4

    .line 68
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 69
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string p2, "onAnqpQueryDone_1_4, not implement yet..."

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    .line 72
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onAssociationRejected([BIZ)V
    .registers 4

    .line 117
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onAssociationRejected([BIZ)V

    return-void
.end method

.method public onAssociationRejected_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;)V
    .registers 5

    .line 108
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v2, "onAssociationRejected_1_4"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    .line 110
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV10:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->onAssociationRejected(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;)V

    .line 111
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public onAuthenticationTimeout([B)V
    .registers 2

    .line 122
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onAuthenticationTimeout([B)V

    return-void
.end method

.method public onBssTmHandlingDone(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;)V
    .registers 2

    .line 216
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onBssTmHandlingDone(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;)V

    return-void
.end method

.method public onBssidChanged(B[B)V
    .registers 3

    .line 127
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onBssidChanged(B[B)V

    return-void
.end method

.method public onDisconnected([BZI)V
    .registers 4

    .line 103
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onDisconnected([BZI)V

    return-void
.end method

.method public onDppFailure(I)V
    .registers 2

    .line 190
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onDppFailure(I)V

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

    .line 206
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onDppFailure_1_3(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onDppProgress(I)V
    .registers 2

    .line 185
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onDppProgress(I)V

    return-void
.end method

.method public onDppProgress_1_3(I)V
    .registers 2

    .line 200
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onDppProgress_1_3(I)V

    return-void
.end method

.method public onDppSuccess(I)V
    .registers 2

    .line 211
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onDppSuccess(I)V

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

    .line 174
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onDppSuccessConfigReceived(Ljava/util/ArrayList;Ljava/lang/String;[BI)V

    return-void
.end method

.method public onDppSuccessConfigSent()V
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onDppSuccessConfigSent()V

    return-void
.end method

.method public onEapFailure()V
    .registers 1

    .line 132
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onEapFailure()V

    return-void
.end method

.method public onEapFailure_1_1(I)V
    .registers 2

    .line 137
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onEapFailure_1_1(I)V

    return-void
.end method

.method public onEapFailure_1_3(I)V
    .registers 5

    .line 142
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mIfaceName:Ljava/lang/String;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastAuthenticationFailureEvent(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public onExtRadioWorkStart(I)V
    .registers 2

    .line 163
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onExtRadioWorkStart(I)V

    return-void
.end method

.method public onExtRadioWorkTimeout(I)V
    .registers 2

    .line 168
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onExtRadioWorkTimeout(I)V

    return-void
.end method

.method public onHs20DeauthImminentNotice([BIILjava/lang/String;)V
    .registers 5

    .line 97
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onHs20DeauthImminentNotice([BIILjava/lang/String;)V

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

    .line 85
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onHs20IconQueryDone([BLjava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onHs20SubscriptionRemediation([BBLjava/lang/String;)V
    .registers 4

    .line 91
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onHs20SubscriptionRemediation([BBLjava/lang/String;)V

    return-void
.end method

.method public onHs20TermsAndConditionsAcceptanceRequestedNotification([BLjava/lang/String;)V
    .registers 3

    .line 228
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 229
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string p2, "onHs20TermsAndConditionsAcceptanceRequestedNotification, not implement yet..."

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    .line 230
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onNetworkAdded(I)V
    .registers 2

    .line 50
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onNetworkAdded(I)V

    return-void
.end method

.method public onNetworkNotFound(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v1, "onNetworkNotFoundNotification"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mIfaceName:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastNetworkNotFoundEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNetworkRemoved(I)V
    .registers 2

    .line 55
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onNetworkRemoved(I)V

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

    .line 195
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onPmkCacheAdded(JLjava/util/ArrayList;)V

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

    .line 61
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onStateChanged(I[BILjava/util/ArrayList;)V

    return-void
.end method

.method public onStateChanged_1_3(I[BILjava/util/ArrayList;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;Z)V"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onStateChanged_1_3(I[BILjava/util/ArrayList;Z)V

    return-void
.end method

.method public onWpsEventFail([BSS)V
    .registers 4

    .line 153
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onWpsEventFail([BSS)V

    return-void
.end method

.method public onWpsEventPbcOverlap()V
    .registers 1

    .line 158
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onWpsEventPbcOverlap()V

    return-void
.end method

.method public onWpsEventSuccess()V
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_4Impl;->mCallbackV13:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;->onWpsEventSuccess()V

    return-void
.end method
