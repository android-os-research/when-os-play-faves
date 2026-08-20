.class public Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;
.super Ljava/lang/Object;
.source "SemSupplicantStaNetworkHalAidlImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemSupplicantStaNetworkHal"


# instance fields
.field private final mISehSupplicantStaNetwork:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork;

.field private final mLock:Ljava/lang/Object;

.field private mVerboseLoggingEnabled:Z


# direct methods
.method public constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork;Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V
    .registers 6

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 39
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;->mISehSupplicantStaNetwork:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork;

    return-void
.end method

.method private checkISehSupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    .registers 5

    .line 63
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;->mISehSupplicantStaNetwork:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork;

    if-nez v1, :cond_25

    const-string p0, "SemSupplicantStaNetworkHal"

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ISehSupplicantStaNetwork is null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 66
    monitor-exit v0

    return p0

    .line 68
    :cond_25
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;->mVerboseLoggingEnabled:Z

    if-eqz p0, :cond_44

    const-string p0, "SemSupplicantStaNetworkHal"

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISehSupplicantStaNetwork."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " succeeded"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    const/4 p0, 0x1

    .line 71
    monitor-exit v0

    return p0

    :catchall_47
    move-exception p0

    .line 73
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw p0
.end method

.method private handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .registers 6

    .line 54
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    const-string v0, "SemSupplicantStaNetworkHal"

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISehSupplicantStaNetwork."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed with exception"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p1
.end method


# virtual methods
.method enableVerboseLogging(Z)V
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_3
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;->mVerboseLoggingEnabled:Z

    .line 50
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getCurrentBss()Lcom/samsung/android/server/wifi/halclient/BssInfo;
    .registers 5

    .line 81
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getCurrentBss"

    .line 83
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;->checkISehSupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 84
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_23

    return-object v2

    .line 86
    :cond_e
    :try_start_e
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/BssInfo;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;->mISehSupplicantStaNetwork:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork;

    invoke-interface {v3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork;->getBss()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/BssParam;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/samsung/android/server/wifi/halclient/BssInfo;-><init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/BssParam;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_19} :catch_1b
    .catchall {:try_start_e .. :try_end_19} :catchall_23

    :try_start_19
    monitor-exit v0

    return-object v1

    :catch_1b
    move-exception v1

    const-string v3, "getCurrentBss"

    .line 88
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 90
    monitor-exit v0

    return-object v2

    :catchall_23
    move-exception p0

    .line 91
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_23

    throw p0
.end method
