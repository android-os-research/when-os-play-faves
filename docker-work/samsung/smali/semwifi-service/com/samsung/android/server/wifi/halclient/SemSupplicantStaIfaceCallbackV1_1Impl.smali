.class abstract Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;
.super Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;
.source "SemSupplicantStaIfaceCallbackV1_1Impl.java"


# instance fields
.field private final mCallbackV10:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;

.field private final mIfaceName:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V
    .registers 5

    .line 36
    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->mIfaceName:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->mLock:Ljava/lang/Object;

    .line 40
    iput-object p4, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 41
    new-instance p3, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p3, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->mCallbackV10:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;

    return-void
.end method


# virtual methods
.method public onAnqpQueryDone([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;)V
    .registers 4

    .line 64
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->mCallbackV10:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->onAnqpQueryDone([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;)V

    return-void
.end method

.method public onAssociationRejected([BIZ)V
    .registers 4

    .line 94
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->mCallbackV10:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->onAssociationRejected([BIZ)V

    return-void
.end method

.method public onAuthenticationTimeout([B)V
    .registers 2

    .line 99
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->mCallbackV10:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->onAuthenticationTimeout([B)V

    return-void
.end method

.method public onBssidChanged(B[B)V
    .registers 3

    .line 104
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->mCallbackV10:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->onBssidChanged(B[B)V

    return-void
.end method

.method public onDisconnected([BZI)V
    .registers 4

    .line 88
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->mCallbackV10:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->onDisconnected([BZI)V

    return-void
.end method

.method public onEapFailure()V
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->mCallbackV10:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->onEapFailure()V

    return-void
.end method

.method public onEapFailure_1_1(I)V
    .registers 6

    .line 114
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v2, "onEapFailure_1_1"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->mIfaceName:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, p1, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastAuthenticationFailureEvent(Ljava/lang/String;IILjava/lang/String;)V

    .line 118
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public onExtRadioWorkStart(I)V
    .registers 2

    .line 138
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->mCallbackV10:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->onExtRadioWorkStart(I)V

    return-void
.end method

.method public onExtRadioWorkTimeout(I)V
    .registers 2

    .line 143
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->mCallbackV10:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->onExtRadioWorkTimeout(I)V

    return-void
.end method

.method public onHs20DeauthImminentNotice([BIILjava/lang/String;)V
    .registers 5

    .line 82
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->mCallbackV10:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->onHs20DeauthImminentNotice([BIILjava/lang/String;)V

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

    .line 70
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->mCallbackV10:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->onHs20IconQueryDone([BLjava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onHs20SubscriptionRemediation([BBLjava/lang/String;)V
    .registers 4

    .line 76
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->mCallbackV10:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->onHs20SubscriptionRemediation([BBLjava/lang/String;)V

    return-void
.end method

.method public onNetworkAdded(I)V
    .registers 2

    .line 46
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->mCallbackV10:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->onNetworkAdded(I)V

    return-void
.end method

.method public onNetworkRemoved(I)V
    .registers 2

    .line 51
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->mCallbackV10:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->onNetworkRemoved(I)V

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

    .line 57
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->mCallbackV10:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->onStateChanged(I[BILjava/util/ArrayList;)V

    return-void
.end method

.method public onWpsEventFail([BSS)V
    .registers 4

    .line 128
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->mCallbackV10:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->onWpsEventFail([BSS)V

    return-void
.end method

.method public onWpsEventPbcOverlap()V
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->mCallbackV10:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->onWpsEventPbcOverlap()V

    return-void
.end method

.method public onWpsEventSuccess()V
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->mCallbackV10:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->onWpsEventSuccess()V

    return-void
.end method
