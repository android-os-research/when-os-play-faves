.class public Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;
.super Ljava/lang/Object;
.source "SemWifiP2pMonitor.java"


# static fields
.field public static final AP_STA_CONNECTED_EVENT:I = 0x2402a

.field public static final AP_STA_DISCONNECTED_EVENT:I = 0x24029

.field public static final AP_STA_POSSIBLE_PSK_MISMATCH:I = 0x2402b

.field private static final BASE:I = 0x24000

.field public static final P2P_BIGDATA_CONNECTION_RESULT_EVENT:I = 0x24051

.field public static final P2P_BIGDATA_DISCONNECT_EVENT:I = 0x24050

.field public static final P2P_BIGDATA_GROUP_OWNER_INTENT_EVENT:I = 0x24052

.field public static final P2P_DEVICE_FOUND_EVENT:I = 0x24015

.field public static final P2P_DEVICE_LOST_EVENT:I = 0x24016

.field public static final P2P_GOPS_EVENT:I = 0x24031

.field public static final P2P_GO_NEGOTIATION_REQUEST_EVENT:I = 0x24017

.field public static final P2P_GROUP_REMOVED_EVENT:I = 0x2401e

.field public static final P2P_GROUP_STARTED_EVENT:I = 0x2401d

.field public static final P2P_P2P_SCONNECT_PROBE_REQ_EVENT:I = 0x24046

.field public static final P2P_PERSISTENT_PSK_FAIL_EVENT:I = 0x24028

.field public static final P2P_PROV_DISC_FAILURE_EVENT:I = 0x24027

.field public static final P2P_PROV_DISC_PBC_REQ_EVENT:I = 0x24021

.field public static final P2P_PROV_DISC_USER_REJECT_EVENT:I = 0x24047

.field public static final P2P_WPS_SKIP_EVENT:I = 0x24032

.field public static final SUP_CONNECTION_EVENT:I = 0x24001

.field public static final SUP_DISCONNECTION_EVENT:I = 0x24002

.field private static final TAG:Ljava/lang/String; = "SemWifiP2pMonitor"


# instance fields
.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Landroid/os/Handler;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mMonitoringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mVerboseLoggingEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->mVerboseLoggingEnabled:Z

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->mHandlerMap:Ljava/util/Map;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->mMonitoringMap:Ljava/util/Map;

    return-void
.end method

.method private isMonitoring(Ljava/lang/String;)Z
    .registers 2

    .line 116
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->mMonitoringMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 120
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private sendMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .registers 3

    .line 197
    invoke-virtual {p2, p1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 163
    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    .line 167
    invoke-static {v0, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;Landroid/os/Message;)V
    .registers 6

    .line 171
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    const-string v1, "SemWifiP2pMonitor"

    if-eqz p1, :cond_56

    if-eqz v0, :cond_56

    .line 173
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->isMonitoring(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 174
    iget p1, p2, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_6e

    .line 176
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_22
    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_22

    .line 178
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_22

    .line 183
    :cond_38
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->mVerboseLoggingEnabled:Z

    if-eqz p0, :cond_6e

    .line 184
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dropping event because ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is stopped"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 188
    :cond_56
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->mVerboseLoggingEnabled:Z

    if-eqz p0, :cond_6e

    .line 189
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "There\'s no matching iface "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_6e
    :goto_6e
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    return-void
.end method


# virtual methods
.method public broadcastBigDataEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "P2P-BIGDATA-DISCONNECT"

    .line 312
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x24050

    .line 313
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2c

    :cond_f
    const-string v0, "P2P-BIGDATA-CONNECTION-RESULT"

    .line 314
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const v0, 0x24051

    .line 315
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2c

    :cond_1e
    const-string v0, "P2P-BIGDATA-GROUP-OWNER-INTENT"

    .line 316
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const v0, 0x24052

    .line 317
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public broadcastGoPsEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const v0, 0x24031

    .line 308
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastP2pApStaConnected(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 4

    const v0, 0x2402a

    .line 295
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastP2pApStaDisconnected(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 4

    const v0, 0x24029

    .line 304
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastP2pDeviceFound(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 4

    if-eqz p2, :cond_8

    const v0, 0x24015

    .line 229
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public broadcastP2pDeviceLost(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 4

    if-eqz p2, :cond_8

    const v0, 0x24016

    .line 241
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public broadcastP2pEventNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "AP-STA-POSSIBLE-PSK-MISMATCH"

    .line 327
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const p2, 0x2402b

    .line 328
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1d

    :cond_f
    const-string v0, "P2P-PERSISTENT-PSK-FAIL"

    .line 331
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1d

    const p2, 0x24028

    .line 332
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public broadcastP2pGoNegotiationRequest(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .registers 4

    if-eqz p2, :cond_8

    const v0, 0x24017

    .line 253
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public broadcastP2pGroupRemoved(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 4

    if-eqz p2, :cond_8

    const v0, 0x2401e

    .line 277
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public broadcastP2pGroupStarted(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 4

    if-eqz p2, :cond_8

    const v0, 0x2401d

    .line 265
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public broadcastP2pProvisionDiscoveryFailure(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_a

    const p2, 0x24047

    .line 283
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;I)V

    goto :goto_10

    :cond_a
    const p2, 0x24027

    .line 285
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;I)V

    :goto_10
    return-void
.end method

.method public broadcastSconnectEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const v0, 0x24046

    .line 322
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastSupplicantConnectionEvent(Ljava/lang/String;)V
    .registers 3

    const v0, 0x24001

    .line 208
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;I)V

    return-void
.end method

.method public broadcastSupplicantDisconnectionEvent(Ljava/lang/String;)V
    .registers 3

    const v0, 0x24002

    .line 218
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;I)V

    return-void
.end method

.method public enableVerboseLogging(Z)V
    .registers 2

    .line 91
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method public declared-synchronized registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V
    .registers 6

    monitor-enter p0

    .line 100
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_15

    .line 102
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_15
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_25

    .line 107
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 108
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    :cond_25
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 111
    monitor-exit p0

    return-void

    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMonitoring(Ljava/lang/String;Z)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 132
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->mMonitoringMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized startMonitoring(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 141
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->setMonitoring(Ljava/lang/String;Z)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastSupplicantConnectionEvent(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    .line 143
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopMonitoring(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 151
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_20

    const-string v0, "SemWifiP2pMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopMonitoring("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v0, 0x1

    .line 152
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->setMonitoring(Ljava/lang/String;Z)V

    .line 153
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastSupplicantDisconnectionEvent(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->setMonitoring(Ljava/lang/String;Z)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 155
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
