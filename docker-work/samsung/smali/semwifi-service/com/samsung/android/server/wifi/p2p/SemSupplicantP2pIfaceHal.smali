.class public Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;
.super Ljava/lang/Object;
.source "SemSupplicantP2pIfaceHal.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemSupplicantP2pIfaceHal"

.field private static sVerboseLoggingEnabled:Z = true


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

.field private mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->createP2pIfaceHalMockable()Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    if-nez p1, :cond_1b

    const-string p0, "SemSupplicantP2pIfaceHal"

    const-string p1, "Failed to get internal ISemSupplicantP2pIfaceHal instance."

    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void
.end method

.method public static enableVerboseLogging(Z)V
    .registers 1

    .line 45
    sput-boolean p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->sVerboseLoggingEnabled:Z

    .line 46
    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->enableVerboseLogging(Z)V

    .line 47
    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->enableVerboseLogging(Z)V

    return-void
.end method

.method private handleNullHal(Ljava/lang/String;)Z
    .registers 3

    .line 257
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot call "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because HAL object is null."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemSupplicantP2pIfaceHal"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected createP2pIfaceHalMockable()Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_3
    invoke-static {}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->serviceDeclared()Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "SemSupplicantP2pIfaceHal"

    const-string v2, "Initializing SemSupplicantP2pIfaceHal using AIDL implementation."

    .line 82
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;)V

    monitor-exit v0

    return-object v1

    .line 85
    :cond_19
    invoke-static {}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->serviceDeclared()Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "SemSupplicantP2pIfaceHal"

    const-string v2, "Initializing SemSupplicantP2pIfaceHal using HIDL implementation."

    .line 86
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;)V

    monitor-exit v0

    return-object v1

    :cond_2f
    const-string p0, "SemSupplicantP2pIfaceHal"

    const-string v1, "No HIDL or AIDL service available for SemSupplicantP2pIfaceHal."

    .line 89
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 90
    monitor-exit v0

    return-object p0

    :catchall_39
    move-exception p0

    .line 91
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public find(II)Z
    .registers 6

    .line 163
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "find"

    .line 165
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    if-nez v2, :cond_f

    .line 166
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 168
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;->find(II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 169
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public initialize()Z
    .registers 4

    .line 57
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_3
    sget-boolean v1, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->sVerboseLoggingEnabled:Z

    if-eqz v1, :cond_e

    const-string v1, "SemSupplicantP2pIfaceHal"

    const-string v2, "Initializing SemSupplicantP2pIfaceHal."

    .line 59
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    const/4 v1, 0x0

    if-nez p0, :cond_1c

    const-string p0, "SemSupplicantP2pIfaceHal"

    const-string v2, "Internal ISemSupplicantP2pIfaceHal instance does not exist."

    .line 62
    invoke-static {p0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    monitor-exit v0

    return v1

    .line 65
    :cond_1c
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;->initialize()Z

    move-result p0

    if-nez p0, :cond_2b

    const-string p0, "SemSupplicantP2pIfaceHal"

    const-string v2, "Failed to init ISemSupplicantP2pIfaceHal, stopping startup."

    .line 66
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    monitor-exit v0

    return v1

    :cond_2b
    const/4 p0, 0x1

    .line 69
    monitor-exit v0

    return p0

    :catchall_2e
    move-exception p0

    .line 70
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public isInitializationComplete()Z
    .registers 4

    .line 144
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "isInitializationComplete"

    .line 146
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    if-nez v2, :cond_f

    .line 147
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 149
    :cond_f
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;->isInitializationComplete()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 150
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public isInitializationStarted()Z
    .registers 4

    .line 130
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "isInitializationStarted"

    .line 132
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    if-nez v2, :cond_f

    .line 133
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 135
    :cond_f
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;->isInitializationStarted()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 136
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public p2pRemoveClient(Ljava/lang/String;Z)Z
    .registers 6

    .line 180
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "p2pRemoveClient"

    .line 182
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    if-nez v2, :cond_f

    .line 183
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 185
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;->p2pRemoveClient(Ljava/lang/String;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 186
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public p2pSet(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 197
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "p2pSet"

    .line 199
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    if-nez v2, :cond_f

    .line 200
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 202
    :cond_f
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;->p2pSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 203
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setP2pIncBw(Ljava/lang/String;ZI)Z
    .registers 7

    .line 247
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setP2pIncBw"

    .line 249
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    if-nez v2, :cond_f

    .line 250
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 252
    :cond_f
    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;->setP2pIncBw(Ljava/lang/String;ZI)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 253
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setP2pNoa(Ljava/lang/String;ZI)Z
    .registers 7

    .line 237
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setP2pNoa"

    .line 239
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    if-nez v2, :cond_f

    .line 240
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 242
    :cond_f
    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;->setP2pNoa(Ljava/lang/String;ZI)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 243
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setupIface(Ljava/lang/String;)Z
    .registers 5

    .line 101
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setupIface"

    .line 103
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    if-nez v2, :cond_f

    .line 104
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 106
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;->setupIface(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 107
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public startP2pListenOffloading(IIII)Z
    .registers 8

    .line 212
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "startP2pListenOffloading"

    .line 214
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    if-nez v2, :cond_f

    .line 215
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 217
    :cond_f
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;->startP2pListenOffloading(IIII)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 218
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public stopP2pListenOffloading()Z
    .registers 4

    .line 227
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "stopP2pListenOffloading"

    .line 229
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    if-nez v2, :cond_f

    .line 230
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 232
    :cond_f
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;->stopP2pListenOffloading()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 233
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public teardownIface(Ljava/lang/String;)Z
    .registers 5

    .line 117
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "teardownIface"

    .line 119
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    if-nez v2, :cond_f

    .line 120
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 122
    :cond_f
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;->teardownIface(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 123
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method
