.class abstract Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackHidlImpl;
.super Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantCallback$Stub;
.source "SemSupplicantCallbackHidlImpl.java"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/Object;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V
    .registers 4

    .line 28
    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantCallback$Stub;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackHidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    .line 30
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackHidlImpl;->mLock:Ljava/lang/Object;

    .line 31
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackHidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    return-void
.end method


# virtual methods
.method public onInterfaceCreated(Ljava/lang/String;)V
    .registers 5

    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackHidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v2, "onInterfaceCreated"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    .line 38
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackHidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastInterfaceCreatedEvent(Ljava/lang/String;)V

    .line 39
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public onInterfaceRemoved(Ljava/lang/String;)V
    .registers 5

    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackHidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v2, "onInterfaceRemoved"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    .line 46
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackHidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastInterfaceRemovedEvent(Ljava/lang/String;)V

    .line 47
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public onTerminating()V
    .registers 4

    .line 52
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackHidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v2, "onTerminating"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logCallback(Ljava/lang/String;)V

    .line 54
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackHidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastTerminatingEvent()V

    .line 55
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method
