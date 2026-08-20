.class abstract Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;
.super Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Stub;
.source "SemSupplicantStaIfaceCallbackV1_2Impl.java"


# instance fields
.field private final mCallbackV11:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_1;

.field private final mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;)V
    .registers 4

    .line 29
    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Stub;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    .line 31
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_1;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_1;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->mCallbackV11:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_1;

    return-void
.end method


# virtual methods
.method public onAnqpQueryDone([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;)V
    .registers 4

    .line 54
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->mCallbackV11:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->onAnqpQueryDone([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;)V

    return-void
.end method

.method public onAssociationRejected([BIZ)V
    .registers 4

    .line 84
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->mCallbackV11:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->onAssociationRejected([BIZ)V

    return-void
.end method

.method public onAuthenticationTimeout([B)V
    .registers 2

    .line 89
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->mCallbackV11:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_1;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->onAuthenticationTimeout([B)V

    return-void
.end method

.method public onBssidChanged(B[B)V
    .registers 3

    .line 94
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->mCallbackV11:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_1;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->onBssidChanged(B[B)V

    return-void
.end method

.method public onDisconnected([BZI)V
    .registers 4

    .line 78
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->mCallbackV11:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->onDisconnected([BZI)V

    return-void
.end method

.method public onDppFailure(I)V
    .registers 2

    .line 150
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string p1, "onDppFailure_1_2, not implement yet..."

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onDppProgress(I)V
    .registers 2

    .line 145
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string p1, "onDppProgress_1_2, not implement yet..."

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

    .line 135
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string p1, "onDppSuccessConfigReceived_1_2, not implement yet..."

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onDppSuccessConfigSent()V
    .registers 2

    .line 140
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v0, "onDppSuccessConfigSent_1_2, not implement yet..."

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onEapFailure()V
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->mCallbackV11:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_1;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->onEapFailure()V

    return-void
.end method

.method public onEapFailure_1_1(I)V
    .registers 2

    .line 104
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->mCallbackV11:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_1;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->onEapFailure_1_1(I)V

    return-void
.end method

.method public onExtRadioWorkStart(I)V
    .registers 2

    .line 124
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->mCallbackV11:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_1;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->onExtRadioWorkStart(I)V

    return-void
.end method

.method public onExtRadioWorkTimeout(I)V
    .registers 2

    .line 129
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->mCallbackV11:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_1;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->onExtRadioWorkTimeout(I)V

    return-void
.end method

.method public onHs20DeauthImminentNotice([BIILjava/lang/String;)V
    .registers 5

    .line 72
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->mCallbackV11:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_1;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->onHs20DeauthImminentNotice([BIILjava/lang/String;)V

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

    .line 60
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->mCallbackV11:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->onHs20IconQueryDone([BLjava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onHs20SubscriptionRemediation([BBLjava/lang/String;)V
    .registers 4

    .line 66
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->mCallbackV11:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->onHs20SubscriptionRemediation([BBLjava/lang/String;)V

    return-void
.end method

.method public onNetworkAdded(I)V
    .registers 2

    .line 36
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->mCallbackV11:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_1;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->onNetworkAdded(I)V

    return-void
.end method

.method public onNetworkRemoved(I)V
    .registers 2

    .line 41
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->mCallbackV11:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_1;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->onNetworkRemoved(I)V

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

    .line 47
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->mCallbackV11:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_1;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->onStateChanged(I[BILjava/util/ArrayList;)V

    return-void
.end method

.method public onWpsEventFail([BSS)V
    .registers 4

    .line 114
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->mCallbackV11:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->onWpsEventFail([BSS)V

    return-void
.end method

.method public onWpsEventPbcOverlap()V
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->mCallbackV11:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_1;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->onWpsEventPbcOverlap()V

    return-void
.end method

.method public onWpsEventSuccess()V
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;->mCallbackV11:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_1;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_1Impl;->onWpsEventSuccess()V

    return-void
.end method
