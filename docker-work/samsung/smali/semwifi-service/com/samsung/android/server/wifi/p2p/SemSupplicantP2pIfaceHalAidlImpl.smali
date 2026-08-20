.class public Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;
.super Ljava/lang/Object;
.source "SemSupplicantP2pIfaceHalAidlImpl.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;


# static fields
.field private static final HAL_INSTANCE_NAME:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemSupplicantP2pIfaceHalAidlImpl"

.field private static sVerboseLoggingEnabled:Z


# instance fields
.field private mISehSupplicantExt:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;

.field private mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

.field private mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

.field private mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

.field private mInitializationStarted:Z

.field private final mLock:Ljava/lang/Object;

.field private final mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

.field private final mSupplicantDeathRecipient:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public static synthetic $r8$lambda$gwp5orXjFkHpvyUf5wXLK2F5an0(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->lambda$new$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->HAL_INSTANCE_NAME:Ljava/lang/String;

    const/4 v0, 0x1

    .line 46
    sput-boolean v0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->sVerboseLoggingEnabled:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;)V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mInitializationStarted:Z

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    .line 53
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantExt:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;

    .line 54
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    .line 55
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    .line 59
    new-instance v0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mSupplicantDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 68
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    return-void
.end method

.method private checkSehSupplicantAndLogFailure(Ljava/lang/String;)Z
    .registers 5

    .line 454
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantExt:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;

    if-nez p0, :cond_25

    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ISehSupplicantExt is null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 457
    monitor-exit v0

    return p0

    :cond_25
    const/4 p0, 0x1

    .line 459
    monitor-exit v0

    return p0

    :catchall_28
    move-exception p0

    .line 460
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method private checkSehSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    .registers 5

    .line 480
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    if-nez p0, :cond_25

    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ISupplicantP2pIface is null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 483
    monitor-exit v0

    return p0

    :cond_25
    const/4 p0, 0x1

    .line 485
    monitor-exit v0

    return p0

    :catchall_28
    move-exception p0

    .line 486
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method private checkSupplicantAndLogFailure(Ljava/lang/String;)Z
    .registers 5

    .line 441
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 442
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    if-nez p0, :cond_25

    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ISupplicant is null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 444
    monitor-exit v0

    return p0

    :cond_25
    const/4 p0, 0x1

    .line 446
    monitor-exit v0

    return p0

    :catchall_28
    move-exception p0

    .line 447
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method private checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    .registers 5

    .line 467
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 468
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    if-nez p0, :cond_25

    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ISupplicantP2pIface is null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 470
    monitor-exit v0

    return p0

    :cond_25
    const/4 p0, 0x1

    .line 472
    monitor-exit v0

    return p0

    :catchall_28
    move-exception p0

    .line 473
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public static enableVerboseLogging(Z)V
    .registers 1

    .line 75
    sput-boolean p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->sVerboseLoggingEnabled:Z

    .line 76
    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->enableVerboseLogging(Z)V

    return-void
.end method

.method private getIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;
    .registers 6

    .line 182
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getIface"

    .line 184
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->checkSupplicantAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_e

    .line 185
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_21

    return-object v3

    .line 188
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->getP2pInterface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    move-result-object p0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_14} :catch_16
    .catchall {:try_start_e .. :try_end_14} :catchall_21

    :try_start_14
    monitor-exit v0

    return-object p0

    :catch_16
    move-exception p1

    .line 192
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    goto :goto_1f

    :catch_1b
    move-exception p1

    .line 190
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 194
    :goto_1f
    monitor-exit v0

    return-object v3

    :catchall_21
    move-exception p0

    .line 195
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_21

    throw p0
.end method

.method private getSehIface(Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;
    .registers 6

    .line 199
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getSehIface"

    .line 201
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->checkSehSupplicantAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_e

    .line 202
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_2a

    return-object v3

    .line 205
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantExt:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;

    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;->getP2pInterface(Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    move-result-object p0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_24
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_14} :catch_1f
    .catch Ljava/util/NoSuchElementException; {:try_start_e .. :try_end_14} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_14} :catch_16
    .catchall {:try_start_e .. :try_end_14} :catchall_2a

    :try_start_14
    monitor-exit v0

    return-object p0

    :catch_16
    move-exception p0

    const-string p1, "SemSupplicantP2pIfaceHalAidlImpl"

    const-string v1, "Encountered exception at getSehIface: "

    .line 211
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    :catch_1f
    move-exception p1

    .line 209
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    goto :goto_28

    :catch_24
    move-exception p1

    .line 207
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 213
    :goto_28
    monitor-exit v0

    return-object v3

    :catchall_2a
    move-exception p0

    .line 214
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method private handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .registers 6

    .line 490
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->supplicantServiceDiedHandler()V

    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISupplicantP2pIface."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed with remote exception: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method private handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .registers 6

    .line 498
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->sehSupplicantServiceDiedHandler()V

    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISehSupplicantP2pIface."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed with remote exception: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 502
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method private handleSehServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V
    .registers 6

    .line 513
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    const-string v0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISehSupplicantStaIface."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed with service specific exception: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p1
.end method

.method private handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V
    .registers 6

    .line 506
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    const-string v0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISupplicantP2pIface."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed with service specific exception: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p1
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    const-string v0, "SemSupplicantP2pIfaceHalAidlImpl"

    const-string v1, "ISupplicant/ISupplicantP2pIface died"

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_a
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->supplicantServiceDiedHandler()V

    .line 64
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw p0
.end method

.method private sehSupplicantServiceDiedHandler()V
    .registers 3

    .line 247
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 248
    :try_start_4
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantExt:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;

    .line 249
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    .line 250
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public static serviceDeclared()Z
    .registers 1

    .line 382
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 385
    :cond_8
    sget-object v0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->HAL_INSTANCE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setupP2pIface(Ljava/lang/String;)Z
    .registers 6

    .line 132
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 135
    monitor-exit v0

    return v2

    .line 137
    :cond_a
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->getIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    move-result-object v1

    if-nez v1, :cond_28

    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add iface "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    monitor-exit v0

    return v2

    .line 142
    :cond_28
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    .line 144
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    if-eqz v1, :cond_53

    .line 145
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    invoke-direct {v1, p1, v3}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;)V

    .line 147
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;)Z

    move-result p0

    if-nez p0, :cond_53

    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to register callback for iface "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    monitor-exit v0

    return v2

    :cond_53
    const/4 p0, 0x1

    .line 152
    monitor-exit v0

    return p0

    :catchall_56
    move-exception p0

    .line 153
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_56

    throw p0
.end method

.method private setupSehP2pIface(Ljava/lang/String;)Z
    .registers 6

    .line 157
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 160
    monitor-exit v0

    return v2

    .line 162
    :cond_a
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->getSehIface(Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    move-result-object v1

    if-nez v1, :cond_28

    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get seh iface "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    monitor-exit v0

    return v2

    .line 167
    :cond_28
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    .line 169
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    if-eqz v1, :cond_53

    .line 170
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackAidlImpl;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    invoke-direct {v1, p1, v3}, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackAidlImpl;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;)V

    .line 172
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->registerSehCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback;)Z

    move-result p0

    if-nez p0, :cond_53

    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to register seh callback for iface "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    monitor-exit v0

    return v2

    :cond_53
    const/4 p0, 0x1

    .line 177
    monitor-exit v0

    return p0

    :catchall_56
    move-exception p0

    .line 178
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_56

    throw p0
.end method

.method private supplicantServiceDiedHandler()V
    .registers 3

    .line 238
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 239
    :try_start_4
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    .line 240
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    const/4 v1, 0x0

    .line 241
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mInitializationStarted:Z

    .line 242
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->sehSupplicantServiceDiedHandler()V

    .line 243
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw p0
.end method


# virtual methods
.method public find(II)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .line 525
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getName"

    .line 527
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_e

    .line 528
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_21

    return-object v3

    .line 531
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->getName()Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_14} :catch_16
    .catchall {:try_start_e .. :try_end_14} :catchall_21

    :try_start_14
    monitor-exit v0

    return-object p0

    :catch_16
    move-exception v2

    .line 535
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    goto :goto_1f

    :catch_1b
    move-exception v2

    .line 533
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 537
    :goto_1f
    monitor-exit v0

    return-object v3

    :catchall_21
    move-exception p0

    .line 538
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_21

    throw p0
.end method

.method protected getSehSupplicantMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->getServiceBinderMockable()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 420
    invoke-interface {p0}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_1c

    const-string v1, "SemSupplicantP2pIfaceHalAidlImpl"

    const-string v2, "obtaining ISehSupplicantExt binder extension"

    .line 422
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-static {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a} :catch_2e
    .catchall {:try_start_3 .. :try_end_1a} :catchall_2c

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_2c

    return-object p0

    :cond_1c
    :try_start_1c
    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    const-string v1, "could not get extension of ISupplicant binder"

    .line 425
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    :cond_24
    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    const-string v1, "could not get ISupplicant binder"

    .line 428
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2b} :catch_2e
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2c

    goto :goto_45

    :catchall_2c
    move-exception p0

    goto :goto_48

    :catch_2e
    move-exception p0

    :try_start_2f
    const-string v1, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get ISehSupplicantExt service, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_45
    const/4 p0, 0x0

    .line 433
    monitor-exit v0

    return-object p0

    .line 434
    :goto_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_2f .. :try_end_49} :catchall_2c

    throw p0
.end method

.method protected getServiceBinderMockable()Landroid/os/IBinder;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 391
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    if-nez p0, :cond_a

    const/4 p0, 0x0

    .line 392
    monitor-exit v0

    return-object p0

    .line 394
    :cond_a
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_10
    move-exception p0

    .line 395
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method protected getSupplicantMockable()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 403
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 405
    :try_start_3
    sget-object v0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->HAL_INSTANCE_NAME:Ljava/lang/String;

    .line 406
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 405
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_11
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    :try_start_d
    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    goto :goto_2b

    :catch_11
    move-exception v0

    const-string v1, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get ISupplicant service, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 409
    monitor-exit p0

    return-object v0

    .line 411
    :goto_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_f

    throw v0
.end method

.method public initialize()Z
    .registers 6

    .line 85
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    const-string v1, "Service is already initialized."

    .line 88
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    monitor-exit v0

    return v2

    .line 91
    :cond_11
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mInitializationStarted:Z

    const/4 v1, 0x0

    .line 92
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->getSupplicantMockable()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    const/4 v3, 0x0

    if-nez v1, :cond_28

    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    const-string v1, "Unable to obtain ISupplicant binder."

    .line 95
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    monitor-exit v0

    return v3

    :cond_28
    const-string v1, "SemSupplicantP2pIfaceHalAidlImpl"

    const-string v4, "Obtained ISupplicant binder."

    .line 98
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->getSehSupplicantMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantExt:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;

    if-nez v1, :cond_3e

    const-string v1, "SemSupplicantP2pIfaceHalAidlImpl"

    const-string v4, "Unable to obtain ISehSupplicantExt binder"

    .line 102
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    const-string v1, "SemSupplicantP2pIfaceHalAidlImpl"

    const-string v4, "Connected to supplicant aidl service with extension"

    .line 104
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_5c

    .line 107
    :try_start_45
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->getServiceBinderMockable()Landroid/os/IBinder;

    move-result-object v1
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_49} :catch_54
    .catchall {:try_start_45 .. :try_end_49} :catchall_5c

    if-nez v1, :cond_4d

    .line 109
    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_5c

    return v3

    .line 111
    :cond_4d
    :try_start_4d
    iget-object v4, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mSupplicantDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v4, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_52} :catch_54
    .catchall {:try_start_4d .. :try_end_52} :catchall_5c

    .line 112
    :try_start_52
    monitor-exit v0

    return v2

    :catch_54
    move-exception v1

    const-string v2, "initialize"

    .line 114
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 115
    monitor-exit v0

    return v3

    :catchall_5c
    move-exception p0

    .line 117
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_52 .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public isInitializationComplete()Z
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 268
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public isInitializationStarted()Z
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_3
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mInitializationStarted:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 259
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public p2pRemoveClient(Ljava/lang/String;Z)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public p2pSet(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 283
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "p2pSet"

    .line 285
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->checkSehSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_e

    .line 286
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_21

    return v3

    .line 289
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    invoke-interface {v2, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_13} :catch_16
    .catchall {:try_start_e .. :try_end_13} :catchall_21

    const/4 p0, 0x1

    .line 290
    :try_start_14
    monitor-exit v0

    return p0

    :catch_16
    move-exception p1

    .line 294
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    goto :goto_1f

    :catch_1b
    move-exception p1

    .line 292
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 296
    :goto_1f
    monitor-exit v0

    return v3

    :catchall_21
    move-exception p0

    .line 297
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;)Z
    .registers 6

    .line 542
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "registerCallback"

    .line 544
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_e

    .line 545
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_21

    return v3

    .line 548
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_13} :catch_16
    .catchall {:try_start_e .. :try_end_13} :catchall_21

    const/4 p0, 0x1

    .line 549
    :try_start_14
    monitor-exit v0

    return p0

    :catch_16
    move-exception p1

    .line 553
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    goto :goto_1f

    :catch_1b
    move-exception p1

    .line 551
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 555
    :goto_1f
    monitor-exit v0

    return v3

    :catchall_21
    move-exception p0

    .line 556
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public registerSehCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback;)Z
    .registers 6

    .line 560
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "registerSehCallback"

    .line 562
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_e

    .line 563
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_21

    return v3

    .line 566
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;->registerCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_13} :catch_16
    .catchall {:try_start_e .. :try_end_13} :catchall_21

    const/4 p0, 0x1

    .line 567
    :try_start_14
    monitor-exit v0

    return p0

    :catch_16
    move-exception p1

    .line 571
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    goto :goto_1f

    :catch_1b
    move-exception p1

    .line 569
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 573
    :goto_1f
    monitor-exit v0

    return v3

    :catchall_21
    move-exception p0

    .line 574
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public setP2pIncBw(Ljava/lang/String;ZI)Z
    .registers 8

    .line 360
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setP2pIncBw"

    .line 362
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->checkSehSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_e

    .line 363
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_21

    return v3

    .line 366
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;->setNoaBandwidth(Ljava/lang/String;ZI)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_13} :catch_16
    .catchall {:try_start_e .. :try_end_13} :catchall_21

    const/4 p0, 0x1

    .line 367
    :try_start_14
    monitor-exit v0

    return p0

    :catch_16
    move-exception p1

    .line 371
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    goto :goto_1f

    :catch_1b
    move-exception p1

    .line 369
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 373
    :goto_1f
    monitor-exit v0

    return v3

    :catchall_21
    move-exception p0

    .line 374
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public setP2pNoa(Ljava/lang/String;ZI)Z
    .registers 8

    .line 341
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setP2pNoa"

    .line 343
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->checkSehSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_e

    .line 344
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_21

    return v3

    .line 347
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;->setNoa(Ljava/lang/String;ZI)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_13} :catch_16
    .catchall {:try_start_e .. :try_end_13} :catchall_21

    const/4 p0, 0x1

    .line 348
    :try_start_14
    monitor-exit v0

    return p0

    :catch_16
    move-exception p1

    .line 352
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    goto :goto_1f

    :catch_1b
    move-exception p1

    .line 350
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 354
    :goto_1f
    monitor-exit v0

    return v3

    :catchall_21
    move-exception p0

    .line 355
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public setupIface(Ljava/lang/String;)Z
    .registers 4

    .line 121
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->setupP2pIface(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "SemSupplicantP2pIfaceHalAidlImpl"

    if-nez v0, :cond_f

    const-string p0, "Failed to setup P2p iface"

    .line 122
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 125
    :cond_f
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->setupSehP2pIface(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1a

    const-string p0, "Failed to setup Seh P2p iface"

    .line 126
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 p0, 0x1

    return p0
.end method

.method public startP2pListenOffloading(IIII)Z
    .registers 9

    .line 302
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "startP2pListenOffloading"

    .line 304
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->checkSehSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_e

    .line 305
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_21

    return v3

    .line 308
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;->startListenOffloading(IIII)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_13} :catch_16
    .catchall {:try_start_e .. :try_end_13} :catchall_21

    const/4 p0, 0x1

    .line 310
    :try_start_14
    monitor-exit v0

    return p0

    :catch_16
    move-exception p1

    .line 314
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    goto :goto_1f

    :catch_1b
    move-exception p1

    .line 312
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 316
    :goto_1f
    monitor-exit v0

    return v3

    :catchall_21
    move-exception p0

    .line 317
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public stopP2pListenOffloading()Z
    .registers 5

    .line 322
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "stopP2pListenOffloading"

    .line 324
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->checkSehSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_e

    .line 325
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_21

    return v3

    .line 328
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    invoke-interface {v2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;->stopListenOffloading()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_13} :catch_16
    .catchall {:try_start_e .. :try_end_13} :catchall_21

    const/4 p0, 0x1

    .line 329
    :try_start_14
    monitor-exit v0

    return p0

    :catch_16
    move-exception v2

    .line 333
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    goto :goto_1f

    :catch_1b
    move-exception v2

    .line 331
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 335
    :goto_1f
    monitor-exit v0

    return v3

    :catchall_21
    move-exception p0

    .line 336
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public teardownIface(Ljava/lang/String;)Z
    .registers 4

    .line 224
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    const-string v0, "teardownIface"

    .line 226
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->checkSupplicantAndLogFailure(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 227
    monitor-exit p1

    return v1

    :cond_e
    const-string v0, "teardownIface"

    .line 228
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 229
    monitor-exit p1

    return v1

    :cond_18
    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    .line 232
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    const/4 p0, 0x1

    .line 233
    monitor-exit p1

    return p0

    :catchall_20
    move-exception p0

    .line 234
    monitor-exit p1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method
