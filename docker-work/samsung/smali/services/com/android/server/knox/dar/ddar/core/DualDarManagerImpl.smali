.class public Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;
.super Ljava/lang/Object;
.source "DualDarManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$LicenseExpiryAlarmListener;,
        Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;
    }
.end annotation


# static fields
.field public static final DATA_LOCK_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "LicenseNotificationHandler.LicenseLockForUser"

.field public static final DUALDAR_AGENT:Ljava/lang/String; = "KNOXCORE_PROXY_AGENT"

.field public static final DUALDAR_CONTROLLER_SERVICE:Ljava/lang/String; = "DUALDAR_CONTROLLER_SERVICE"

.field public static final TAG:Ljava/lang/String; = "DualDarManagerImpl"

.field public static delayDataLockOnceForDeviceOwner:Z = false


# instance fields
.field public final hardResetTask:Ljava/lang/Runnable;

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public final mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

.field public mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

.field public final mLicenseExpiryAlarmListenerForUser:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$LicenseExpiryAlarmListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;


# direct methods
.method public static synthetic $r8$lambda$1iurvkE8k9791XWv39CGWcOKmgg(Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$9VVaXNAQHpygxkHmzFrgiCo_yys(Ljava/lang/String;Lcom/android/server/knox/dar/DarManagerService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->lambda$updateBlockedClearablePackages$1(Ljava/lang/String;Lcom/android/server/knox/dar/DarManagerService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rqIO7TRQv8LWU5ZNGQnED1tk_RM(Ljava/lang/String;Lcom/android/server/knox/dar/DarManagerService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->lambda$updateBlockedClearablePackages$0(Ljava/lang/String;Lcom/android/server/knox/dar/DarManagerService;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 55
    new-instance v0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;-><init>(Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mLicenseExpiryAlarmListenerForUser:Landroid/util/ArrayMap;

    .line 169
    new-instance v0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->hardResetTask:Ljava/lang/Runnable;

    .line 60
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    .line 61
    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mContext:Landroid/content/Context;

    .line 62
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 63
    new-instance v1, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 64
    new-instance v0, Lcom/samsung/android/knox/dar/VirtualLockUtils;

    invoke-direct {v0}, Lcom/samsung/android/knox/dar/VirtualLockUtils;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;

    .line 65
    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 67
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "DualDarManagerImpl"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$new$2()V
    .registers 2

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->handleDataLock(I)V

    return-void
.end method

.method public static synthetic lambda$updateBlockedClearablePackages$0(Ljava/lang/String;Lcom/android/server/knox/dar/DarManagerService;)V
    .registers 3

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p1, v0, p0}, Lcom/android/server/knox/dar/DarManagerService;->addBlockedClearablePackages(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$updateBlockedClearablePackages$1(Ljava/lang/String;Lcom/android/server/knox/dar/DarManagerService;)V
    .registers 3

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p1, v0, p0}, Lcom/android/server/knox/dar/DarManagerService;->addBlockedClearablePackages(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancelDataLock(I)V
    .registers 5

    .line 208
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "DualDarManagerImpl"

    const-string v2, "Cancel data lock"

    .line 212
    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 213
    sput-boolean p1, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->delayDataLockOnceForDeviceOwner:Z

    .line 214
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->hardResetTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getDarManagerService()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/knox/dar/DarManagerService;",
            ">;"
        }
    .end annotation

    const-string p0, "dar"

    .line 135
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/dar/DarManagerService;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final getPowerManager()Landroid/os/PowerManager;
    .registers 2

    .line 200
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    return-object p0
.end method

.method public final getTelecomManager()Landroid/telecom/TelecomManager;
    .registers 2

    .line 204
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    return-object p0
.end method

.method public handleClearDualDarTrialExpiryTimer(Landroid/os/Bundle;)Z
    .registers 7

    const-string/jumbo v0, "user_id"

    .line 252
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 253
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mLicenseExpiryAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$LicenseExpiryAlarmListener;

    const/4 v1, 0x0

    if-nez v0, :cond_17

    return v1

    .line 258
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleRemoveLicenseExpiryTimer cancelled alarm successful for user : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "DualDarManagerImpl"

    invoke-static {v4, v2, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 259
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mLicenseExpiryAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->binderClearCallingIdentity()J

    move-result-wide v2

    .line 262
    :try_start_3f
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_44} :catch_4d
    .catchall {:try_start_3f .. :try_end_44} :catchall_4b

    .line 267
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->binderRestoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_4b
    move-exception p1

    goto :goto_57

    :catch_4d
    move-exception p1

    .line 264
    :try_start_4e
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_4b

    .line 267
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->binderRestoreCallingIdentity(J)V

    return v1

    :goto_57
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->binderRestoreCallingIdentity(J)V

    .line 268
    throw p1
.end method

.method public handleDataLock(I)V
    .registers 9

    .line 175
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 179
    :cond_7
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 181
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->getPowerManager()Landroid/os/PowerManager;

    move-result-object p1

    .line 182
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_61

    const-wide/32 v3, 0xea60

    const/4 v5, 0x0

    const-string v6, "DualDarManagerImpl"

    if-eqz v2, :cond_32

    .line 183
    :try_start_1d
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_32

    const-string p1, "User is on the phone now. Check in 60 seconds again."

    new-array v2, v5, [Ljava/lang/Object;

    .line 184
    invoke-static {v6, p1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 185
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->hardResetTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5b

    :cond_32
    if-eqz p1, :cond_50

    .line 186
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-eqz v2, :cond_50

    sget-boolean v2, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->delayDataLockOnceForDeviceOwner:Z

    if-nez v2, :cond_50

    const-string p1, "User is interactive now. Delay once for 60 seconds."

    new-array v2, v5, [Ljava/lang/Object;

    .line 187
    invoke-static {v6, p1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p1, 0x1

    .line 188
    sput-boolean p1, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->delayDataLockOnceForDeviceOwner:Z

    .line 189
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->hardResetTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5b

    :cond_50
    const-string v2, "Perform hard reboot when datalock in DO case"

    new-array v3, v5, [Ljava/lang/Object;

    .line 191
    invoke-static {v6, v2, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v2, 0x0

    .line 192
    invoke-virtual {p1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_1d .. :try_end_5b} :catchall_61

    .line 195
    :goto_5b
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->binderRestoreCallingIdentity(J)V

    return-void

    :catchall_61
    move-exception p1

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->binderRestoreCallingIdentity(J)V

    .line 196
    throw p1
.end method

.method public handleDeviceOwnerProvisioning(Landroid/os/Bundle;)Z
    .registers 4

    const-string v0, "DualDarManagerImpl"

    const-string/jumbo v1, "handleDeviceOwnerProvisioning"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->setDualDarDoProperty()V

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->updateBlockedClearablePackages(Landroid/os/Bundle;)V

    .line 103
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->handleDeviceOwnerProvisioning()Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, v0, v0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->setDeviceUnlockedForUser(IZ)V

    .line 108
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->setInnerAuthUserId()V

    return p1
.end method

.method public handleEnsureDataUnlocked()Z
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "DualDarManagerImpl"

    const-string/jumbo v0, "handleEnsureDataUnlocked - Not able to ensure while device lockscreen is set"

    .line 149
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 151
    :cond_12
    sget-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DEVICE_AUTH_SUCCESS:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    invoke-static {v1, v0}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->processEvent(ILcom/samsung/android/knox/dar/ddar/fsm/Event;)Z

    .line 152
    invoke-virtual {p0, v1, v1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->setDeviceUnlockedForUser(IZ)V

    const/4 v1, 0x1

    :goto_1b
    return v1
.end method

.method public handleScheduleDualDarTrialExpiryTimer(Landroid/os/Bundle;)Z
    .registers 8

    const-string/jumbo v0, "user_id"

    .line 218
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "TRIAL_SCHEDULED_TIME"

    .line 219
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "IS_CREATION"

    .line 220
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string v3, "DualDarManagerImpl"

    const/4 v4, 0x0

    if-eqz p1, :cond_25

    new-array p1, v4, [Ljava/lang/Object;

    const-string/jumbo v4, "setting alarm for license expiry, isCreation = true"

    .line 223
    invoke-static {v3, v4, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 224
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->scheduleDualDarTrialExpiryTimer(IJ)Z

    move-result p0

    return p0

    .line 226
    :cond_25
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mLicenseExpiryAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$LicenseExpiryAlarmListener;

    if-nez p1, :cond_40

    new-array p1, v4, [Ljava/lang/Object;

    const-string/jumbo v4, "setting alarm for license expiry, isCreation = false"

    .line 228
    invoke-static {v3, v4, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 229
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->scheduleDualDarTrialExpiryTimer(IJ)Z

    move-result p0

    return p0

    :cond_40
    return v4
.end method

.method public isInnerLayerUnlocked()Z
    .registers 3

    .line 164
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getDualDARLockstate()Z

    move-result p0

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isInnerLayerUnlocked - result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v1, p0, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualDarManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final scheduleDualDarTrialExpiryTimer(IJ)Z
    .registers 13

    .line 236
    new-instance v5, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$LicenseExpiryAlarmListener;

    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v5, v0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$LicenseExpiryAlarmListener;-><init>(Landroid/content/Context;I)V

    .line 237
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mLicenseExpiryAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->binderClearCallingIdentity()J

    move-result-wide v7

    .line 240
    :try_start_16
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    const-string v4, "LicenseNotificationHandler.LicenseLockForUser"

    const/4 v6, 0x0

    move-wide v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_20} :catch_29
    .catchall {:try_start_16 .. :try_end_20} :catchall_27

    const/4 p1, 0x1

    .line 246
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    invoke-virtual {p0, v7, v8}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->binderRestoreCallingIdentity(J)V

    return p1

    :catchall_27
    move-exception p1

    goto :goto_34

    :catch_29
    move-exception p1

    .line 244
    :try_start_2a
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_27

    .line 246
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    invoke-virtual {p0, v7, v8}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->binderRestoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_34
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    invoke-virtual {p0, v7, v8}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->binderRestoreCallingIdentity(J)V

    .line 247
    throw p1
.end method

.method public final setDeviceUnlockedForUser(IZ)V
    .registers 4

    .line 159
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "trust"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/trust/TrustManager;

    .line 160
    invoke-virtual {p0, p1, p2}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    return-void
.end method

.method public final setDualDarDoProperty()V
    .registers 2

    const-string/jumbo p0, "persist.sys.dualdar.do"

    const-string v0, "1"

    .line 114
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setInnerAuthUserId()V
    .registers 4

    .line 139
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;

    invoke-virtual {v0}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->reserveUserIdForSystem()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_15

    .line 141
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->setMainUserId(II)V

    .line 142
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->setInnerAuthUserId(II)V

    :cond_15
    return-void
.end method

.method public final updateBlockedClearablePackages(Landroid/os/Bundle;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "DUAL_DAR_ADMIN_PACKAGE"

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dualdar-config-client-package"

    .line 123
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 125
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->getDarManagerService()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 128
    :cond_21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 129
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->getDarManagerService()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_33
    return-void
.end method
