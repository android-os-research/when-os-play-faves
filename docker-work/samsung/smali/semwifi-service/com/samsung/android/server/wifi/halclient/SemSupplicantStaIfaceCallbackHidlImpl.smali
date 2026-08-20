.class abstract Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;
.super Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;
.source "SemSupplicantStaIfaceCallbackHidlImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mIfaceName:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

.field private mStateIsFourway:Z

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-class v0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V
    .registers 6

    .line 40
    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mStateIsFourway:Z

    .line 41
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    .line 42
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mIfaceName:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mLock:Ljava/lang/Object;

    .line 44
    iput-object p4, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    return-void
.end method

.method protected static supplicantHidlStateToFrameworkState(I)Landroid/net/wifi/SupplicantState;
    .registers 4

    packed-switch p0, :pswitch_data_38

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :pswitch_1a
    sget-object p0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    return-object p0

    .line 69
    :pswitch_1d
    sget-object p0, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    return-object p0

    .line 67
    :pswitch_20
    sget-object p0, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    return-object p0

    .line 65
    :pswitch_23
    sget-object p0, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    return-object p0

    .line 63
    :pswitch_26
    sget-object p0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    return-object p0

    .line 61
    :pswitch_29
    sget-object p0, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    return-object p0

    .line 59
    :pswitch_2c
    sget-object p0, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    return-object p0

    .line 57
    :pswitch_2f
    sget-object p0, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    return-object p0

    .line 55
    :pswitch_32
    sget-object p0, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    return-object p0

    .line 53
    :pswitch_35
    sget-object p0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    return-object p0

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method


# virtual methods
.method public onAnqpQueryDone([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;)V
    .registers 4

    .line 118
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 119
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string p2, "onAnqpQueryDone, not implement yet..."

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    .line 120
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onAssociationRejected(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;)V
    .registers 6

    .line 170
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mIfaceName:Ljava/lang/String;

    iget v2, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->statusCode:I

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->timedOut:Z

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->bssid:[B

    .line 172
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-virtual {v1, p0, v2, v3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastAssociationRejectionEvent(Ljava/lang/String;IZLjava/lang/String;)V

    .line 173
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public onAssociationRejected([BIZ)V
    .registers 7

    .line 178
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v2, "onAssociationRejected"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mIfaceName:Ljava/lang/String;

    .line 184
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-virtual {v1, p0, p2, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastAssociationRejectionEvent(Ljava/lang/String;IZLjava/lang/String;)V

    .line 185
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public onAuthenticationTimeout([B)V
    .registers 6

    .line 190
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v2, "onAuthenticationTimeout"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mIfaceName:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 194
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-virtual {v1, p0, v2, v3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastAuthenticationFailureEvent(Ljava/lang/String;IILjava/lang/String;)V

    .line 195
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public onBssidChanged(B[B)V
    .registers 6

    .line 200
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v2, "onBssidChanged"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    if-nez p1, :cond_18

    .line 203
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mIfaceName:Ljava/lang/String;

    .line 204
    invoke-static {p2}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p2

    .line 203
    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastTargetBssidEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    :cond_18
    const/4 v1, 0x1

    if-ne p1, v1, :cond_26

    .line 206
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mIfaceName:Ljava/lang/String;

    .line 207
    invoke-static {p2}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p2

    .line 206
    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastAssociatedBssidEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_26
    :goto_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public onDisconnected([BZI)V
    .registers 10

    .line 148
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v2, "onDisconnected"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 151
    sget-object v1, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnected 4way="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mStateIsFourway:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " locallyGenerated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " reasonCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_3a
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mStateIsFourway:Z

    if-eqz v1, :cond_51

    if-eqz p2, :cond_44

    const/16 v1, 0x11

    if-eq p3, v1, :cond_51

    .line 157
    :cond_44
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mIfaceName:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, -0x1

    .line 159
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v5

    .line 157
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastAuthenticationFailureEvent(Ljava/lang/String;IILjava/lang/String;)V

    .line 161
    :cond_51
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mIfaceName:Ljava/lang/String;

    if-eqz p2, :cond_59

    const/4 p2, 0x1

    goto :goto_5a

    :cond_59
    const/4 p2, 0x0

    .line 163
    :goto_5a
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-virtual {v1, p0, p2, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastNetworkDisconnectionEvent(Ljava/lang/String;IILjava/lang/String;)V

    .line 164
    monitor-exit v0

    return-void

    :catchall_63
    move-exception p0

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_63

    throw p0
.end method

.method public onEapFailure()V
    .registers 6

    .line 214
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v2, "onEapFailure"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mIfaceName:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastAuthenticationFailureEvent(Ljava/lang/String;IILjava/lang/String;)V

    .line 219
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public onExtRadioWorkStart(I)V
    .registers 3

    .line 253
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 254
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v0, "onExtRadioWorkStart"

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    .line 255
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onExtRadioWorkTimeout(I)V
    .registers 3

    .line 260
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 261
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v0, "onExtRadioWorkTimeout"

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    .line 262
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onHs20DeauthImminentNotice([BIILjava/lang/String;)V
    .registers 5

    .line 141
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 142
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string p2, "onHs20DeauthImminentNotice, not implement yet..."

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    .line 143
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
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

    .line 126
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 127
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string p2, "onHs20IconQueryDone, not implement yet..."

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    .line 128
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onHs20SubscriptionRemediation([BBLjava/lang/String;)V
    .registers 4

    .line 133
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 134
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string p2, "onHs20SubscriptionRemediation, not implement yet..."

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    .line 135
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
    .registers 3

    .line 79
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 80
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v0, "onNetworkAdded"

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    .line 81
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onNetworkRemoved(I)V
    .registers 4

    .line 86
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 87
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v1, "onNetworkRemoved"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mStateIsFourway:Z

    .line 90
    monitor-exit p1

    return-void

    :catchall_f
    move-exception p0

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public onStateChanged(I[BILjava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 96
    iget-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 97
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v1, "onStateChanged"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    .line 99
    invoke-static {p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->supplicantHidlStateToFrameworkState(I)Landroid/net/wifi/SupplicantState;

    move-result-object v7

    .line 101
    invoke-static {p4}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object p4

    invoke-static {p4}, Lcom/samsung/android/wifi/SemWifiSsid;->createFromByteArray([B)Lcom/samsung/android/wifi/SemWifiSsid;

    move-result-object v5

    .line 102
    invoke-static {p2}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v6

    const/4 p2, 0x7

    if-ne p1, p2, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    .line 103
    :goto_20
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mStateIsFourway:Z

    .line 104
    sget-object p1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v7, p1, :cond_33

    .line 105
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mIfaceName:Ljava/lang/String;

    iget-object p4, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    .line 106
    invoke-virtual {p4, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getCurrentSupplicantNetworkId(Ljava/lang/String;)I

    move-result p4

    .line 105
    invoke-virtual {p1, p2, p4, v6}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastNetworkConnectionEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    :cond_33
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mIfaceName:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    .line 109
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getCurrentSupplicantNetworkId(Ljava/lang/String;)I

    move-result v4

    .line 108
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastSupplicantStateChangeEvent(Ljava/lang/String;ILcom/samsung/android/wifi/SemWifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    .line 111
    monitor-exit p3

    return-void

    :catchall_42
    move-exception p0

    monitor-exit p3
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public onWpsEventFail([BSS)V
    .registers 6

    .line 232
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 233
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v1, "onWpsEventFail"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    const/16 v0, 0x10

    if-ne p2, v0, :cond_18

    if-nez p3, :cond_18

    .line 236
    iget-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastWpsTimeoutEvent(Ljava/lang/String;)V

    goto :goto_1f

    .line 238
    :cond_18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastWpsFailEvent(Ljava/lang/String;II)V

    .line 240
    :goto_1f
    monitor-exit p1

    return-void

    :catchall_21
    move-exception p0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public onWpsEventPbcOverlap()V
    .registers 4

    .line 245
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v2, "onWpsEventPbcOverlap"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastWpsOverlapEvent(Ljava/lang/String;)V

    .line 248
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public onWpsEventSuccess()V
    .registers 4

    .line 224
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v2, "onWpsEventSuccess"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackHidlImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastWpsSuccessEvent(Ljava/lang/String;)V

    .line 227
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method
