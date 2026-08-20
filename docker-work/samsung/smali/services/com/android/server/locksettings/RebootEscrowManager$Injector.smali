.class public Lcom/android/server/locksettings/RebootEscrowManager$Injector;
.super Ljava/lang/Object;
.source "RebootEscrowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/RebootEscrowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

.field public mRebootEscrowProvider:Lcom/android/server/locksettings/RebootEscrowProviderInterface;

.field public final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;)V
    .registers 3

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    .line 210
    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 211
    new-instance p1, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    invoke-direct {p1}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    return-void
.end method


# virtual methods
.method public clearRebootEscrowProvider()V
    .registers 2

    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mRebootEscrowProvider:Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    return-void
.end method

.method public final createRebootEscrowProvider()Lcom/android/server/locksettings/RebootEscrowProviderInterface;
    .registers 3

    .line 216
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    move-result v0

    const-string v1, "RebootEscrowManager"

    if-eqz v0, :cond_17

    const-string v0, "Using server based resume on reboot"

    .line 217
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;

    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-direct {v0, v1, p0}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;)V

    goto :goto_21

    :cond_17
    const-string p0, "Using HAL based resume on reboot"

    .line 220
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;

    invoke-direct {v0}, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;-><init>()V

    .line 224
    :goto_21
    invoke-interface {v0}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->hasRebootEscrowSupport()Z

    move-result p0

    if-eqz p0, :cond_28

    return-object v0

    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method

.method public createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mRebootEscrowProvider:Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    if-nez v0, :cond_a

    .line 282
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProvider()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mRebootEscrowProvider:Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    .line 285
    :cond_a
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mRebootEscrowProvider:Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    return-object p0
.end method

.method public getBootCount()I
    .registers 3

    .line 302
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "boot_count"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 267
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentTimeMillis()J
    .registers 3

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEventLog()Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;
    .registers 1

    .line 330
    new-instance p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    invoke-direct {p0}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;-><init>()V

    return-object p0
.end method

.method public getKeyStoreManager()Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;
    .registers 1

    .line 275
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    return-object p0
.end method

.method public getLoadEscrowDataRetryIntervalSeconds()I
    .registers 3

    const-string/jumbo p0, "ota"

    const-string/jumbo v0, "load_escrow_data_retry_interval_seconds"

    const/16 v1, 0x1e

    .line 316
    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLoadEscrowDataRetryLimit()I
    .registers 3

    const-string/jumbo p0, "ota"

    const-string/jumbo v0, "load_escrow_data_retry_count"

    const/4 v1, 0x3

    .line 311
    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getRebootEscrowProvider()Lcom/android/server/locksettings/RebootEscrowProviderInterface;
    .registers 1

    .line 294
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mRebootEscrowProvider:Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    return-object p0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .registers 2

    .line 271
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    return-object p0
.end method

.method public getVbmetaDigest(Z)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_a

    const-string/jumbo p0, "ota.other.vbmeta_digest"

    .line 334
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    :cond_a
    const-string/jumbo p0, "ro.boot.vbmeta.digest"

    .line 335
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_11
    return-object p0
.end method

.method public getWakeLock()Landroid/os/PowerManager$WakeLock;
    .registers 3

    .line 289
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string v1, "RebootEscrowManager"

    .line 290
    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    return-object p0
.end method

.method public isNetworkConnected()Z
    .registers 3

    .line 250
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    .line 251
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_e

    return v0

    .line 256
    :cond_e
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    .line 258
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_29

    const/16 v1, 0xc

    .line 260
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_29

    const/16 v1, 0x10

    .line 262
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_29

    const/4 v0, 0x1

    :cond_29
    return v0
.end method

.method public post(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 3

    .line 231
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;J)V
    .registers 5

    .line 235
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public reportMetric(ZIIIIII)V
    .registers 16

    const/16 v0, 0xee

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 324
    invoke-static/range {v0 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZIIIIII)V

    return-void
.end method

.method public serverBasedResumeOnReboot()Z
    .registers 3

    .line 240
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.reboot_escrow"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    const-string/jumbo v0, "ota"

    const-string/jumbo v1, "server_based_ror_enabled"

    .line 245
    invoke-static {v0, v1, p0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
