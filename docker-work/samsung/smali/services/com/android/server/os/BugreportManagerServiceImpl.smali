.class public Lcom/android/server/os/BugreportManagerServiceImpl;
.super Landroid/os/IDumpstate$Stub;
.source "BugreportManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;
    }
.end annotation


# static fields
.field public static final BUGREPORT_SERVICE:Ljava/lang/String; = "bugreportd"

.field public static final DEFAULT_BUGREPORT_SERVICE_TIMEOUT_MILLIS:J = 0x7530L

.field public static final TAG:Ljava/lang/String; = "BugreportManagerService"


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mBugreportWhitelistedPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/os/BugreportManagerServiceImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 63
    invoke-direct {p0}, Landroid/os/IDumpstate$Stub;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 65
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    .line 66
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 68
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getBugreportWhitelistedPackages()Landroid/util/ArraySet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportWhitelistedPackages:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public cancelBugreport(ILjava/lang/String;)V
    .registers 4
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.DUMP"
    .end annotation

    .line 100
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    const/4 v0, 0x1

    .line 101
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->enforcePermission(Ljava/lang/String;IZ)V

    .line 103
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->getDumpstateBinderServiceLocked()Landroid/os/IDumpstate;

    move-result-object p0

    if-nez p0, :cond_1a

    const-string p0, "BugreportManagerService"

    const-string p1, "cancelBugreport: Could not find native dumpstate service"

    .line 106
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_2f

    return-void

    .line 114
    :cond_1a
    :try_start_1a
    invoke-interface {p0, p1, p2}, Landroid/os/IDumpstate;->cancelBugreport(ILjava/lang/String;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2f

    goto :goto_26

    :catch_1e
    move-exception p0

    :try_start_1f
    const-string p1, "BugreportManagerService"

    const-string p2, "RemoteException in cancelBugreport"

    .line 116
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    const-string p0, "ctl.stop"

    const-string p1, "bugreportd"

    .line 121
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public final enforcePermission(Ljava/lang/String;IZ)V
    .registers 6

    .line 144
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p2, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportWhitelistedPackages:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    iget-object p2, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.DUMP"

    .line 149
    invoke-virtual {p2, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_18

    return-void

    .line 155
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p3, :cond_30

    .line 157
    :try_start_1e
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 158
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result p0
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_2b

    const/4 p2, 0x1

    if-ne p0, p2, :cond_30

    .line 163
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 164
    throw p0

    .line 163
    :cond_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 166
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not hold the DUMP permission or is not bugreport-whitelisted "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_45

    const-string p1, "and does not have carrier privileges "

    goto :goto_47

    :cond_45
    const-string p1, ""

    .line 169
    :goto_47
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "to request a bugreport"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BugreportManagerService"

    .line 171
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ensureUserCanTakeBugReport(I)V
    .registers 5

    .line 184
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_a

    :catch_9
    const/4 v0, 0x0

    .line 189
    :goto_a
    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    if-nez v0, :cond_1b

    const-string v2, "No current user. Only primary user is allowed to take bugreports."

    .line 191
    invoke-virtual {p0, v2}, Lcom/android/server/os/BugreportManagerServiceImpl;->logAndThrow(Ljava/lang/String;)V

    :cond_1b
    if-nez v1, :cond_22

    const-string v2, "No primary user. Only primary user is allowed to take bugreports."

    .line 194
    invoke-virtual {p0, v2}, Lcom/android/server/os/BugreportManagerServiceImpl;->logAndThrow(Ljava/lang/String;)V

    .line 196
    :cond_22
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    if-eq v1, v0, :cond_37

    const/4 v1, 0x2

    if-ne p1, v1, :cond_32

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->isCurrentUserAffiliated(I)Z

    move-result p1

    if-eqz p1, :cond_32

    return-void

    :cond_32
    const-string p1, "Current user not primary user. Only primary user is allowed to take bugreports."

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/server/os/BugreportManagerServiceImpl;->logAndThrow(Ljava/lang/String;)V

    :cond_37
    return-void
.end method

.method public final getDumpstateBinderServiceLocked()Landroid/os/IDumpstate;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string p0, "dumpstate"

    .line 273
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/os/IDumpstate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;

    move-result-object p0

    return-object p0
.end method

.method public final isCurrentUserAffiliated(I)Z
    .registers 7

    .line 211
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 212
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v1

    const/16 v2, -0x2710

    if-ne v1, v2, :cond_14

    const/4 p0, 0x0

    return p0

    .line 217
    :cond_14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callingUid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " deviceOwnerUid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " currentUserId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BugreportManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v1, :cond_49

    const-string v1, "Caller is not device owner on provisioned device."

    .line 223
    invoke-virtual {p0, v1}, Lcom/android/server/os/BugreportManagerServiceImpl;->logAndThrow(Ljava/lang/String;)V

    .line 225
    :cond_49
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isAffiliatedUser(I)Z

    move-result p1

    if-nez p1, :cond_54

    const-string p1, "Current user is not affiliated to the device owner."

    .line 226
    invoke-virtual {p0, p1}, Lcom/android/server/os/BugreportManagerServiceImpl;->logAndThrow(Ljava/lang/String;)V

    :cond_54
    const/4 p0, 0x1

    return p0
.end method

.method public final isDumpstateBinderServiceRunningLocked()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->getDumpstateBinderServiceLocked()Landroid/os/IDumpstate;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final logAndThrow(Ljava/lang/String;)V
    .registers 2

    const-string p0, "BugreportManagerService"

    .line 327
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final reportError(Landroid/os/IDumpstateListener;I)V
    .registers 3

    .line 319
    :try_start_0
    invoke-interface {p1, p2}, Landroid/os/IDumpstateListener;->onError(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_20

    :catch_4
    move-exception p0

    .line 322
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onError() transaction threw RemoteException: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BugreportManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    return-void
.end method

.method public final startAndGetDumpstateBinderServiceLocked()Landroid/os/IDumpstate;
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string v0, "ctl.start"

    const-string v1, "bugreportd"

    .line 290
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    move v3, v0

    move v4, v3

    :goto_d
    const-string/jumbo v5, "ms)"

    const-string v6, "BugreportManagerService"

    if-nez v3, :cond_49

    .line 297
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->getDumpstateBinderServiceLocked()Landroid/os/IDumpstate;

    move-result-object v1

    if-eqz v1, :cond_20

    const-string p0, "Got bugreport service handle."

    .line 299
    invoke-static {v6, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    :cond_20
    int-to-long v7, v2

    .line 302
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Waiting to get dumpstate service handle ("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v4, v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v5, v4

    const-wide/16 v7, 0x7530

    cmp-long v3, v5, v7

    if-lez v3, :cond_47

    const/4 v3, 0x1

    goto :goto_d

    :cond_47
    move v3, v0

    goto :goto_d

    :cond_49
    :goto_49
    if-eqz v3, :cond_62

    .line 310
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Timed out waiting to get dumpstate service handle ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    return-object v1
.end method

.method public startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;Z)V
    .registers 16
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.DUMP"
    .end annotation

    .line 76
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p0, p5}, Lcom/android/server/os/BugreportManagerServiceImpl;->validateBugreportMode(I)V

    .line 81
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 p1, 0x4

    if-ne p5, p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    .line 82
    :goto_16
    invoke-virtual {p0, p2, v1, p1}, Lcom/android/server/os/BugreportManagerServiceImpl;->enforcePermission(Ljava/lang/String;IZ)V

    .line 84
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 86
    :try_start_1d
    invoke-virtual {p0, p5}, Lcom/android/server/os/BugreportManagerServiceImpl;->ensureUserCanTakeBugReport(I)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_35

    .line 88
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    .line 92
    :try_start_2d
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/os/BugreportManagerServiceImpl;->startBugreportLocked(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;Z)V

    .line 94
    monitor-exit p1

    return-void

    :catchall_32
    move-exception p0

    monitor-exit p1
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_32

    throw p0

    :catchall_35
    move-exception p0

    .line 88
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    throw p0
.end method

.method public final startBugreportLocked(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;Z)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 235
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->isDumpstateBinderServiceRunningLocked()Z

    move-result v0

    const-string v1, "BugreportManagerService"

    if-eqz v0, :cond_12

    const-string p1, "\'dumpstate\' is already running. Cannot start a new bugreport while another one is currently in progress."

    .line 236
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x5

    .line 238
    invoke-virtual {p0, p6, p1}, Lcom/android/server/os/BugreportManagerServiceImpl;->reportError(Landroid/os/IDumpstateListener;I)V

    return-void

    .line 243
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->startAndGetDumpstateBinderServiceLocked()Landroid/os/IDumpstate;

    move-result-object v0

    if-nez v0, :cond_22

    const-string p1, "Unable to get bugreport service"

    .line 245
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 246
    invoke-virtual {p0, p6, p1}, Lcom/android/server/os/BugreportManagerServiceImpl;->reportError(Landroid/os/IDumpstateListener;I)V

    return-void

    .line 251
    :cond_22
    new-instance v6, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    invoke-direct {v6, p0, p6, v0}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;-><init>(Lcom/android/server/os/BugreportManagerServiceImpl;Landroid/os/IDumpstateListener;Landroid/os/IDumpstate;)V

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v7, p7

    .line 253
    :try_start_2d
    invoke-interface/range {v0 .. v7}, Landroid/os/IDumpstate;->startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;Z)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_34

    .line 260
    :catch_31
    invoke-virtual {p0, p1, p2}, Lcom/android/server/os/BugreportManagerServiceImpl;->cancelBugreport(ILjava/lang/String;)V

    :goto_34
    return-void
.end method

.method public final validateBugreportMode(I)V
    .registers 4

    if-eqz p1, :cond_45

    const/4 p0, 0x1

    if-eq p1, p0, :cond_45

    const/4 p0, 0x2

    if-eq p1, p0, :cond_45

    const/4 p0, 0x3

    if-eq p1, p0, :cond_45

    const/4 p0, 0x4

    if-eq p1, p0, :cond_45

    const/4 p0, 0x5

    if-eq p1, p0, :cond_45

    const/16 p0, 0x10

    if-eq p1, p0, :cond_45

    const/16 p0, 0x11

    if-ne p1, p0, :cond_1a

    goto :goto_45

    .line 137
    :cond_1a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown bugreport mode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BugreportManagerService"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    :goto_45
    return-void
.end method
