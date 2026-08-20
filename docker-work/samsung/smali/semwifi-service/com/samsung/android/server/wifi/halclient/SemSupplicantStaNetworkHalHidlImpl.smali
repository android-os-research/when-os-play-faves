.class Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;
.super Ljava/lang/Object;
.source "SemSupplicantStaNetworkHalHidlImpl.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemSupplicantStaNetworkHal"


# instance fields
.field private final mISehSupplicantStaNetwork:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork;

.field private final mLock:Ljava/lang/Object;

.field private mVerboseLoggingEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$ZHT_VGYZcWQW9rmReStnJxtyTd8(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork$BssParam;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;->lambda$getCurrentBss$0(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork$BssParam;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork;Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V
    .registers 6

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;->mLock:Ljava/lang/Object;

    .line 52
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;->mISehSupplicantStaNetwork:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork;

    return-void
.end method

.method private checkISehSupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    .registers 5

    .line 94
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;->mISehSupplicantStaNetwork:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork;

    if-nez p0, :cond_25

    const-string p0, "SemSupplicantStaNetworkHal"

    .line 96
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

    .line 97
    monitor-exit v0

    return p0

    :cond_25
    const/4 p0, 0x1

    .line 99
    monitor-exit v0

    return p0

    :catchall_28
    move-exception p0

    .line 100
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method private checkSehStatusAndLogFailure(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Ljava/lang/String;)Z
    .registers 6

    .line 77
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_3
    iget v1, p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->code:I

    if-eqz v1, :cond_28

    const-string p0, "SemSupplicantStaNetworkHal"

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISehSupplicantStaNetwork."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 80
    monitor-exit v0

    return p0

    .line 82
    :cond_28
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;->mVerboseLoggingEnabled:Z

    if-eqz p0, :cond_47

    const-string p0, "SemSupplicantStaNetworkHal"

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ISehSupplicantStaNetwork."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " succeeded"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    const/4 p0, 0x1

    .line 85
    monitor-exit v0

    return p0

    :catchall_4a
    move-exception p0

    .line 87
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method private handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .registers 6

    .line 67
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    const-string v0, "SemSupplicantStaNetworkHal"

    .line 68
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

    .line 69
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p1
.end method

.method private synthetic lambda$getCurrentBss$0(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork$BssParam;)V
    .registers 5

    const-string v0, "getCurrentBss"

    .line 116
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;->checkSehStatusAndLogFailure(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 117
    new-instance p0, Lcom/samsung/android/server/wifi/halclient/BssInfo;

    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/halclient/BssInfo;-><init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork$BssParam;)V

    iput-object p0, p1, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    :cond_f
    return-void
.end method


# virtual methods
.method enableVerboseLogging(Z)V
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_3
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;->mVerboseLoggingEnabled:Z

    .line 63
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
    .registers 7

    .line 108
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getCurrentBss"

    .line 110
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;->checkISehSupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_47

    return-object v2

    .line 112
    :cond_e
    :try_start_e
    new-instance v1, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;-><init>()V

    .line 113
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;->mISehSupplicantStaNetwork:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork;

    new-instance v4, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;)V

    .line 114
    invoke-interface {v3, v4}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork;->getBss(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork$getBssCallback;)V

    .line 120
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;->mVerboseLoggingEnabled:Z

    if-eqz v3, :cond_39

    const-string v3, "SemSupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentBss: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_39
    iget-object v1, v1, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/server/wifi/halclient/BssInfo;
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_3d} :catch_3f
    .catchall {:try_start_e .. :try_end_3d} :catchall_47

    :try_start_3d
    monitor-exit v0

    return-object v1

    :catch_3f
    move-exception v1

    const-string v3, "getCurrentBss"

    .line 123
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 125
    monitor-exit v0

    return-object v2

    :catchall_47
    move-exception p0

    .line 126
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_47

    throw p0
.end method
