.class public final Lcom/android/server/knox/dar/VirtualLockImpl;
.super Ljava/lang/Object;
.source "VirtualLockImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/dar/VirtualLockImpl$GateKeeperDiedRecipient;
    }
.end annotation


# static fields
.field public static final BASE_DIR:Ljava/lang/String; = "/data/system/users"

.field public static final TAG:Ljava/lang/String; = "VirtualLockImpl"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

.field public mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field public final mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;


# direct methods
.method public static synthetic $r8$lambda$Z4eed_Oh0f_pXlMQZdO7KjqieU0(Lcom/android/internal/widget/LockscreenCredential;J[BILcom/android/internal/widget/LockSettingsInternal;)Ljava/lang/Boolean;
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/knox/dar/VirtualLockImpl;->lambda$resetPasswordWithToken$0(Lcom/android/internal/widget/LockscreenCredential;J[BILcom/android/internal/widget/LockSettingsInternal;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGateKeeperService(Lcom/android/server/knox/dar/VirtualLockImpl;)Landroid/service/gatekeeper/IGateKeeperService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmGateKeeperService(Lcom/android/server/knox/dar/VirtualLockImpl;Landroid/service/gatekeeper/IGateKeeperService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/DarManagerService$Injector;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 41
    invoke-virtual {p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getDarDatabaseCache()Lcom/android/server/knox/dar/DarDatabaseCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    .line 43
    invoke-virtual {p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public static synthetic lambda$resetPasswordWithToken$0(Lcom/android/internal/widget/LockscreenCredential;J[BILcom/android/internal/widget/LockSettingsInternal;)Ljava/lang/Boolean;
    .registers 12

    move-object v0, p5

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    .line 196
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockSettingsInternal;->setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result p0

    .line 195
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearResetPasswordToken(I)Z
    .registers 8

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clear Reset password token for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VirtualLockImpl"

    invoke-static {v1, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 p0, 0x0

    return p0

    .line 144
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 146
    :try_start_22
    iget-object v2, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    const-string/jumbo v3, "vl.rst.token.handle"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/android/server/knox/dar/DarDatabaseCache;->getLong(ILjava/lang/String;J)J

    move-result-wide v2

    .line 148
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/knox/dar/VirtualLockImpl;->clearResetPasswordTokenInternal(JI)Z

    move-result p0
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_35

    .line 150
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_35
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 151
    throw p0
.end method

.method public final clearResetPasswordTokenInternal(JI)Z
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_18

    .line 155
    iget-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 156
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->removeEscrowToken(JI)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 157
    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    const-string/jumbo p1, "vl.rst.token.handle"

    invoke-virtual {p0, p3, p1}, Lcom/android/server/knox/dar/DarDatabaseCache;->delete(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public getAvailableUserId()I
    .registers 2

    const/16 v0, 0x3e8

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getAvailableUserId(I)I

    move-result p0

    return p0
.end method

.method public getAvailableUserId(I)I
    .registers 7

    .line 97
    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getReservedUserIdForSystem()I

    move-result v0

    :goto_4
    add-int/lit8 v1, p1, 0xa

    if-ge p1, v1, :cond_21

    if-ne p1, v0, :cond_b

    goto :goto_1a

    .line 102
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_1d

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1a

    return p1

    :cond_1a
    :goto_1a
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :catch_1d
    move-exception p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    :cond_21
    new-instance p0, Ljava/security/SecureRandom;

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    const/16 p1, 0x1f4

    .line 111
    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p0

    add-int/lit16 p0, p0, 0x5dc

    return p0
.end method

.method public final declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .registers 5

    monitor-enter p0

    .line 219
    :try_start_1
    iget-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_33

    if-eqz v0, :cond_7

    .line 220
    monitor-exit p0

    return-object v0

    :cond_7
    :try_start_7
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    .line 223
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_33

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 226
    :try_start_10
    new-instance v2, Lcom/android/server/knox/dar/VirtualLockImpl$GateKeeperDiedRecipient;

    invoke-direct {v2, p0, v1}, Lcom/android/server/knox/dar/VirtualLockImpl$GateKeeperDiedRecipient;-><init>(Lcom/android/server/knox/dar/VirtualLockImpl;Lcom/android/server/knox/dar/VirtualLockImpl$GateKeeperDiedRecipient-IA;)V

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1a
    .catchall {:try_start_10 .. :try_end_19} :catchall_33

    goto :goto_22

    :catch_1a
    move-exception v1

    :try_start_1b
    const-string v2, "VirtualLockImpl"

    const-string v3, " Unable to register death recipient"

    .line 228
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    :goto_22
    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_33

    .line 231
    monitor-exit p0

    return-object v0

    :cond_2a
    :try_start_2a
    const-string v0, "VirtualLockImpl"

    const-string v2, "Unable to acquire GateKeeperService"

    .line 234
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_33

    .line 235
    monitor-exit p0

    return-object v1

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getLockSettingsInternal()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/internal/widget/LockSettingsInternal;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    if-nez v0, :cond_e

    .line 205
    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    iput-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    .line 207
    :cond_e
    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getReservedUserIdForSystem()I
    .registers 4

    .line 86
    iget-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    const-string/jumbo v1, "getReservedUserIdForSystem"

    invoke-virtual {v0, v1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V

    .line 87
    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    const/4 v0, 0x0

    const-string/jumbo v1, "vl.reserved.userid"

    const/16 v2, -0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/knox/dar/DarDatabaseCache;->getInt(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getVirtualUsers()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 51
    :try_start_9
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/users"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_41

    if-nez v2, :cond_1a

    .line 69
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 56
    :cond_1a
    :try_start_1a
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v3, :cond_3d

    aget-object v5, v2, v4

    .line 57
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_41

    if-eqz v6, :cond_3a

    const/4 v6, -0x1

    .line 60
    :try_start_27
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_2f} :catch_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_41

    :catch_2f
    const/16 v5, 0x3e8

    if-lt v6, v5, :cond_3a

    .line 64
    :try_start_33
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_41

    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 69
    :cond_3d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_41
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    throw p0
.end method

.method public isResetPasswordTokenActive(I)Z
    .registers 8

    .line 164
    invoke-static {p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 167
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 169
    :try_start_c
    iget-object v2, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    const-string/jumbo v3, "vl.rst.token.handle"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/android/server/knox/dar/DarDatabaseCache;->getLong(ILjava/lang/String;J)J

    move-result-wide v2

    .line 171
    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->isEscrowTokenActive(JI)Z

    move-result p0
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_21

    .line 173
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_21
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 174
    throw p0
.end method

.method public reserveUserIdForSystem()I
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    const-string/jumbo v1, "reserveUserIdForSystem"

    invoke-virtual {v0, v1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getReservedUserIdForSystem()I

    move-result v0

    .line 77
    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getReservedUserIdForSystem()I

    move-result v1

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_15

    return v0

    .line 80
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getAvailableUserId()I

    move-result v0

    .line 81
    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    const/4 v1, 0x0

    const-string/jumbo v2, "vl.reserved.userid"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/knox/dar/DarDatabaseCache;->putInt(ILjava/lang/String;I)V

    return v0
.end method

.method public resetPasswordWithToken(Ljava/lang/String;[BI)Z
    .registers 14

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reset password with token for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VirtualLockImpl"

    invoke-static {v1, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {p3}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 p0, 0x0

    return p0

    :cond_1e
    if-eqz p1, :cond_21

    goto :goto_23

    :cond_21
    const-string p1, ""

    .line 183
    :goto_23
    iget-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    const-wide/16 v1, 0x0

    const-string/jumbo v3, "vl.rst.token.handle"

    invoke-virtual {v0, p3, v3, v1, v2}, Lcom/android/server/knox/dar/DarDatabaseCache;->getLong(ILjava/lang/String;J)J

    move-result-wide v6

    .line 186
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 188
    :try_start_32
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->isNumericOnly(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 191
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    goto :goto_41

    .line 193
    :cond_3d
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPasswordOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    :goto_41
    move-object v5, p1

    .line 195
    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getLockSettingsInternal()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;

    move-object v4, p1

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/LockscreenCredential;J[BI)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 197
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_5e
    .catchall {:try_start_32 .. :try_end_5e} :catchall_62

    .line 199
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_62
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 200
    throw p0
.end method

.method public setResetPasswordToken([BI)Z
    .registers 12

    const-string/jumbo v0, "vl.rst.token.handle"

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set reset password token for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VirtualLockImpl"

    invoke-static {v2, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {p2}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_21

    return v2

    :cond_21
    if-eqz p1, :cond_56

    .line 119
    array-length v1, p1

    const/16 v3, 0x20

    if-lt v1, v3, :cond_56

    .line 122
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 124
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    const-wide/16 v5, 0x0

    invoke-virtual {v1, p2, v0, v5, v6}, Lcom/android/server/knox/dar/DarDatabaseCache;->getLong(ILjava/lang/String;J)J

    move-result-wide v7

    .line 127
    invoke-virtual {p0, v7, v8, p2}, Lcom/android/server/knox/dar/VirtualLockImpl;->clearResetPasswordTokenInternal(JI)Z

    .line 129
    iget-object v1, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 130
    invoke-virtual {v7}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getEscrowTokenStateChangeCallback()Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    move-result-object v7

    .line 129
    invoke-virtual {v1, p1, p2, v7}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v7

    .line 131
    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    invoke-virtual {p0, p2, v0, v7, v8}, Lcom/android/server/knox/dar/DarDatabaseCache;->putLong(ILjava/lang/String;J)V
    :try_end_48
    .catchall {:try_start_2c .. :try_end_48} :catchall_51

    cmp-long p0, v7, v5

    if-eqz p0, :cond_4d

    const/4 v2, 0x1

    .line 135
    :cond_4d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_51
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    throw p0

    .line 120
    :cond_56
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "token must be at least 32-byte long"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
