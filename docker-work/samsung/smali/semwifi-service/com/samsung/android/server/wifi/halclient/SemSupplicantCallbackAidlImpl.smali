.class public Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackAidlImpl;
.super Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantCallback$Stub;
.source "SemSupplicantCallbackAidlImpl.java"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;Ljava/lang/Object;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V
    .registers 4

    .line 29
    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantCallback$Stub;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 31
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 32
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "5b8bcab6b43177dffdec5873e84205b04757cc9d"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public onInterfaceCreated(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string v2, "onInterfaceCreated"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 39
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastInterfaceCreatedEvent(Ljava/lang/String;)V

    .line 40
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string v2, "onInterfaceRemoved"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 47
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastInterfaceRemovedEvent(Ljava/lang/String;)V

    .line 48
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method
