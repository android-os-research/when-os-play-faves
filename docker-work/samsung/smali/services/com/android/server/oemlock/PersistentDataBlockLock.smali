.class public Lcom/android/server/oemlock/PersistentDataBlockLock;
.super Lcom/android/server/oemlock/OemLock;
.source "PersistentDataBlockLock.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "OemLock"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Lcom/android/server/oemlock/OemLock;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final disallowUnlockIfNotUnlocked()V
    .registers 2

    .line 100
    iget-object p0, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "persistent_data_block"

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez p0, :cond_15

    const-string p0, "OemLock"

    const-string v0, "PersistentDataBlock is not supported on this device"

    .line 103
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 106
    :cond_15
    invoke-virtual {p0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getFlashLockState()I

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->setOemUnlockEnabled(Z)V

    :cond_1f
    return-void
.end method

.method public getLockName()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public isOemUnlockAllowedByCarrier()Z
    .registers 3

    .line 66
    iget-object p0, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string/jumbo v1, "no_oem_unlock"

    .line 67
    invoke-virtual {p0, v1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isOemUnlockAllowedByDevice()Z
    .registers 2

    .line 85
    iget-object p0, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "persistent_data_block"

    .line 86
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez p0, :cond_16

    const-string p0, "OemLock"

    const-string v0, "PersistentDataBlock is not supported on this device"

    .line 88
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 91
    :cond_16
    invoke-virtual {p0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result p0

    return p0
.end method

.method public setOemUnlockAllowedByCarrier(Z[B)V
    .registers 6

    if-eqz p2, :cond_9

    const-string p2, "OemLock"

    const-string v0, "Signature provided but is not being used"

    .line 52
    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_9
    iget-object p2, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    xor-int/lit8 v0, p1, 0x1

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string/jumbo v2, "no_oem_unlock"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    if-nez p1, :cond_1e

    .line 60
    invoke-virtual {p0}, Lcom/android/server/oemlock/PersistentDataBlockLock;->disallowUnlockIfNotUnlocked()V

    :cond_1e
    return-void
.end method

.method public setOemUnlockAllowedByDevice(Z)V
    .registers 3

    .line 74
    iget-object p0, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "persistent_data_block"

    .line 75
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez p0, :cond_15

    const-string p0, "OemLock"

    const-string p1, "PersistentDataBlock is not supported on this device"

    .line 77
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 80
    :cond_15
    invoke-virtual {p0, p1}, Landroid/service/persistentdata/PersistentDataBlockManager;->setOemUnlockEnabled(Z)V

    return-void
.end method
