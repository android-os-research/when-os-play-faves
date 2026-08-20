.class public Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;
.super Ljava/lang/Object;
.source "SemSupplicantStaIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyStatus;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyRequest;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyRequestType;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$SupplicantEventCode;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$StaIfaceStatusCode;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$StaIfaceReasonCode;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$MboAssocDisallowedReasonCode;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$DppProgressCode;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$DppFailureCode;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$DppEventType;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$DppNetRole;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$DppCurve;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$DppAkm;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field protected static final QOS_POLICY_REQUEST_ADD:I = 0x0

.field protected static final QOS_POLICY_REQUEST_REMOVE:I = 0x1

.field protected static final SUPPLICANT_EVENT_ASSOCIATED:I = 0x3

.field protected static final SUPPLICANT_EVENT_ASSOCIATING:I = 0x2

.field protected static final SUPPLICANT_EVENT_CONNECTED:I = 0x0

.field protected static final SUPPLICANT_EVENT_DISCONNECTED:I = 0x1

.field protected static final SUPPLICANT_EVENT_EAP_FAILURE:I = 0x5

.field protected static final SUPPLICANT_EVENT_EAP_METHOD_SELECTED:I = 0x4

.field protected static final SUPPLICANT_EVENT_OPEN_SSL_FAILURE:I = 0x7

.field protected static final SUPPLICANT_EVENT_SSID_TEMP_DISABLED:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SupplicantStaIfaceHal"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEventHandler:Landroid/os/Handler;

.field private final mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final mLock:Ljava/lang/Object;

.field private mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Handler;)V
    .registers 6

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 750
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mContext:Landroid/content/Context;

    .line 751
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 752
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 753
    iput-object p4, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mEventHandler:Landroid/os/Handler;

    .line 754
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->createStaIfaceHalMockable()Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez p1, :cond_21

    const-string p0, "SupplicantStaIfaceHal"

    const-string p1, "Failed to get internal ISupplicantStaIfaceHal instance."

    .line 756
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-void
.end method

.method private handleNullHal(Ljava/lang/String;)Z
    .registers 3

    .line 867
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot call "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because HAL object is null."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SupplicantStaIfaceHal"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method protected static supplicantEventCodeToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_2e

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid SupplicantEventCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_15
    const-string p0, "OPEN_SSL_FAILURE"

    return-object p0

    :pswitch_18
    const-string p0, "SSID_TEMP_DISABLED"

    return-object p0

    :pswitch_1b
    const-string p0, "EAP_FAILURE"

    return-object p0

    :pswitch_1e
    const-string p0, "EAP_METHOD_SELECTED"

    return-object p0

    :pswitch_21
    const-string p0, "ASSOCIATED"

    return-object p0

    :pswitch_24
    const-string p0, "ASSOCIATING"

    return-object p0

    :pswitch_27
    const-string p0, "DISCONNECTED"

    return-object p0

    :pswitch_2a
    const-string p0, "CONNECTED"

    return-object p0

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public addRoamScanChannels(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1277
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "addRoamScanChannels"

    .line 1279
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1280
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1282
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->addRoamScanChannels(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1283
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public addRoamScanChannelsLegacy(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1287
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "addRoamScanChannelsLegacy"

    .line 1289
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1290
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1292
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->addRoamScanChannelsLegacy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1293
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public addRoamScanFrequencies(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1297
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "addRoamScanFrequencies"

    .line 1299
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1300
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1302
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->addRoamScanFrequencies(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1303
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public addRoamScanFrequenciesLegacy(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1307
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "addRoamScanFrequenciesLegacy"

    .line 1309
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1310
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1312
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->addRoamScanFrequenciesLegacy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1313
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public changePktlogSize(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1464
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "changePktlogSize"

    .line 1466
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1467
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1469
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->changePktlogSize(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1470
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public clearTwtStatistics(Ljava/lang/String;I)Z
    .registers 6

    .line 1561
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "clearTwtStatistics"

    .line 1563
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1564
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1566
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->clearTwtStatistics(Ljava/lang/String;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1567
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method protected createStaIfaceHalMockable()Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 798
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 800
    :try_start_3
    invoke-static {}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->serviceDeclared()Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "SupplicantStaIfaceHal"

    const-string v2, "Initializing SemSupplicantStaIfaceHal using AIDL implementation."

    .line 801
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3, p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;Landroid/os/Handler;)V

    monitor-exit v0

    return-object v1

    .line 803
    :cond_1d
    invoke-static {}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->serviceDeclared()Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "SupplicantStaIfaceHal"

    const-string v2, "Initializing SemSupplicantStaIfaceHal using HIDL implementation."

    .line 804
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3, p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;Landroid/os/Handler;)V

    monitor-exit v0

    return-object v1

    :cond_37
    const-string p0, "SupplicantStaIfaceHal"

    const-string v1, "No HIDL or AIDL service available for SemSupplicantStaIfaceHal."

    .line 807
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 808
    monitor-exit v0

    return-object p0

    :catchall_41
    move-exception p0

    .line 809
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public deregisterDeathHandler()Z
    .registers 4

    .line 831
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "deregisterDeathHandler"

    .line 833
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 834
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 836
    :cond_f
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->deregisterDeathHandler()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 837
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public doLeakyApActiveDetection(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 1604
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "doLeakyApActiveDetection"

    .line 1606
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1607
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, -0x1

    .line 1608
    monitor-exit v0

    return p0

    .line 1610
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->doLeakyApActiveDetection(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1611
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public eLnaControl(Ljava/lang/String;I)I
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1676
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "eLnaControl"

    .line 1678
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1679
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, -0x1

    .line 1680
    monitor-exit v0

    return p0

    .line 1682
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->eLnaControl(Ljava/lang/String;I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1683
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public eLnaStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1692
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "eLnaStatus"

    .line 1694
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1695
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, 0x0

    .line 1696
    monitor-exit v0

    return-object p0

    .line 1698
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->eLnaStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    .line 1699
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public enableBeaconInterval(Ljava/lang/String;Z)Z
    .registers 6

    .line 934
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "enableBeaconInterval"

    .line 936
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 937
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 939
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->enableBeaconInterval(Ljava/lang/String;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 940
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public enablePktlogFilter(Ljava/lang/String;Z)Z
    .registers 6

    .line 1474
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "enablePktlogFilter"

    .line 1476
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1477
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1479
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->enablePktlogFilter(Ljava/lang/String;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1480
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method enableVerboseLogging(Z)V
    .registers 3

    .line 765
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 766
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-eqz p0, :cond_a

    .line 767
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->enableVerboseLogging(Z)V

    .line 769
    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public endLeakyApPassiveDetection(Ljava/lang/String;)I
    .registers 5

    .line 1626
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "endLeakyApPassiveDetection"

    .line 1628
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1629
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, -0x1

    .line 1630
    monitor-exit v0

    return p0

    .line 1632
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->endLeakyApPassiveDetection(Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1633
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getChannelUtilization(Ljava/lang/String;)I
    .registers 5

    .line 1006
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getChannelUtilization"

    .line 1008
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1009
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, -0x1

    .line 1010
    monitor-exit v0

    return p0

    .line 1012
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getChannelUtilization(Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1013
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getCountryRev(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1132
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getCountryRev"

    .line 1134
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1135
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, 0x0

    .line 1136
    monitor-exit v0

    return-object p0

    .line 1138
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getCountryRev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    .line 1139
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getCurrentBss(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/BssInfo;
    .registers 5

    .line 923
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getCurrentBss"

    .line 925
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 926
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, 0x0

    .line 927
    monitor-exit v0

    return-object p0

    .line 929
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getCurrentBss(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/BssInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    .line 930
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getLqcmReport(Ljava/lang/String;)I
    .registers 5

    .line 995
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getLqcmReport"

    .line 997
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 998
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, -0x1

    .line 999
    monitor-exit v0

    return p0

    .line 1001
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getLqcmReport(Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1002
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getMaxTdlsSession(Ljava/lang/String;)I
    .registers 5

    .line 1754
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getMaxTdlsSession"

    .line 1756
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1757
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, -0x1

    .line 1758
    monitor-exit v0

    return p0

    .line 1760
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getMaxTdlsSession(Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1761
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getNumOfTdlsSession(Ljava/lang/String;)I
    .registers 5

    .line 1765
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getNumOfTdlsSession"

    .line 1767
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1768
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, -0x1

    .line 1769
    monitor-exit v0

    return p0

    .line 1771
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getNumOfTdlsSession(Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1772
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getRoamBand(Ljava/lang/String;)I
    .registers 5

    .line 1111
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getRoamBand"

    .line 1113
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1114
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, -0x1

    .line 1115
    monitor-exit v0

    return p0

    .line 1117
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getRoamBand(Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1118
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getRoamDelta(Ljava/lang/String;)I
    .registers 5

    .line 1069
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getRoamDelta"

    .line 1071
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1072
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, -0x1

    .line 1073
    monitor-exit v0

    return p0

    .line 1075
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getRoamDelta(Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1076
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getRoamScanChannels(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1184
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getRoamScanChannels"

    .line 1186
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1187
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, 0x0

    .line 1188
    monitor-exit v0

    return-object p0

    .line 1190
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getRoamScanChannels(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    .line 1191
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getRoamScanChannelsLegacy(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1195
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getRoamScanChannelsLegacy"

    .line 1197
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1198
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, 0x0

    .line 1199
    monitor-exit v0

    return-object p0

    .line 1201
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getRoamScanChannelsLegacy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    .line 1202
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getRoamScanControl(Ljava/lang/String;)I
    .registers 5

    .line 1163
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getRoamScanControl"

    .line 1165
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1166
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, -0x1

    .line 1167
    monitor-exit v0

    return p0

    .line 1169
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getRoamScanControl(Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1170
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getRoamScanPeriod(Ljava/lang/String;)I
    .registers 5

    .line 1090
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getRoamScanPeriod"

    .line 1092
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1093
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, -0x1

    .line 1094
    monitor-exit v0

    return p0

    .line 1096
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getRoamScanPeriod(Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1097
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getRoamTrigger(Ljava/lang/String;)I
    .registers 5

    .line 1037
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getRoamTrigger"

    .line 1039
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1040
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, -0x1

    .line 1041
    monitor-exit v0

    return p0

    .line 1043
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getRoamTrigger(Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1044
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getRoamTriggerLegacy(Ljava/lang/String;)I
    .registers 5

    .line 1048
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getRoamTriggerLegacy"

    .line 1050
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1051
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, -0x1

    .line 1052
    monitor-exit v0

    return p0

    .line 1054
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getRoamTriggerLegacy(Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1055
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getSnr(Ljava/lang/String;)I
    .registers 5

    .line 984
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getSnr"

    .line 986
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 987
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, -0x1

    .line 988
    monitor-exit v0

    return p0

    .line 990
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getSnr(Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 991
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getTidMode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1337
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getTidMode"

    .line 1339
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1340
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, 0x0

    .line 1341
    monitor-exit v0

    return-object p0

    .line 1343
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getTidMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    .line 1344
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getWifiStaInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1776
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getWifiStaInfo"

    .line 1778
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1779
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, 0x0

    .line 1780
    monitor-exit v0

    return-object p0

    .line 1782
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getWifiStaInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    .line 1783
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getWifiUwbCoexMode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1713
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getWifiUwbCoexMode"

    .line 1715
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1716
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, 0x0

    .line 1717
    monitor-exit v0

    return-object p0

    .line 1719
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getWifiUwbCoexMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    .line 1720
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public initialize()Z
    .registers 4

    .line 779
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 780
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    const/4 v1, 0x0

    if-nez p0, :cond_11

    const-string p0, "SupplicantStaIfaceHal"

    const-string v2, "Internal ISupplicantStaIfaceHal instance does not exist."

    .line 781
    invoke-static {p0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    monitor-exit v0

    return v1

    .line 784
    :cond_11
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->initialize()Z

    move-result p0

    if-nez p0, :cond_20

    const-string p0, "SupplicantStaIfaceHal"

    const-string v2, "Failed to init ISupplicantStaIfaceHal, stopping startup."

    .line 785
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    monitor-exit v0

    return v1

    :cond_20
    const/4 p0, 0x1

    .line 788
    monitor-exit v0

    return p0

    :catchall_23
    move-exception p0

    .line 789
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public isAvailableTdls(Ljava/lang/String;)Z
    .registers 5

    .line 1724
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "isAvailableTdls"

    .line 1726
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1727
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1729
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->isAvailableTdls(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1730
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public isInitializationComplete()Z
    .registers 4

    .line 857
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "isInitializationComplete"

    .line 859
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 860
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 862
    :cond_f
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->isInitializationComplete()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 863
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public isInitializationStarted()Z
    .registers 4

    .line 844
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "isInitializationStarted"

    .line 846
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 847
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 849
    :cond_f
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->isInitializationStarted()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 850
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public isNCHOModeEnabled(Ljava/lang/String;)Z
    .registers 5

    .line 1143
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "isNCHOModeEnabled"

    .line 1145
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1146
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1148
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->isNCHOModeEnabled(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1149
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public isWesModeEnabled(Ljava/lang/String;)Z
    .registers 5

    .line 1216
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "isWesModeEnabled"

    .line 1218
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1219
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1221
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->isWesModeEnabled(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1222
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public isWiderBandwidthTdlsSupported(Ljava/lang/String;)Z
    .registers 5

    .line 1734
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "isWiderBandwidthTdlsSupported"

    .line 1736
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1737
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1739
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->isWiderBandwidthTdlsSupported(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1740
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public probeStaIfaceNames()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 872
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "probeStaIfaceNames"

    .line 874
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_12

    .line 875
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 876
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 878
    :cond_12
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->probeStaIfaceNames()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_18
    move-exception p0

    .line 879
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public queryScheduledPmStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1593
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "queryScheduledPmStatus"

    .line 1595
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1596
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, 0x0

    .line 1597
    monitor-exit v0

    return-object p0

    .line 1599
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->queryScheduledPmStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    .line 1600
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public queryTwtCapabilities(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1528
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "queryTwtCapabilities"

    .line 1530
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1531
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, 0x0

    .line 1532
    monitor-exit v0

    return-object p0

    .line 1534
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->queryTwtCapabilities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    .line 1535
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public queryTwtStatistics(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .line 1550
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "queryTwtStatistics"

    .line 1552
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1553
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, 0x0

    .line 1554
    monitor-exit v0

    return-object p0

    .line 1556
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->queryTwtStatistics(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    .line 1557
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public queryTwtStatus(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .line 1539
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "queryTwtStatus"

    .line 1541
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1542
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, 0x0

    .line 1543
    monitor-exit v0

    return-object p0

    .line 1545
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->queryTwtStatus(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    .line 1546
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public registerDeathHandler(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$SupplicantDeathEventHandler;)Z
    .registers 5
    .param p1    # Lcom/samsung/android/server/wifi/halclient/SemWifiNative$SupplicantDeathEventHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 817
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "registerDeathHandler"

    .line 819
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 820
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 822
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->registerDeathHandler(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$SupplicantDeathEventHandler;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 823
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public removeAllNetworks(Ljava/lang/String;)Z
    .registers 5

    .line 903
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "removeAllNetworks"

    .line 905
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 906
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 908
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->removeAllNetworks(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 909
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public removePktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1454
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "removePktlogFilter"

    .line 1456
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1457
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1459
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->removePktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1460
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public resumeTwt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 1517
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "resumeTwt"

    .line 1519
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1520
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, -0x1

    .line 1521
    monitor-exit v0

    return p0

    .line 1523
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->resumeTwt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1524
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public saveDebugDump(Ljava/lang/String;)Z
    .registers 5

    .line 944
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "saveDebugDump"

    .line 946
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 947
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 949
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->saveDebugDump(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 950
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public sendLegacyReassociationFrequencyRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1257
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "sendLegacyReassociationFrequencyRequestFrame"

    .line 1259
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1260
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1262
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->sendLegacyReassociationFrequencyRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1263
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public sendLegacyReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1247
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "sendLegacyReassociationRequestFrame"

    .line 1249
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1250
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1252
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->sendLegacyReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1253
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public sendReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1267
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "sendReassociationRequestFrame"

    .line 1269
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1270
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1272
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->sendReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1273
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public sendVendorSpecificActionFrame(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1237
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "sendVendorSpecificActionFrame"

    .line 1239
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1240
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1242
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->sendVendorSpecificActionFrame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1243
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setAdpsEnabled(Ljava/lang/String;Z)Z
    .registers 6

    .line 1434
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setAdpsEnabled"

    .line 1436
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1437
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1439
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setAdpsEnabled(Ljava/lang/String;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1440
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setAffinityBooster(Ljava/lang/String;I)Z
    .registers 6

    .line 954
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setAffinityBooster"

    .line 956
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 957
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 959
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setAffinityBooster(Ljava/lang/String;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 960
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setCountryRev(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1122
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setCountryRev"

    .line 1124
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1125
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1127
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setCountryRev(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1128
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setDelayedWakeupType(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1659
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setDelayedWakeupType"

    .line 1661
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1662
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, 0x0

    .line 1663
    monitor-exit v0

    return p0

    .line 1665
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setDelayedWakeupType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1666
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setDtimInSuspendMode(Ljava/lang/String;I)Z
    .registers 6

    .line 974
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setDtimInSuspendMode"

    .line 976
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 977
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 979
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setDtimInSuspendMode(Ljava/lang/String;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 980
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setFccChannelBackoffEnabled(Ljava/lang/String;I)Z
    .registers 6

    .line 913
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setFccChannelBackoffEnabled"

    .line 915
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 916
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 918
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setFccChannelBackoffEnabled(Ljava/lang/String;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 919
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setIndoorChannels(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 7

    .line 1317
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setIndoorChannels"

    .line 1319
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1320
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1322
    :cond_f
    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setIndoorChannels(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1323
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setInterwokingEnabled(Ljava/lang/String;Z)Z
    .registers 6

    .line 1399
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setInterwokingEnabled"

    .line 1401
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1402
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1404
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setInterwokingEnabled(Ljava/lang/String;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1405
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setLatencyCritical(Ljava/lang/String;I)Z
    .registers 6

    .line 1348
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setLatencyCritical"

    .line 1350
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1351
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1353
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setLatencyCritical(Ljava/lang/String;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1354
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setLeakyApGracePeriod(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 1637
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setLeakyApGracePeriod"

    .line 1639
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1640
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, -0x1

    .line 1641
    monitor-exit v0

    return p0

    .line 1643
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setLeakyApGracePeriod(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1644
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setMaxDtimInSuspendMode(Ljava/lang/String;Z)Z
    .registers 6

    .line 964
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setMaxDtimInSuspendMode"

    .line 966
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 967
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 969
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setMaxDtimInSuspendMode(Ljava/lang/String;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 970
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setNCHOModeEnabled(Ljava/lang/String;Z)Z
    .registers 6

    .line 1153
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setNCHOModeEnabled"

    .line 1155
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1156
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1158
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setNCHOModeEnabled(Ljava/lang/String;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1159
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setPktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1444
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setPktlogFilter"

    .line 1446
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1447
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1449
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setPktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1450
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setRoamBand(Ljava/lang/String;I)Z
    .registers 6

    .line 1101
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setRoamBand"

    .line 1103
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1104
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1106
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setRoamBand(Ljava/lang/String;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1107
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setRoamDelta(Ljava/lang/String;I)Z
    .registers 6

    .line 1059
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setRoamDelta"

    .line 1061
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1062
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1064
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setRoamDelta(Ljava/lang/String;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1065
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setRoamScanChannels(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1206
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setRoamScanChannels"

    .line 1208
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1209
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1211
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setRoamScanChannels(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1212
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setRoamScanControl(Ljava/lang/String;I)Z
    .registers 6

    .line 1174
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setRoamScanControl"

    .line 1176
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1177
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1179
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setRoamScanControl(Ljava/lang/String;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1180
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setRoamScanPeriod(Ljava/lang/String;I)Z
    .registers 6

    .line 1080
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setRoamScanPeriod"

    .line 1082
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1083
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1085
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setRoamScanPeriod(Ljava/lang/String;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1086
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setRoamTrigger(Ljava/lang/String;I)Z
    .registers 6

    .line 1017
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setRoamTrigger"

    .line 1019
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1020
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1022
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setRoamTrigger(Ljava/lang/String;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1023
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setRoamTriggerLegacy(Ljava/lang/String;I)Z
    .registers 6

    .line 1027
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setRoamTriggerLegacy"

    .line 1029
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1030
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1032
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setRoamTriggerLegacy(Ljava/lang/String;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1033
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setScanDwell(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1358
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setScanDwell"

    .line 1360
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_e

    .line 1361
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 1362
    monitor-exit v0

    return-void

    .line 1364
    :cond_e
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setScanDwell(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public setTdlsEnabled(Ljava/lang/String;Z)Z
    .registers 6

    .line 1744
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setTdlsEnabled"

    .line 1746
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1747
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1749
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setTdlsEnabled(Ljava/lang/String;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1750
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setTidMode(Ljava/lang/String;III)Z
    .registers 8

    .line 1327
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setTidMode"

    .line 1329
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1330
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1332
    :cond_f
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setTidMode(Ljava/lang/String;III)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1333
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setTxPowerBackOff(Ljava/lang/String;I)Z
    .registers 6

    .line 1369
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setTxPowerBackOff"

    .line 1371
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1372
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1374
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setTxPowerBackOff(Ljava/lang/String;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1375
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setTxPowerBackOff(Ljava/lang/String;II)Z
    .registers 7

    .line 1379
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setTxPowerBackOff"

    .line 1381
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1382
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1384
    :cond_f
    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setTxPowerBackOff(Ljava/lang/String;II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1385
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setWesModeEnabled(Ljava/lang/String;Z)Z
    .registers 6

    .line 1226
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setWesModeEnabled"

    .line 1228
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1229
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1231
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setWesModeEnabled(Ljava/lang/String;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1232
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setWifiCustomBackoff(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1787
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setWifiCustomBackoff"

    .line 1789
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1790
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, 0x0

    .line 1791
    monitor-exit v0

    return p0

    .line 1793
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setWifiCustomBackoff(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1794
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setWifiToCellular(Ljava/lang/String;IIIIII)Z
    .registers 19

    move-object v0, p0

    .line 1423
    iget-object v1, v0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    const-string v2, "setWifiToCellular"

    .line 1425
    iget-object v3, v0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v3, :cond_10

    .line 1426
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    return v0

    :cond_10
    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    .line 1428
    invoke-interface/range {v3 .. v10}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setWifiToCellular(Ljava/lang/String;IIIIII)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_20
    move-exception v0

    .line 1430
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public setWifiUwbCoexEnabled(Ljava/lang/String;ZIIII)Z
    .registers 16

    .line 1703
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setWifiUwbCoexEnabled"

    .line 1705
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1706
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_f
    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    .line 1708
    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setWifiUwbCoexEnabled(Ljava/lang/String;ZIIII)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1b
    move-exception p0

    .line 1709
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public setWsecInfo(Ljava/lang/String;Z)Z
    .registers 6

    .line 1389
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setWsecInfo"

    .line 1391
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1392
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1394
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setWsecInfo(Ljava/lang/String;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1395
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setupIface(Ljava/lang/String;)Z
    .registers 5

    .line 883
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setupIface"

    .line 885
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 886
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 888
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setupIface(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 889
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setupScheduledPm(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 1571
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setupScheduledPm"

    .line 1573
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1574
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, -0x1

    .line 1575
    monitor-exit v0

    return p0

    .line 1577
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setupScheduledPm(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1578
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setupTwt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 1484
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setupTwt"

    .line 1486
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1487
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, -0x1

    .line 1488
    monitor-exit v0

    return p0

    .line 1490
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setupTwt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1491
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public startLeakyApPassiveDetection(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 1615
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "startLeakyApPassiveDetection"

    .line 1617
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1618
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, -0x1

    .line 1619
    monitor-exit v0

    return p0

    .line 1621
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->startLeakyApPassiveDetection(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1622
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public suspendTwt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 1506
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "suspendTwt"

    .line 1508
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1509
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, -0x1

    .line 1510
    monitor-exit v0

    return p0

    .line 1512
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->suspendTwt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1513
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public teardownIface(Ljava/lang/String;)Z
    .registers 5

    .line 893
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "teardownIface"

    .line 895
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 896
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 898
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->teardownIface(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 899
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public teardownScheduledPm(Ljava/lang/String;)I
    .registers 5

    .line 1582
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "teardownScheduledPm"

    .line 1584
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1585
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, -0x1

    .line 1586
    monitor-exit v0

    return p0

    .line 1588
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->teardownScheduledPm(Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1589
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public teardownTwt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 1495
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "teardownTwt"

    .line 1497
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1498
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, -0x1

    .line 1499
    monitor-exit v0

    return p0

    .line 1501
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->teardownTwt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1502
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public triggerDelayedWakeup(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1648
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "triggerDelayedWakeup"

    .line 1650
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1651
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    const/4 p0, 0x0

    .line 1652
    monitor-exit v0

    return p0

    .line 1654
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->triggerDelayedWakeup(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1655
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public updateCellularCapabilities(Ljava/lang/String;BBB[B)Z
    .registers 14

    .line 1410
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "updateCellularCapabilities"

    .line 1412
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_f

    .line 1413
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_f
    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 1415
    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->updateCellularCapabilities(Ljava/lang/String;BBB[B)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    .line 1416
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method
