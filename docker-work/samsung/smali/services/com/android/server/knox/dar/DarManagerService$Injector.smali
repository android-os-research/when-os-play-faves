.class public Lcom/android/server/knox/dar/DarManagerService$Injector;
.super Ljava/lang/Object;
.source "DarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/DarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

.field public mDualDARPolicyService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

.field public mEscrowTokenStateChangeCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockSettingsService:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mContext:Landroid/content/Context;

    .line 193
    new-instance v0, Lcom/android/server/knox/dar/DarDatabaseCache;

    invoke-direct {v0, p1}, Lcom/android/server/knox/dar/DarDatabaseCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    .line 194
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 p1, 0x0

    .line 195
    iput-object p1, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mEscrowTokenStateChangeCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 196
    iput-object p1, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 197
    iput-object p1, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mDualDARPolicyService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    return-void
.end method


# virtual methods
.method public binderClearCallingIdentity()J
    .registers 3

    .line 201
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method public binderGetCallingPid()I
    .registers 1

    .line 217
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    return p0
.end method

.method public binderGetCallingUid()I
    .registers 1

    .line 213
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public binderRestoreCallingIdentity(J)V
    .registers 3

    .line 205
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    .registers 2

    .line 209
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V
    .registers 6

    .line 265
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->binderGetCallingPid()I

    move-result v0

    .line 266
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->binderGetCallingUid()I

    move-result p0

    const/16 v1, 0x1482

    if-eq p0, v1, :cond_49

    .line 267
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_13

    goto :goto_49

    .line 268
    :cond_13
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] with uid["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] trying to access methodName ["

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] in ["

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "DarManagerService"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] service"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_49
    :goto_49
    return-void
.end method

.method public getActivityManager()Landroid/app/ActivityManager;
    .registers 2

    .line 221
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 225
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDarDatabaseCache()Lcom/android/server/knox/dar/DarDatabaseCache;
    .registers 1

    .line 229
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    return-object p0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 2

    .line 233
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method public getDualDARPolicyService()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/samsung/android/knox/ddar/IDualDARPolicy;",
            ">;"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mDualDARPolicyService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    if-nez v0, :cond_10

    const-string v0, "DualDARPolicy"

    .line 288
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 287
    invoke-static {v0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mDualDARPolicyService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    .line 290
    :cond_10
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mDualDARPolicyService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getEscrowTokenStateChangeCallback()Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;
    .registers 1

    .line 277
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mEscrowTokenStateChangeCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    return-object p0
.end method

.method public getKeyProtector()Lcom/android/server/knox/dar/KeyProtector;
    .registers 1

    .line 237
    invoke-static {}, Lcom/android/server/knox/dar/KeyProtector;->getInstance()Lcom/android/server/knox/dar/KeyProtector;

    move-result-object p0

    return-object p0
.end method

.method public getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .registers 1

    .line 241
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method public getLockSettings()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/internal/widget/ILockSettings;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_11

    const-string/jumbo v0, "lock_settings"

    .line 247
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 246
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 249
    :cond_11
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .registers 1

    const-string/jumbo p0, "package"

    .line 253
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageManagerService;

    return-object p0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .registers 2

    .line 257
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    return-object p0
.end method

.method public getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .registers 1

    .line 261
    const-class p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method public setEscrowTokenStateChangeCallback(Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)V
    .registers 2

    .line 282
    iput-object p1, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mEscrowTokenStateChangeCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    return-void
.end method
