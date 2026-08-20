.class public Lcom/android/server/oemlock/OemLockService;
.super Lcom/android/server/SystemService;
.source "OemLockService.java"


# static fields
.field public static final FLASH_LOCK_PROP:Ljava/lang/String; = "ro.boot.flash.locked"

.field public static final FLASH_LOCK_UNLOCKED:Ljava/lang/String; = "0"

.field public static final TAG:Ljava/lang/String; = "OemLock"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mOemLock:Lcom/android/server/oemlock/OemLock;

.field public final mService:Landroid/os/IBinder;

.field public final mUserRestrictionsListener:Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmOemLock(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$menforceManageCarrierOemUnlockPermission(Lcom/android/server/oemlock/OemLockService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/oemlock/OemLockService;->enforceManageCarrierOemUnlockPermission()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceManageUserOemUnlockPermission(Lcom/android/server/oemlock/OemLockService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/oemlock/OemLockService;->enforceManageUserOemUnlockPermission()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceOemUnlockReadPermission(Lcom/android/server/oemlock/OemLockService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/oemlock/OemLockService;->enforceOemUnlockReadPermission()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceUserIsAdmin(Lcom/android/server/oemlock/OemLockService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/oemlock/OemLockService;->enforceUserIsAdmin()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misOemUnlockAllowedByAdmin(Lcom/android/server/oemlock/OemLockService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/oemlock/OemLockService;->isOemUnlockAllowedByAdmin()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetPersistentDataBlockOemUnlockAllowedBit(Lcom/android/server/oemlock/OemLockService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/oemlock/OemLockService;->setPersistentDataBlockOemUnlockAllowedBit(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 73
    invoke-static {p1}, Lcom/android/server/oemlock/OemLockService;->getOemLock(Landroid/content/Context;)Lcom/android/server/oemlock/OemLock;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/oemlock/OemLockService;-><init>(Landroid/content/Context;Lcom/android/server/oemlock/OemLock;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/oemlock/OemLock;)V
    .registers 5

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance v0, Lcom/android/server/oemlock/OemLockService$1;

    invoke-direct {v0, p0}, Lcom/android/server/oemlock/OemLockService$1;-><init>(Lcom/android/server/oemlock/OemLockService;)V

    iput-object v0, p0, Lcom/android/server/oemlock/OemLockService;->mUserRestrictionsListener:Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;

    .line 114
    new-instance v1, Lcom/android/server/oemlock/OemLockService$2;

    invoke-direct {v1, p0}, Lcom/android/server/oemlock/OemLockService$2;-><init>(Lcom/android/server/oemlock/OemLockService;)V

    iput-object v1, p0, Lcom/android/server/oemlock/OemLockService;->mService:Landroid/os/IBinder;

    .line 78
    iput-object p1, p0, Lcom/android/server/oemlock/OemLockService;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;

    .line 81
    const-class p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerInternal;

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerInternal;->addUserRestrictionsListener(Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;)V

    return-void
.end method

.method public static getOemLock(Landroid/content/Context;)Lcom/android/server/oemlock/OemLock;
    .registers 4

    .line 62
    invoke-static {}, Lcom/android/server/oemlock/VendorLock;->getOemLockHalService()Landroid/hardware/oemlock/V1_0/IOemLock;

    move-result-object v0

    const-string v1, "OemLock"

    if-eqz v0, :cond_13

    const-string v2, "Using vendor lock via the HAL"

    .line 64
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v1, Lcom/android/server/oemlock/VendorLock;

    invoke-direct {v1, p0, v0}, Lcom/android/server/oemlock/VendorLock;-><init>(Landroid/content/Context;Landroid/hardware/oemlock/V1_0/IOemLock;)V

    return-object v1

    :cond_13
    const-string v0, "Using persistent data block based lock"

    .line 67
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Lcom/android/server/oemlock/PersistentDataBlockLock;

    invoke-direct {v0, p0}, Lcom/android/server/oemlock/PersistentDataBlockLock;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static isHalPresent()Z
    .registers 1

    .line 57
    invoke-static {}, Lcom/android/server/oemlock/VendorLock;->getOemLockHalService()Landroid/hardware/oemlock/V1_0/IOemLock;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public final enforceManageCarrierOemUnlockPermission()V
    .registers 3

    .line 248
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MANAGE_CARRIER_OEM_UNLOCK_STATE"

    const-string v1, "Can\'t manage OEM unlock allowed by carrier"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceManageUserOemUnlockPermission()V
    .registers 3

    .line 254
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MANAGE_USER_OEM_UNLOCK_STATE"

    const-string v1, "Can\'t manage OEM unlock allowed by user"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceOemUnlockReadPermission()V
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_OEM_UNLOCK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.OEM_UNLOCK_STATE"

    .line 262
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v1, :cond_16

    goto :goto_1e

    .line 264
    :cond_16
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Can\'t access OEM unlock state. Requires READ_OEM_UNLOCK_STATE or OEM_UNLOCK_STATE permission."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    :goto_1e
    return-void
.end method

.method public final enforceUserIsAdmin()V
    .registers 4

    .line 270
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 271
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 273
    :try_start_8
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_20

    if-eqz p0, :cond_18

    .line 277
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 274
    :cond_18
    :try_start_18
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Must be an admin user"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p0

    .line 277
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 278
    throw p0
.end method

.method public final isOemUnlockAllowedByAdmin()Z
    .registers 3

    .line 243
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string/jumbo v1, "no_factory_reset"

    .line 244
    invoke-virtual {p0, v1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onStart()V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService;->mService:Landroid/os/IBinder;

    const-string/jumbo v1, "oem_lock"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final setPersistentDataBlockOemUnlockAllowedBit(Z)V
    .registers 4

    .line 233
    const-class v0, Lcom/android/server/PersistentDataBlockManagerInternal;

    .line 234
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PersistentDataBlockManagerInternal;

    if-eqz v0, :cond_29

    .line 236
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;

    instance-of p0, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;

    if-nez p0, :cond_29

    .line 237
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update OEM Unlock bit in pst partition to "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "OemLock"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-interface {v0, p1}, Lcom/android/server/PersistentDataBlockManagerInternal;->forceOemUnlockEnabled(Z)V

    :cond_29
    return-void
.end method
