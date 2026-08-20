.class public Lcom/android/server/knox/dar/sdp/SdpManagerImpl;
.super Ljava/lang/Object;
.source "SdpManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService;,
        Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;,
        Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;,
        Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;,
        Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;,
        Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;,
        Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;,
        Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;,
        Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;
    }
.end annotation


# static fields
.field public static final ALIAS_EPHEMERAL_KEY:Ljava/lang/String; = "SdpEphemeralKey"

.field public static final ALIAS_EPHEMERAL_TOKEN:Ljava/lang/String; = "SdpEphemeralToken"

.field public static final ALIAS_RESET_TOKEN:Ljava/lang/String; = "SdpResetToken"

.field public static final ALIAS_SECURE_DATA_KEY:Ljava/lang/String; = "SdpSecureDataKey"

.field public static final ALIAS_SESSION_KEY:Ljava/lang/String; = "SdpSessionKey"

.field public static final ALIAS_TOKEN_HANDLE:Ljava/lang/String; = "SdpTokenHandle"

.field public static final BASE_DIR:Ljava/lang/String; = "/data/system/users"

.field public static final DATA_ENGINEID:Ljava/lang/String; = "engineId"

.field public static final DATA_PKG_NAME:Ljava/lang/String; = "pkgName"

.field public static final DATA_STATE:Ljava/lang/String; = "state"

.field public static final DATA_USERID:Ljava/lang/String; = "userId"

.field public static final DEFAULT_KEY_LEN:I = 0x20

.field public static final DEFAULT_LEGACY_RESET_TIMEOUT:J = 0xdbba0L

.field public static final DEFAULT_USER_ENGINE_ID:I = 0x0

.field public static final DEVICE_OWNER_CLEARED_KEY:Ljava/lang/String; = "do_cleared"

.field public static final DEVICE_SUPPORT_KNOX:Z = false

.field public static final DEVICE_SUPPORT_SDP:Z = false

.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final INTENT_SDP_STATE_CHANGED:Ljava/lang/String; = "com.sec.sdp.SDP_STATE_CHANGED"

.field public static final MSG_CLEANUP_USER:I = 0x9

.field public static final MSG_DEVICE_OWNER_CLEARED:I = 0xa

.field public static final MSG_ENFORCE_CHANGE_PASSWORD:I = 0xe

.field public static final MSG_LEGACY_RESET_PASSWORD:I = 0xd

.field public static final MSG_LEGACY_RESET_TIMEOUT:I = 0xc

.field public static final MSG_LOCK:I = 0x2

.field public static final MSG_PACKAGE_REMOVED:I = 0x4

.field public static final MSG_SP_FULL_MIGRATION:I = 0xb

.field public static final MSG_START_USER:I = 0x7

.field public static final MSG_STATE_CHANGE:I = 0xf

.field public static final MSG_SYSTEM_READY:I = 0x1

.field public static final MSG_UNLOCK:I = 0x3

.field public static final MSG_UNLOCK_USER:I = 0x8

.field public static final MSG_USER_ADDED:I = 0x5

.field public static final MSG_USER_REMOVED:I = 0x6

.field public static final NULL_USER:Landroid/content/pm/UserInfo;

.field public static final PROPERTY_SDP_CRYPTO_DAEMON_CONTROL:Ljava/lang/String; = "persist.sys.knox.sdp_cryptod"

.field public static final SDK_CURRENT_VERSION:D = 1.3

.field public static final SDK_NOT_SUPPORTED:D = 0.0

.field public static final SDK_VERSION_1_0:D = 1.0

.field public static final SDK_VERSION_1_1:D = 1.1

.field public static final SDK_VERSION_1_2:D = 1.2

.field public static final SDK_VERSION_1_3:D = 1.3

.field public static final SDP_CRYPTO_DAEMON:Ljava/lang/String; = "sdp_cryptod"

.field public static final SDP_ID:Ljava/lang/String; = "id"

.field public static final SDP_LATEST_VERSION:I = 0x6

.field public static final SDP_STATE:Ljava/lang/String; = "state"

.field public static final SDP_VERSION_1:I = 0x1

.field public static final SDP_VERSION_2:I = 0x2

.field public static final SDP_VERSION_3:I = 0x3

.field public static final SDP_VERSION_4:I = 0x4

.field public static final SDP_VERSION_5:I = 0x5

.field public static final SDP_VERSION_6:I = 0x6

.field public static final SDP_VERSION_DISABLED:I = 0x0

.field public static final SERVICE_NAME:Ljava/lang/String; = "SdpManagerImpl"

.field public static final SYSTEM_USER_ENGINE_ID:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SdpManagerImpl"

.field public static final TAG_RECV:Ljava/lang/String; = "SdpManagerImpl.receiver"

.field public static mSystemReady:Z = false


# instance fields
.field public handlerThread:Landroid/os/HandlerThread;

.field public final mBinderListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mContainerStateReceiver:Landroid/os/ContainerStateReceiver;

.field public mContext:Landroid/content/Context;

.field public mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public mIsHandlerReady:Z

.field public mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

.field public final mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;",
            ">;"
        }
    .end annotation
.end field

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

.field public mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field public final mManagedCredentialMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field public final mManagedTokenMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field public mPackageEventReceiver:Landroid/content/BroadcastReceiver;

.field public mPackageManagerImpl:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

.field public final mSdpDatabaseCache:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;

.field public mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

.field public final mSdpEngineDbLock:Ljava/lang/Object;

.field public final mSdpEngineMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

.field public mSdpManagerInternal:Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

.field public mSdpManagerProxy:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;

.field public mSecureFileSystemManager:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;

.field public mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

.field public final mUserManager:Landroid/os/UserManager;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;


# direct methods
.method public static synthetic $r8$lambda$4uoUzNd78HU1MImGYswpBUPP4Ss(ILjava/io/File;Lcom/android/server/knox/dar/sdp/SdpManagerInternal;)Ljava/lang/Boolean;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lambda$handleDeviceOwnerChanged$6(ILjava/io/File;Lcom/android/server/knox/dar/sdp/SdpManagerInternal;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$B5EBDFf2CBCaDVyabfMY52I8rx4(ILcom/android/server/pm/UserManagerInternal;)Ljava/lang/Boolean;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lambda$onLegacyResetCredentialRequested$7(ILcom/android/server/pm/UserManagerInternal;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Bni0A_Nptmz0mFfiMMCdwAeK1LI(ILjava/lang/String;ILcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lambda$checkCredential$2(ILjava/lang/String;ILcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HTvIZ9allYXEi0JVmDs8wzSIfzA(ILcom/android/internal/widget/LockSettingsInternal;)Ljava/lang/Integer;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lambda$onMasterKeyInitialized$4(ILcom/android/internal/widget/LockSettingsInternal;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZU97Jb9sNtSHvckH5Yb1ARyCLvI([BJ[BJILcom/android/internal/widget/ILockSettings;)Ljava/lang/Boolean;
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lambda$changeToken$1([BJ[BJILcom/android/internal/widget/ILockSettings;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bw0CKvIaIdUJeRIMefA1OhM_KA4([BJILcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lambda$verifyToken$0([BJILcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mU76E6wCBo3TlspzSaSaGS2vIXk(Ljava/lang/String;ILcom/android/server/pm/PackageManagerService$IPackageManagerImpl;)Ljava/lang/Boolean;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lambda$createEncPkgDir$3(Ljava/lang/String;ILcom/android/server/pm/PackageManagerService$IPackageManagerImpl;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vNp5G6g342e_KABHiOOnQZD2e_I(ILcom/android/server/pm/PackageManagerService$IPackageManagerImpl;)Ljava/lang/Boolean;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lambda$handleUserRemoved$5(ILcom/android/server/pm/PackageManagerService$IPackageManagerImpl;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wSliGDQ8UyVdP1KnGd8POJ7jd1A(ILcom/android/server/pm/UserManagerInternal;)Ljava/lang/Boolean;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lambda$clearLegacyResetStatus$8(ILcom/android/server/pm/UserManagerInternal;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBinderListeners(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListenerMap(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockPatternUtils(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 1

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSdpEngineDb(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;
    .registers 1

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSdpEngineDbLock(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSdpEngineMap(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mchangeToken(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;[BJ[BJI)Z
    .registers 8

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->changeToken([BJ[BJI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerPermissionFor(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkCallerPermissionFor(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCredential(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkCredential(Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetLockSettings(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Optional;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getLockSettings()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetLockSettingsInternal(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Optional;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getLockSettingsInternal()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetMasterKeyVersion(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getMasterKeyVersion(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetPackageManagerImpl(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Optional;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getPackageManagerImpl()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSdpManagerInternal(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Optional;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getSdpManagerInternal()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetStorageManager(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Optional;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getStorageManager()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserInfo(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)Landroid/content/pm/UserInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleCleanupUser(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handleCleanupUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleDeviceOwnerCleared(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handleDeviceOwnerCleared()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleEmptyListenerRoll(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handleEmptyListenerRoll(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePackageRemoved(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handlePackageRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSendBroadcastForStateChange(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;III)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handleSendBroadcastForStateChange(III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleStartUser(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handleStartUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUserAdded(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handleUserAdded(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUserRemoved(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handleUserRemoved(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitInternalEngineInfo(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->initInternalEngineInfo(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misSupportedDevice(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monManagedProfileUnavailable(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onManagedProfileUnavailable(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSystemReady(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onSystemReady()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mquickMessage(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->quickMessage(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mquickMessage(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;ILandroid/os/Bundle;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->quickMessage(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrecordException(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->recordException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveDirectoryRecursive(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/io/File;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeDirectoryRecursive(Ljava/io/File;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrewrapSdpKeys(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;[B[BI)Z
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->rewrapSdpKeys([B[BI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetMasterKeyVersion(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->setMasterKeyVersion(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mverifyToken(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;[BJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 4

    .line 259
    new-instance v0, Landroid/content/pm/UserInfo;

    const/16 v1, -0x2710

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->NULL_USER:Landroid/content/pm/UserInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/DarManagerService$Injector;)V
    .registers 5

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    .line 137
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    .line 155
    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    .line 160
    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handlerThread:Landroid/os/HandlerThread;

    .line 163
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mManagedCredentialMap:Ljava/util/Map;

    .line 164
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mManagedTokenMap:Ljava/util/Map;

    .line 528
    new-instance v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$1;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$1;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 580
    new-instance v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$2;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$2;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mPackageEventReceiver:Landroid/content/BroadcastReceiver;

    .line 615
    new-instance v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$3;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$3;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContainerStateReceiver:Landroid/os/ContainerStateReceiver;

    .line 1906
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    .line 2136
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    .line 272
    invoke-virtual {p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 273
    iput-boolean v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mIsHandlerReady:Z

    .line 274
    invoke-virtual {p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mUserManager:Landroid/os/UserManager;

    .line 275
    invoke-virtual {p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 279
    new-instance v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    invoke-direct {v1, p0, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    .line 280
    new-instance v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-direct {v1, p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase-IA;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    .line 281
    new-instance v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;

    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Landroid/content/Context;Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager-IA;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSecureFileSystemManager:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;

    .line 283
    new-instance v1, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;

    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpDatabaseCache:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;

    .line 286
    invoke-virtual {p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 287
    new-instance v1, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    invoke-direct {v1, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;-><init>(Lcom/android/server/knox/dar/DarManagerService$Injector;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    .line 288
    invoke-virtual {p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getKeyProtector()Lcom/android/server/knox/dar/KeyProtector;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    .line 290
    const-class p1, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

    new-instance v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService;

    invoke-direct {v1, p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService-IA;)V

    invoke-static {p1, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->readEngineList()V

    .line 293
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->sdpServiceReady()V

    return-void
.end method

.method public static isLDUModel()Z
    .registers 3

    .line 377
    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->readOMCSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isLDUModel : sales code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdpManagerImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "PAP"

    .line 379
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "FOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "LDU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_36

    :cond_34
    const/4 v0, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 v0, 0x1

    :goto_37
    return v0
.end method

.method public static synthetic lambda$changeToken$1([BJ[BJILcom/android/internal/widget/ILockSettings;)Ljava/lang/Boolean;
    .registers 16

    move-object v0, p7

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    move v7, p6

    .line 705
    :try_start_6
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/widget/ILockSettings;->changeToken([BJ[BJI)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 708
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 709
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic lambda$checkCredential$2(ILjava/lang/String;ILcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 7

    .line 721
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p0, v1, :cond_f

    :try_start_6
    const-string p0, "SdpManagerImpl"

    const-string p1, "Unknown credential type"

    .line 731
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v2

    goto :goto_13

    .line 727
    :cond_f
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    :goto_13
    if-eqz p0, :cond_1f

    .line 733
    invoke-interface {p3, p0, p2, v2}, Lcom/android/internal/widget/ILockSettings;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_1b

    move-object v0, p0

    goto :goto_1f

    :catch_1b
    move-exception p0

    .line 736
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1f
    :goto_1f
    return-object v0
.end method

.method public static synthetic lambda$clearLegacyResetStatus$8(ILcom/android/server/pm/UserManagerInternal;)Ljava/lang/Boolean;
    .registers 3

    const/4 v0, 0x1

    .line 4627
    invoke-virtual {p1, p0, v0}, Lcom/android/server/pm/UserManagerInternal;->clearVolatiles(II)Z

    move-result p0

    .line 4626
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$createEncPkgDir$3(Ljava/lang/String;ILcom/android/server/pm/PackageManagerService$IPackageManagerImpl;)Ljava/lang/Boolean;
    .registers 3

    .line 892
    invoke-virtual {p2, p0, p1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->createEncAppData(Ljava/lang/String;I)Z

    move-result p0

    .line 891
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$handleDeviceOwnerChanged$6(ILjava/io/File;Lcom/android/server/knox/dar/sdp/SdpManagerInternal;)Ljava/lang/Boolean;
    .registers 3

    .line 3035
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;->setSdpPolicyToPath(ILjava/lang/String;)Z

    move-result p0

    .line 3034
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$handleUserRemoved$5(ILcom/android/server/pm/PackageManagerService$IPackageManagerImpl;)Ljava/lang/Boolean;
    .registers 2

    .line 2980
    invoke-virtual {p1, p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->removeEncUserDir(I)Z

    move-result p0

    .line 2979
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$onLegacyResetCredentialRequested$7(ILcom/android/server/pm/UserManagerInternal;)Ljava/lang/Boolean;
    .registers 3

    const/4 v0, 0x1

    .line 4599
    invoke-virtual {p1, p0, v0}, Lcom/android/server/pm/UserManagerInternal;->setVolatiles(II)Z

    move-result p0

    .line 4598
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$onMasterKeyInitialized$4(ILcom/android/internal/widget/LockSettingsInternal;)Ljava/lang/Integer;
    .registers 2

    .line 2503
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/LockSettingsInternal;->getCredentialType(I)I

    move-result p0

    .line 2502
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$verifyToken$0([BJILcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 5

    .line 688
    :try_start_0
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 690
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 691
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0
.end method

.method public static native nativeOnBoot(II)I
.end method

.method public static native nativeOnChangePassword(I[B[B)I
.end method

.method public static native nativeOnDeviceLocked(II)I
.end method

.method public static native nativeOnDeviceUnlocked(I[B)I
.end method

.method public static native nativeOnMigration(IIII[B)I
.end method

.method public static native nativeOnUserAdded(II[B)I
.end method

.method public static native nativeOnUserRemoved(II)I
.end method

.method public static readOMCSalesCode()Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    const-string/jumbo v1, "persist.omc.sales_code"

    .line 385
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_28

    if-eqz v1, :cond_11

    .line 386
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_11
    const-string/jumbo v2, "ro.csc.sales_code"

    .line 387
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 388
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_20
    const-string/jumbo v2, "ril.sales_code"

    .line 389
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_27} :catch_29

    goto :goto_31

    :catch_28
    move-object v1, v0

    :catch_29
    const-string v2, "SdpManagerImpl"

    const-string/jumbo v3, "readOMCSalesCode failed"

    .line 393
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :goto_31
    if-nez v1, :cond_34

    return-object v0

    :cond_34
    return-object v1
.end method


# virtual methods
.method public addEngine(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)I
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1673
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v0, -0xa

    return v0

    .line 1677
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1678
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1679
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    const-string v1, "SdpManagerImpl"

    const-string v2, "add engine :: calling by the process %d %d"

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    .line 1682
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x1

    aput-object v7, v6, v10

    .line 1681
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x3

    if-eqz p1, :cond_107

    .line 1685
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_107

    .line 1686
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_107

    .line 1687
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getPrivilegedApps()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_52

    goto/16 :goto_107

    :cond_52
    const-string v2, "SdpManagerImpl"

    .line 1692
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add engine :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v2

    .line 1695
    iget-object v6, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6, v5}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v14

    .line 1696
    invoke-virtual {v0, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->assignEngineId(Ljava/lang/String;)I

    move-result v15

    .line 1697
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getFlags()I

    move-result v11

    const-string v6, "SdpManagerImpl"

    const-string v7, "add engine :: alias : %s, id : %d"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v8

    .line 1700
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v10

    .line 1699
    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    new-instance v3, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    const/4 v10, 0x1

    const/4 v12, 0x6

    const/4 v13, 0x0

    move-object v6, v3

    move-object v7, v2

    move v8, v15

    invoke-direct/range {v6 .. v13}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 1712
    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setPackageName(Ljava/lang/String;)V

    .line 1714
    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v6

    if-eqz v6, :cond_be

    const-string v0, "SdpManagerImpl"

    .line 1715
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add engine :: not supported anymore to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1718
    :cond_be
    invoke-static/range {p2 .. p2}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c6

    const/4 v0, -0x1

    return v0

    .line 1721
    :cond_c6
    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMdfpp()Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 1722
    invoke-static/range {p3 .. p3}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_da

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v6, 0x20

    if-ge v1, v6, :cond_dc

    :cond_da
    const/4 v0, -0x2

    return v0

    .line 1725
    :cond_dc
    iget-object v6, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1726
    :try_start_df
    invoke-virtual {v0, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-nez v1, :cond_fa

    .line 1727
    invoke-virtual {v0, v15}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-eqz v1, :cond_ec

    goto :goto_fa

    .line 1731
    :cond_ec
    monitor-exit v6
    :try_end_ed
    .catchall {:try_start_df .. :try_end_ed} :catchall_104

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 1733
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->addEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_fa
    :goto_fa
    :try_start_fa
    const-string v0, "SdpManagerImpl"

    const-string v1, "add engine :: failed to create engine due to pre-existing engine"

    .line 1728
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    .line 1729
    monitor-exit v6

    return v0

    :catchall_104
    move-exception v0

    .line 1731
    monitor-exit v6
    :try_end_106
    .catchall {:try_start_fa .. :try_end_106} :catchall_104

    throw v0

    :cond_107
    :goto_107
    const-string v0, "SdpManagerImpl"

    const-string v2, "add engine :: failed to create engine due to invalid parameters"

    .line 1688
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final addEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;IILjava/lang/String;Ljava/lang/String;)I
    .registers 20

    move-object v0, p0

    move-object v7, p2

    move-object/from16 v1, p5

    .line 1744
    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMdfpp()Z

    move-result v2

    const/16 v3, 0x20

    if-eqz v2, :cond_19

    const-string v2, "UTF-8"

    .line 1745
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    move-object/from16 v4, p6

    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    goto :goto_1d

    .line 1746
    :cond_19
    invoke-static {v3}, Lcom/android/server/knox/dar/SecureUtil;->generateRandomBytes(I)[B

    move-result-object v2

    :goto_1d
    move-object v8, v2

    .line 1747
    invoke-static {v3}, Lcom/android/server/knox/dar/SecureUtil;->generateRandomBytes(I)[B

    move-result-object v9

    const/4 v10, 0x0

    .line 1751
    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v11

    const/16 v2, -0xe

    .line 1755
    iget-object v3, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    invoke-virtual {v3, v11}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->clean(I)V

    .line 1756
    iget-object v3, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    invoke-virtual {v3, v11}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->clearLock(I)V

    .line 1757
    iget-object v3, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    .line 1758
    invoke-virtual {v3, v1, v8, v11}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->establish(Ljava/lang/String;[BI)J

    move-result-wide v3

    .line 1759
    iget-object v5, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    .line 1760
    invoke-virtual {v5, v1, v11}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 1762
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v12

    .line 1761
    invoke-static {v12}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    goto :goto_80

    .line 1766
    :cond_4a
    invoke-virtual {p0, v3, v4, v11}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->saveTokenHandleViaProtector(JI)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1765
    invoke-static {v1}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    goto :goto_80

    .line 1770
    :cond_59
    invoke-virtual {p0, p2, v12}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->addEngineNative(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;[B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1769
    invoke-static {v1}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    goto :goto_80

    .line 1773
    :cond_68
    iget-object v1, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    iget-object v2, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    .line 1775
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getPrivilegedApps()Ljava/util/ArrayList;

    move-result-object v6

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, p2

    .line 1774
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->addPolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/util/List;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1773
    invoke-static {v1}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    :goto_80
    const/4 v1, 0x1

    if-eqz v2, :cond_af

    const-string v3, "SdpManagerImpl"

    .line 1781
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add engine :: Failed with error code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    iget-object v3, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    invoke-virtual {v3, v11}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->clean(I)V

    .line 1784
    iget-object v3, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    invoke-virtual {v3, v11}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->clearLock(I)V

    .line 1785
    iget-object v3, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    iget-object v0, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    goto :goto_fa

    :cond_af
    const-string v3, "SdpManagerImpl"

    .line 1787
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add engine - Sucessfully done with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    invoke-virtual {p2, v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setState(I)V

    .line 1790
    iget-object v3, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1791
    :try_start_cf
    iget-object v4, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v11, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1792
    iget-object v4, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {v4, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mstoreEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    .line 1793
    iget-object v4, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {v4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mupdateEngineListLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;)I

    .line 1794
    monitor-exit v3
    :try_end_df
    .catchall {:try_start_cf .. :try_end_df} :catchall_109

    .line 1796
    iget-object v3, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v4, "SdpSessionKey"

    invoke-virtual {v3, v9, v4, v11}, Lcom/android/server/knox/dar/KeyProtector;->protect([BLjava/lang/String;I)Z

    .line 1797
    iget-object v3, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v4, "SdpTokenHandle"

    invoke-virtual {v3, v10, v4, v11}, Lcom/android/server/knox/dar/KeyProtector;->protect([BLjava/lang/String;I)Z

    .line 1798
    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v3

    if-eqz v3, :cond_fa

    .line 1799
    iget-object v0, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v3, "SdpResetToken"

    invoke-virtual {v0, v8, v3, v11}, Lcom/android/server/knox/dar/KeyProtector;->protect([BLjava/lang/String;I)Z

    :cond_fa
    :goto_fa
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v0, v3

    aput-object v9, v0, v1

    const/4 v1, 0x2

    aput-object v8, v0, v1

    .line 1802
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->clearAll([Ljava/lang/Object;)V

    return v2

    :catchall_109
    move-exception v0

    .line 1794
    :try_start_10a
    monitor-exit v3
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_109

    throw v0
.end method

.method public final addEngineNative(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;[B)I
    .registers 5

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 v1, 0x1

    aput-object p2, p0, v1

    .line 1815
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->isAnyoneEmptyHere([Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, -0x63

    return p0

    .line 1819
    :cond_12
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result p0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v1

    invoke-static {p0, v1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->nativeOnUserAdded(II[B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 1818
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_45

    .line 1820
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "add engine - failed to create engine due to native error "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1821
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    .line 1820
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xb

    return p0

    :cond_45
    return v0
.end method

.method public allow(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1057
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1058
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v5

    .line 1059
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_22

    if-nez v5, :cond_c

    const/4 p0, -0x5

    goto :goto_21

    .line 1063
    :cond_c
    new-instance v6, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-direct {v6, p1, p2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    .line 1065
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1064
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->addPrivilegedApp(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/sdp/core/SdpDomain;)I

    move-result p0

    :goto_21
    return p0

    :catchall_22
    move-exception p0

    .line 1059
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final assignEngineId(Ljava/lang/String;)I
    .registers 5

    .line 1647
    invoke-static {p1}, Lcom/samsung/android/knox/sdp/SdpUtil;->extractAndroidDefaultUserId(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_45

    const/16 v0, 0x3e8

    const-string v1, "SdpManagerImpl"

    const-string v2, "custom engine. assign custom engine id"

    .line 1651
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1653
    :goto_12
    :try_start_12
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1d

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1655
    :cond_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_42

    const-string p0, "SdpManagerImpl"

    .line 1657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom engine : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", id assigned. ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catchall_42
    move-exception p0

    .line 1655
    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p0

    :cond_45
    return v0
.end method

.method public final boot(I)I
    .registers 5

    .line 1166
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0xa

    return p0

    .line 1170
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-nez v0, :cond_44

    const-string v0, "SdpManagerImpl"

    .line 1172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boot - Engine info not found in map with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1175
    :try_start_28
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mgetEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 1177
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1178
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {v2, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mstoreEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    .line 1179
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mupdateEngineListLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;)I

    .line 1181
    :cond_3f
    monitor-exit v1

    goto :goto_44

    :catchall_41
    move-exception p0

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_28 .. :try_end_43} :catchall_41

    throw p0

    :cond_44
    :goto_44
    if-nez v0, :cond_5e

    const-string p0, "SdpManagerImpl"

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boot - Failed to find engine info with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x5

    return p0

    .line 1188
    :cond_5e
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->bootInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result p0

    return p0
.end method

.method public final bootInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .registers 12

    .line 1193
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    const-string v1, "SdpManagerImpl"

    .line 1195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boot - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->bootNative(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v1

    const-string v2, "SdpManagerImpl"

    const-string v3, "boot - [ Detected version : %d, Latest version : %d ]"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    .line 1201
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v5, v9

    .line 1199
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v2

    if-eq v2, v6, :cond_60

    const/4 v2, 0x0

    .line 1204
    invoke-virtual {p0, p1, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onMigrationInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;[B)I

    move-result v2

    if-eqz v2, :cond_53

    const-string v2, "SdpManagerImpl"

    const-string v3, "boot - Migration failed"

    .line 1205
    invoke-static {v2, v3}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    :cond_53
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1208
    :try_start_56
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1209
    monitor-exit v2

    goto :goto_60

    :catchall_5d
    move-exception p0

    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_5d

    throw p0

    .line 1212
    :cond_60
    :goto_60
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1213
    :try_start_63
    invoke-virtual {p0, p1, v9}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I

    .line 1214
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_9d

    .line 1216
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->generateAndSaveSessionKey(I)Z

    move-result p1

    const-string v2, "Boot - Prepare session key for engine %d [ res : %s ]"

    new-array v3, v4, [Ljava/lang/Object;

    .line 1218
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v9

    .line 1217
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    const-string p1, "Boot - Engine %d boot completed! [ rc : %d ]"

    new-array v2, v4, [Ljava/lang/Object;

    .line 1221
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    .line 1220
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->loadInternalEngineInfo(I)V

    return v1

    :catchall_9d
    move-exception p0

    .line 1214
    :try_start_9e
    monitor-exit v2
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw p0
.end method

.method public final bootNative(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .registers 3

    .line 1233
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result p0

    .line 1234
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v0

    .line 1237
    invoke-static {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->nativeOnBoot(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 1236
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 1238
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bootNative - Failed with id "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xb

    return p0

    :cond_33
    const/4 p0, 0x0

    return p0
.end method

.method public final cacheManagedCredential([BI)V
    .registers 5

    .line 3472
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mManagedCredentialMap:Ljava/util/Map;

    const-string v1, "credential"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->cacheSafe(Ljava/util/Map;Ljava/lang/String;[BI)V

    return-void
.end method

.method public final cacheManagedToken([BI)V
    .registers 5

    .line 3489
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mManagedTokenMap:Ljava/util/Map;

    const-string/jumbo v1, "token"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->cacheSafe(Ljava/util/Map;Ljava/lang/String;[BI)V

    return-void
.end method

.method public final cacheSafe(Ljava/util/Map;Ljava/lang/String;[BI)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/lang/String;",
            "[BI)V"
        }
    .end annotation

    if-eqz p1, :cond_6b

    if-nez p3, :cond_5

    goto :goto_6b

    .line 3391
    :cond_5
    monitor-enter p1

    .line 3394
    :try_start_6
    invoke-virtual {p0, p4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getSessionKeyViaProtector(I)[B

    move-result-object v0

    .line 3393
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 3395
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cache - Session key not found for user "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_63

    .line 3398
    :cond_25
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    .line 3399
    invoke-virtual {p0, v0, p3}, Lcom/android/server/knox/dar/KeyProtector;->encryptFast([B[B)[B

    move-result-object p0

    .line 3398
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_46

    .line 3400
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cache - Fast encryption failed with user "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_63

    .line 3403
    :cond_46
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "cache - Now %s is under secure management for user %d"

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, p3, v1

    const/4 p2, 0x1

    .line 3405
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, p2

    .line 3404
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3407
    :goto_63
    monitor-exit p1
    :try_end_64
    .catchall {:try_start_6 .. :try_end_64} :catchall_68

    .line 3408
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    return-void

    :catchall_68
    move-exception p0

    .line 3407
    :try_start_69
    monitor-exit p1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw p0

    :cond_6b
    :goto_6b
    return-void
.end method

.method public cancelLegacyResetTimeout(I)V
    .registers 5

    .line 4635
    iget-boolean v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mIsHandlerReady:Z

    if-eqz v0, :cond_2b

    .line 4636
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4637
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 4638
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4639
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Legacy reset timout canceled for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

.method public final changeToken([BJ[BJI)Z
    .registers 20

    .line 701
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 703
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getLockSettings()Ljava/util/Optional;

    move-result-object v0

    new-instance v11, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda0;

    move-object v3, v11

    move-object v4, p1

    move-wide v5, p2

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda0;-><init>([BJ[BJI)V

    invoke-virtual {v0, v11}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 711
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2a

    .line 713
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_2a
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 714
    throw v0
.end method

.method public final checkCallerPermissionFor(Ljava/lang/String;)V
    .registers 5

    .line 759
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "SdpManagerImpl"

    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_13

    return-void

    .line 761
    :cond_13
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Security Exception Occurred while pid["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] with uid["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] trying to access methodName ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] in ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] service"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 767
    throw p0
.end method

.method public final checkCredential(Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 7

    .line 718
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 720
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getLockSettings()Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2, p2, p1, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda3;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 739
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1d

    .line 741
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 742
    throw p0
.end method

.method public final checkSystemPermission()V
    .registers 3

    .line 772
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_9

    return-void

    :cond_9
    const-string p0, "SdpManagerImpl"

    const-string v0, "Require system permission."

    .line 773
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Security Exception Occurred in pid["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] with uid["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 776
    throw p0
.end method

.method public final clearCached(Ljava/util/Map;Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 3415
    :cond_3
    monitor-enter p1

    .line 3416
    :try_start_4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p0, :cond_39

    .line 3417
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 3418
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    .line 3420
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "clear - Managed %s removed for user %d"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    .line 3422
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v0

    .line 3421
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_4c

    :cond_39
    const-string p0, "clear - Managed %s not found for user %d"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    .line 3425
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v0

    .line 3424
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3427
    :goto_4c
    monitor-exit p1

    return-void

    :catchall_4e
    move-exception p0

    monitor-exit p1
    :try_end_50
    .catchall {:try_start_4 .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public final clearInternalEngineInfo(I)V
    .registers 4

    .line 2373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Engine info cleared for engine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2374
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpDatabaseCache:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->destroy(I)V

    return-void
.end method

.method public clearLegacyResetStatus(I)V
    .registers 4

    .line 4625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clear legacy reset status for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 4626
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserManagerInternal()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 4628
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "Unexpected failure while clear volatiles"

    .line 4629
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 4631
    :cond_34
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->clearManagedToken(I)V

    return-void
.end method

.method public final clearManageCredentialIfRequired(I)V
    .registers 3

    .line 2615
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2616
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->hasBiometricTypeTraced(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2617
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->hasNoSecurity(I)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_16

    .line 2621
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->clearManagedCredential(I)V

    :cond_16
    :goto_16
    return-void
.end method

.method public final clearManagedCredential(I)V
    .registers 4

    .line 3476
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mManagedCredentialMap:Ljava/util/Map;

    const-string v1, "credential"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->clearCached(Ljava/util/Map;Ljava/lang/String;I)V

    return-void
.end method

.method public final clearManagedToken(I)V
    .registers 4

    .line 3493
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mManagedTokenMap:Ljava/util/Map;

    const-string/jumbo v1, "token"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->clearCached(Ljava/util/Map;Ljava/lang/String;I)V

    return-void
.end method

.method public createEncPkgDir(ILjava/lang/String;)I
    .registers 4

    .line 887
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0xa

    return p0

    .line 891
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getPackageManagerImpl()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v0, p2, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 892
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 890
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    const/16 p0, -0xb

    return p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public deleteToeknFromTrusted(Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "deleteToeknFromTrusted"

    .line 4399
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 4401
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p0, -0x3

    return p0

    .line 4404
    :cond_d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4407
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->deleteTokenInternal(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2c

    const/4 p0, 0x0

    goto :goto_2e

    :cond_2c
    const/16 p0, -0x63

    :goto_2e
    return p0
.end method

.method public final deleteTokenInternal(ILjava/lang/String;)Z
    .registers 6

    .line 4414
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4415
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    invoke-virtual {v2, p2, p1}, Lcom/android/server/knox/dar/KeyProtector;->exists(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 4416
    invoke-virtual {p0, p2, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeSpecificKeyViaProtector(Ljava/lang/String;I)Z

    move-result p0

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    .line 4418
    :goto_12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method public disallow(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1081
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1082
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v5

    .line 1083
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_22

    if-nez v5, :cond_c

    const/4 p0, -0x5

    goto :goto_21

    .line 1087
    :cond_c
    new-instance v6, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-direct {v6, p1, p2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    .line 1089
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1088
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->removePrivilegedApp(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/sdp/core/SdpDomain;)I

    move-result p0

    :goto_21
    return p0

    :catchall_22
    move-exception p0

    .line 1083
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final doesEphemeralKeyExist(I)Z
    .registers 3

    .line 3229
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v0, "SdpEphemeralKey"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/KeyProtector;->exists(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .line 4515
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_39

    .line 4516
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial: Can\'t dump SDP from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without permission "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "android.permission.DUMP"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 4521
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result p1

    if-eqz p1, :cond_c1

    .line 4522
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_42
    const-string p3, "SDP Engine List :"

    .line 4523
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4525
    iget-object p3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_4f
    if-ge v1, p3, :cond_b9

    .line 4526
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    if-nez v2, :cond_5c

    goto :goto_b6

    :cond_5c
    const-string v3, "Engine Id : %5d   User ID : %5d   Version : %d   State : %d   Flag : %10s ( %d )   Alias : %s"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    .line 4532
    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 4533
    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    .line 4534
    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 4535
    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 4536
    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v6

    if-eqz v6, :cond_96

    const-string v6, "SDP_MINOR"

    goto :goto_98

    :cond_96
    const-string v6, "SDP_MDFPP"

    :goto_98
    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 4537
    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getFlag()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 4538
    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    .line 4530
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4539
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :goto_b6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 4541
    :cond_b9
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4542
    monitor-exit p1

    goto :goto_c6

    :catchall_be
    move-exception p0

    monitor-exit p1
    :try_end_c0
    .catchall {:try_start_42 .. :try_end_c0} :catchall_be

    throw p0

    :cond_c1
    const-string p0, "Not Supported..."

    .line 4544
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4546
    :goto_c6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public final establish([BI)Z
    .registers 13

    .line 2309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Establish new engine for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2312
    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    return v1

    .line 2315
    :cond_1c
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    return v1

    .line 2319
    :cond_23
    invoke-static {p2}, Lcom/samsung/android/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v3

    .line 2320
    new-instance v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v2, v0

    move v4, p2

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 2329
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2333
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->addEngineNative(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;[B)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2332
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_4d

    const-string p0, "establish - Unexpected failure while native setup"

    .line 2334
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_6d

    .line 2337
    :cond_4d
    iget-object v4, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    iget-object v5, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    .line 2339
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    move-object v8, v0

    .line 2338
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->addPolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/util/List;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2337
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    const-string p0, "establish - Unexpected failure while policy setup"

    .line 2341
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :goto_6d
    move p0, v1

    goto :goto_8e

    .line 2345
    :cond_6f
    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->initInternalEngineInfo(I)V

    .line 2347
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2348
    :try_start_79
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2349
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {v3, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mstoreEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    .line 2350
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mupdateEngineListLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;)I

    .line 2351
    monitor-exit p1
    :try_end_8d
    .catchall {:try_start_79 .. :try_end_8d} :catchall_a7

    move p0, v2

    :goto_8e
    const-string p1, "Result of engine establishment for user %d : %s"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2356
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v0, v2

    .line 2355
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    return p0

    :catchall_a7
    move-exception p0

    .line 2351
    :try_start_a8
    monitor-exit p1
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw p0
.end method

.method public exists(Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1038
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1039
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p0

    .line 1040
    monitor-exit v0

    if-eqz p0, :cond_c

    const/4 p0, -0x4

    goto :goto_d

    :cond_c
    const/4 p0, -0x5

    :goto_d
    return p0

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final generateAndSaveSessionKey(I)Z
    .registers 3

    const/16 v0, 0x20

    .line 3252
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->generateRandomBytes(I)[B

    move-result-object v0

    .line 3255
    :try_start_6
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->saveSessionKeyViaProtector([BI)Z

    move-result p0

    .line 3254
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)Z

    move-result p0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_12

    .line 3257
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    .line 3258
    throw p0
.end method

.method public final getCached(Ljava/util/Map;Ljava/lang/String;I)[B
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/lang/String;",
            "I)[B"
        }
    .end annotation

    .line 3435
    monitor-enter p1

    .line 3437
    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v0, :cond_25

    const-string p0, "get - Managed %s not found for user %d"

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 3439
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v2

    .line 3438
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    move-object p0, v1

    goto/16 :goto_9f

    .line 3443
    :cond_25
    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getSessionKeyViaProtector(I)[B

    move-result-object v0

    .line 3442
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 3444
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "get - Session key not found for user "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_67

    .line 3448
    :cond_44
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 3447
    invoke-static {v5}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6a

    const-string p0, "get - Empty managed %s found for user %d"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v3

    .line 3450
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v2

    .line 3449
    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :goto_67
    move-object p0, v1

    move-object v1, v0

    goto :goto_9f

    .line 3453
    :cond_6a
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    .line 3454
    invoke-virtual {p0, v0, v5}, Lcom/android/server/knox/dar/KeyProtector;->decryptFast([B[B)[B

    move-result-object v1

    .line 3453
    invoke-static {v1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8b

    .line 3455
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "get - Fast decryption failed with user "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_67

    :cond_8b
    const-string p0, "get - Managed %s given for user %d"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v3

    .line 3459
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v2

    .line 3458
    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_67

    .line 3461
    :goto_9f
    monitor-exit p1
    :try_end_a0
    .catchall {:try_start_1 .. :try_end_a0} :catchall_a4

    .line 3462
    invoke-static {v1}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    return-object p0

    :catchall_a4
    move-exception p0

    .line 3461
    :try_start_a5
    monitor-exit p1
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    throw p0
.end method

.method public final getDeviceVersion()Ljava/lang/String;
    .registers 4

    const-string/jumbo p0, "ro.build.PDA"

    const-string v0, "Unknown"

    .line 4665
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1d

    const/16 v0, 0x5f

    .line 4666
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1d

    const/4 v1, 0x0

    .line 4667
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1d
    return-object p0
.end method

.method public getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .registers 3

    .line 980
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 986
    :cond_8
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 987
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p0

    .line 988
    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .registers 4

    .line 994
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    if-nez p0, :cond_20

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get - engine info not found in map  for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SdpManagerImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-object p0
.end method

.method public final getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 1005
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1006
    :cond_9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 1007
    invoke-static {p1}, Lcom/samsung/android/knox/sdp/SdpUtil;->isAndroidDefaultUser(I)Z

    move-result v1

    if-nez v1, :cond_18

    return-object v0

    .line 1010
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1011
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v1

    if-eqz v1, :cond_23

    return-object v0

    .line 1014
    :cond_23
    invoke-static {p1}, Lcom/samsung/android/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object p1

    :cond_27
    if-eqz p1, :cond_48

    const/4 v1, 0x0

    .line 1018
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_30
    if-ge v1, v2, :cond_48

    .line 1019
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 1021
    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    return-object v3

    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_48
    return-object v0
.end method

.method public final getEphemeralKeyViaProtector(I)[B
    .registers 3

    .line 3215
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v0, "SdpEphemeralKey"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/KeyProtector;->release(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public final getLockSettings()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/internal/widget/ILockSettings;",
            ">;"
        }
    .end annotation

    .line 913
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_11

    const-string/jumbo v0, "lock_settings"

    .line 915
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 914
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 917
    :cond_11
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
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

    .line 921
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    if-nez v0, :cond_e

    .line 922
    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    .line 924
    :cond_e
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final getManagedCredential(I)[B
    .registers 4

    .line 3480
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mManagedCredentialMap:Ljava/util/Map;

    const-string v1, "credential"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getCached(Ljava/util/Map;Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public final getManagedToken(I)[B
    .registers 4

    .line 3497
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mManagedTokenMap:Ljava/util/Map;

    const-string/jumbo v1, "token"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getCached(Ljava/util/Map;Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public final getMasterKeyVersion(I)I
    .registers 4

    .line 4676
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpDatabaseCache:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;

    const-string/jumbo v0, "smk_ver"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->getInt(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getPackageManagerImpl()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;",
            ">;"
        }
    .end annotation

    .line 928
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mPackageManagerImpl:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    if-nez v0, :cond_f

    const-string/jumbo v0, "package"

    .line 930
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mPackageManagerImpl:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 932
    :cond_f
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mPackageManagerImpl:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 9

    .line 2786
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    const-string v0, ""

    if-nez p0, :cond_24

    .line 2789
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getPackage :: Not found with caller "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 2791
    :cond_24
    array-length v1, p0

    const/4 v2, 0x0

    :goto_26
    if-ge v2, v1, :cond_4b

    aget-object v3, p0, v2

    .line 2792
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPackage :: found name for caller "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_48

    .line 2793
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_48

    move-object v0, v3

    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_4b
    :goto_4b
    return-object v0
.end method

.method public final getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 4

    .line 951
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 953
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mUserManager:Landroid/os/UserManager;

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    .line 954
    :goto_e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p0, :cond_14

    goto :goto_16

    .line 955
    :cond_14
    sget-object p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->NULL_USER:Landroid/content/pm/UserInfo;

    :goto_16
    return-object p0
.end method

.method public final getProxy()Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;
    .registers 3

    .line 4681
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpManagerProxy:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;

    if-nez v0, :cond_c

    .line 4682
    new-instance v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy-IA;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpManagerProxy:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;

    .line 4684
    :cond_c
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpManagerProxy:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;

    return-object p0
.end method

.method public getResetToken(I)[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3268
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkSystemPermission()V

    .line 3270
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getResetTokenViaProtector(I)[B

    move-result-object p0

    return-object p0
.end method

.method public getResetTokenMDM(I)[B
    .registers 4

    .line 3292
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3293
    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get reset token for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3295
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getResetToken(I)[B

    move-result-object p0

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    return-object p0
.end method

.method public getResetTokenSafe(I)[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3275
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkSystemPermission()V

    .line 3277
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getManagedToken(I)[B

    move-result-object p0

    return-object p0
.end method

.method public final getResetTokenViaProtector(I)[B
    .registers 5

    .line 3281
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3283
    :try_start_4
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v2, "SdpResetToken"

    invoke-virtual {p0, v2, p1}, Lcom/android/server/knox/dar/KeyProtector;->release(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 3285
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3286
    throw p0
.end method

.method public final getSdpManagerInternal()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/knox/dar/sdp/SdpManagerInternal;",
            ">;"
        }
    .end annotation

    .line 906
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpManagerInternal:Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

    if-nez v0, :cond_e

    .line 907
    const-class v0, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpManagerInternal:Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

    .line 909
    :cond_e
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpManagerInternal:Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final getSessionKeyViaProtector(I)[B
    .registers 3

    .line 3238
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v0, "SdpSessionKey"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/KeyProtector;->release(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public final getSpecificKeyViaProtector(Ljava/lang/String;I)[B
    .registers 5

    .line 3352
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3354
    :try_start_4
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/KeyProtector;->release(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 3356
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3357
    throw p0
.end method

.method public final getStorageManager()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroid/os/storage/StorageManager;",
            ">;"
        }
    .end annotation

    .line 901
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 902
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedSDKVersion()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 370
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result p0

    if-eqz p0, :cond_c

    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    goto :goto_e

    :cond_c
    const-wide/16 v0, 0x0

    :goto_e
    return-wide v0
.end method

.method public getTokenHandle(I)J
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3312
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkSystemPermission()V

    .line 3314
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getTokenHandleViaProtector(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getTokenHandleViaProtector(I)J
    .registers 5

    .line 3319
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3321
    :try_start_4
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v2, "SdpTokenHandle"

    invoke-virtual {p0, v2, p1}, Lcom/android/server/knox/dar/KeyProtector;->release(Ljava/lang/String;I)[B

    move-result-object p0

    if-eqz p0, :cond_13

    .line 3323
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->bytesToLong([B)J

    move-result-wide p0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_19

    goto :goto_15

    :cond_13
    const-wide/16 p0, 0x0

    .line 3326
    :goto_15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide p0

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3327
    throw p0
.end method

.method public final getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 4

    .line 943
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 945
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mUserManager:Landroid/os/UserManager;

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    .line 946
    :goto_e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p0, :cond_14

    goto :goto_16

    .line 947
    :cond_14
    sget-object p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->NULL_USER:Landroid/content/pm/UserInfo;

    :goto_16
    return-object p0
.end method

.method public final getUserManagerInternal()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/pm/UserManagerInternal;",
            ">;"
        }
    .end annotation

    .line 936
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_e

    .line 937
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 939
    :cond_e
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getVirtualUsers()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 959
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 961
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 962
    :try_start_9
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_f
    if-ge v2, v3, :cond_2d

    .line 963
    iget-object v4, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 965
    invoke-virtual {v4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isCustomEngine()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 966
    invoke-virtual {v4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 969
    :cond_2d
    monitor-exit v1

    return-object v0

    :catchall_2f
    move-exception p0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_9 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public final handleCleanupUser(I)V
    .registers 2

    .line 4559
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->cancelLegacyResetTimeout(I)V

    .line 4561
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->clearLegacyResetStatus(I)V

    return-void
.end method

.method public handleDeviceOwnerChanged()V
    .registers 8

    .line 2989
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkSystemPermission()V

    .line 2991
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 2995
    :cond_a
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    .line 2996
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v1

    const-string v2, "Device Owner has been changed!"

    .line 2998
    invoke-static {v2}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    const-string v2, "Confirming Device Owner information [ Owner : %s, User : %d ]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 3000
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    .line 2999
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3002
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f6

    if-eqz v1, :cond_3b

    goto/16 :goto_f6

    .line 3010
    :cond_3b
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpDatabaseCache:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;

    const-string v2, "do_cleared"

    invoke-virtual {v0, v4, v2, v4}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->putBoolean(ILjava/lang/String;Z)V

    .line 3014
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3015
    :try_start_45
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v2

    if-eqz v2, :cond_52

    const-string p0, "Unexpected condition as per DO\' already has engine"

    .line 3017
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3018
    monitor-exit v0

    return-void

    .line 3020
    :cond_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_45 .. :try_end_53} :catchall_f3

    .line 3022
    invoke-static {v6}, Lcom/android/server/knox/dar/DarUtil;->setDoEnabled(Z)V

    .line 3024
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setDeviceOwner(I)V

    .line 3026
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->welcomeNewUser(I)V

    const/4 v0, 0x4

    .line 3028
    invoke-virtual {p0, v1, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onMasterKeyDerivationRequired(II)V

    .line 3030
    invoke-static {}, Lcom/android/server/knox/dar/DarUtil;->isFileBasedEncryption()Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 3031
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/knox/secure_fs/enc_media"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3032
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7f

    const-string p0, "Failed to set sdp policy due to non-existent target"

    .line 3033
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_f2

    .line 3034
    :cond_7f
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getSdpManagerInternal()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda6;

    invoke-direct {v3, v1, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda6;-><init>(ILjava/io/File;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    .line 3035
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 3034
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_da

    .line 3036
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully set sdp policy to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3039
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    if-eqz p0, :cond_c5

    .line 3042
    invoke-virtual {p0, v1}, Landroid/os/storage/StorageManager;->mountSdpMediaStorage(I)Z

    move-result p0

    if-eqz p0, :cond_c5

    move v4, v6

    .line 3046
    :cond_c5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Result of mount sdp media storage : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_f2

    .line 3048
    :cond_da
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set sdp policy to "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :cond_f2
    :goto_f2
    return-void

    :catchall_f3
    move-exception p0

    .line 3020
    :try_start_f4
    monitor-exit v0
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f3

    throw p0

    :cond_f6
    :goto_f6
    const-string v0, "Device Owner turned out to be ejected..."

    .line 3004
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3006
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpDatabaseCache:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;

    const-string v1, "do_cleared"

    invoke-virtual {v0, v4, v1, v6}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->putBoolean(ILjava/lang/String;Z)V

    .line 3007
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->updateDeviceOwnerStatus()V

    return-void
.end method

.method public final handleDeviceOwnerCleared()V
    .registers 4

    const-string v0, "Device Owner has been cleared!"

    .line 3054
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3057
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3058
    :try_start_9
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v2

    .line 3059
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_21

    if-nez v2, :cond_16

    const-string v0, "Device Owner engine already cleared"

    .line 3061
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_19

    .line 3063
    :cond_16
    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    .line 3065
    :goto_19
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpDatabaseCache:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;

    const-string v0, "do_cleared"

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->putBoolean(ILjava/lang/String;Z)V

    return-void

    :catchall_21
    move-exception p0

    .line 3059
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public final handleEmptyListenerRoll(I)V
    .registers 4

    .line 1914
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;

    if-eqz v0, :cond_1d

    .line 1915
    invoke-virtual {v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1916
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-void
.end method

.method public handleEnforcePwdChange(I)V
    .registers 6

    .line 4657
    iget-boolean v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mIsHandlerReady:Z

    if-eqz v0, :cond_23

    .line 4658
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xe

    const-wide/16 v2, 0x0

    .line 4659
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->quickMessageDelayed(ILjava/lang/Object;J)V

    .line 4660
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Enforce change password for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method public handleLegacyResetPassword(I)V
    .registers 6

    .line 4646
    iget-boolean v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mIsHandlerReady:Z

    if-eqz v0, :cond_23

    .line 4647
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xd

    const-wide/16 v2, 0x0

    .line 4648
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->quickMessageDelayed(ILjava/lang/Object;J)V

    .line 4649
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Legacy force Reset Password for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method public final handlePackageRemoved(Ljava/lang/String;I)V
    .registers 13

    .line 2824
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-eqz v0, :cond_f2

    if-ltz p2, :cond_f2

    .line 2825
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_f2

    :cond_10
    const-string v0, "SdpManagerImpl"

    const-string/jumbo v1, "handlePackageRemoved - PackageName : %s, UserId : %d"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 2830
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    .line 2829
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2832
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_38

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "handlePackageRemoved - Device is not provisioned yet..."

    .line 2833
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2837
    :cond_38
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_43

    .line 2838
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->readEngineList()V

    .line 2840
    :cond_43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2841
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2842
    :try_start_4b
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v6

    :goto_52
    if-ltz v3, :cond_8f

    .line 2843
    iget-object v5, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    if-eqz v5, :cond_8c

    .line 2844
    invoke-virtual {v5}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 2845
    invoke-virtual {v5}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v7

    if-ne v7, p2, :cond_8c

    const-string v7, "SdpManagerImpl"

    .line 2846
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handlePackageRemoved - Add package engine to Removing Engine "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8c
    add-int/lit8 v3, v3, -0x1

    goto :goto_52

    .line 2850
    :cond_8f
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_4b .. :try_end_90} :catchall_ef

    .line 2851
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_94
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    const-string v3, "SdpManagerImpl"

    .line 2852
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handlePackageRemoved - Removing Sdp Engine "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    goto :goto_94

    .line 2856
    :cond_bf
    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/knox/dar/FileUtil;->getEncUserDir(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2857
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_ee

    const-string v1, "SdpManagerImpl"

    const-string/jumbo v3, "handlePackageRemoved - Remove secure package dir : %s [ res : %b ]"

    new-array v2, v2, [Ljava/lang/Object;

    .line 2860
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSecureFileSystemManager:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;

    .line 2861
    invoke-static {p0, p2, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;->-$$Nest$mremovePkgDir(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;ILjava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v6

    .line 2858
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ee
    return-void

    :catchall_ef
    move-exception p0

    .line 2850
    :try_start_f0
    monitor-exit v1
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    throw p0

    :cond_f2
    :goto_f2
    return-void
.end method

.method public final handleSendBroadcastForStateChange(III)V
    .registers 13

    .line 847
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.sdp.SDP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 848
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.SDP_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 850
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendBroadcastAsUser(INTENT_SDP_STATE_CHANGED, state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SdpManagerImpl"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "id"

    .line 851
    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "state"

    .line 852
    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x20

    .line 853
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v5, 0x4000000

    .line 854
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    .line 855
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 856
    iget-object v7, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v0, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendBroadcastAsUser(ACTION_SDP_STATE_CHANGED, state:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.knox.intent.extra.SDP_ENGINE_ID"

    .line 859
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "com.samsung.android.knox.intent.extra.SDP_ENGINE_STATE"

    .line 860
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 861
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 862
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 863
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 864
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final handleStartUser(I)V
    .registers 3

    .line 4551
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 4552
    invoke-static {p0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result p0

    if-nez p0, :cond_b

    return-void

    .line 4555
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Start user : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final handleUserAdded(I)V
    .registers 10

    .line 2866
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "SdpManagerImpl"

    const-string v1, "User %d added"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 2870
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const-string v1, "SdpManagerImpl"

    const-string/jumbo v3, "user added - Is user %d Bmode? %s"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    .line 2874
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    .line 2873
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SdpManagerImpl"

    const-string/jumbo v3, "user added - Is user %d managed profile? %s"

    new-array v6, v4, [Ljava/lang/Object;

    .line 2876
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v2

    .line 2875
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2880
    :try_start_60
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p0

    .line 2881
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_83

    const-string v0, "SdpManagerImpl"

    const-string/jumbo v1, "user added - Has user %d sdp engine? %s"

    new-array v3, v4, [Ljava/lang/Object;

    .line 2883
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    if-eqz p0, :cond_75

    move v5, v2

    :cond_75
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v3, v2

    .line 2882
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_83
    move-exception p0

    .line 2881
    :try_start_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw p0
.end method

.method public final handleUserRemoved(I)V
    .registers 11

    .line 2925
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "SdpManagerImpl"

    .line 2929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeInvalidEngines()V

    .line 2935
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeCustomEngines(I)V

    .line 2939
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2940
    :try_start_26
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    .line 2941
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_144

    if-nez v1, :cond_44

    const-string p0, "SdpManagerImpl"

    .line 2944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove user - Engine not found with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2949
    :cond_44
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    .line 2950
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    .line 2951
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2950
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v2

    const-string v3, "SdpManagerImpl"

    const-string v4, "Remove user - Policy removal with id %d successfully done? %s"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    .line 2953
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v6, v7

    .line 2952
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2955
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2956
    :try_start_77
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 2957
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {v3, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mremoveEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    .line 2958
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {v3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mupdateEngineListLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;)I

    .line 2960
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onEngineRemoved(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    .line 2961
    monitor-exit v2
    :try_end_8e
    .catchall {:try_start_77 .. :try_end_8e} :catchall_141

    .line 2962
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeEngineNative(II)I

    move-result v2

    const-string v3, "SdpManagerImpl"

    const-string v4, "Remove user - Native removal with id %d successfully done? %s"

    new-array v5, v5, [Ljava/lang/Object;

    .line 2964
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v7

    .line 2963
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v3, "SdpEphemeralKey"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/knox/dar/KeyProtector;->delete(Ljava/lang/String;I)Z

    .line 2968
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v3, "SdpTokenHandle"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/knox/dar/KeyProtector;->delete(Ljava/lang/String;I)Z

    .line 2969
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v3, "SdpResetToken"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/knox/dar/KeyProtector;->delete(Ljava/lang/String;I)Z

    .line 2970
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v3, "SdpSessionKey"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/knox/dar/KeyProtector;->delete(Ljava/lang/String;I)Z

    const-string v0, "SdpManagerImpl"

    .line 2972
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove user - Engine remove! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2975
    invoke-static {p1}, Lcom/android/server/knox/dar/FileUtil;->getEncUserDir(I)Ljava/io/File;

    move-result-object v0

    .line 2976
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_140

    .line 2977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing Enc user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " directory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2979
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getPackageManagerImpl()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 2980
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2978
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_127

    const-string p0, "Failed to clean enc user directory"

    .line 2981
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_140

    .line 2983
    :cond_127
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removed Enc user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " directory."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :cond_140
    :goto_140
    return-void

    :catchall_141
    move-exception p0

    .line 2961
    :try_start_142
    monitor-exit v2
    :try_end_143
    .catchall {:try_start_142 .. :try_end_143} :catchall_141

    throw p0

    :catchall_144
    move-exception p0

    .line 2941
    :try_start_145
    monitor-exit v0
    :try_end_146
    .catchall {:try_start_145 .. :try_end_146} :catchall_144

    throw p0
.end method

.method public final hasBiometricTypeTraced(I)Z
    .registers 6

    .line 3188
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_c

    move v2, v0

    goto :goto_d

    :cond_c
    move v2, v1

    :goto_d
    if-eqz v2, :cond_28

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 3193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v0

    const-string p0, "Biometrics detected for user %d [ Type : %d ]"

    .line 3192
    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_3c

    .line 3195
    :cond_28
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Biometrics not detected for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :goto_3c
    return v2
.end method

.method public final hasNoSecurity(I)Z
    .registers 7

    .line 3201
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    .line 3202
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 3204
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v1, v3

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v4, 0x2

    aput-object p1, v1, v4

    const-string p1, "Check security - [ User ID : %d, Quality : %d, None type? %s ]"

    .line 3203
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "SdpManagerImpl"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_33

    if-nez v0, :cond_34

    :cond_33
    move v2, v3

    :cond_34
    return v2
.end method

.method public final initInternalEngineInfo(I)V
    .registers 4

    .line 2361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Engine info initialized for engine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2362
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpDatabaseCache:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;

    invoke-virtual {v0, p1}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->destroy(I)V

    const/4 v0, 0x1

    .line 2364
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->setMasterKeyVersion(II)V

    return-void
.end method

.method public isDefaultPathUser(I)Z
    .registers 2

    .line 311
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isDeviceProvisioned()Z
    .registers 1

    .line 2819
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_c

    .line 2820
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isDeviceProvisioned()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .registers 5

    .line 419
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    .line 420
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 419
    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isEngineOwner(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p0

    return p0
.end method

.method public isInitialized()Z
    .registers 3

    .line 300
    const-class v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    monitor-enter v0

    .line 301
    :try_start_3
    sget-boolean v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSystemReady:Z

    if-nez v1, :cond_e

    iget-boolean p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mIsHandlerReady:Z

    if-eqz p0, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p0, 0x1

    :goto_f
    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 302
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public isLicensed()I
    .registers 4

    .line 355
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 356
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 357
    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    .line 359
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 358
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isLicensed(Landroid/content/Context;II)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_28

    :cond_25
    const/16 p0, -0x9

    goto :goto_29

    :cond_28
    :goto_28
    const/4 p0, 0x0

    :goto_29
    return p0
.end method

.method public final isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .registers 5

    .line 430
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    .line 431
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 430
    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isPrivileged(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p0

    return p0
.end method

.method public isSDPEnabled(I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1590
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1594
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public isSdpMigrating(I)Z
    .registers 4

    .line 1616
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const-string/jumbo v0, "isSdpMigrating"

    .line 1620
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 1622
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1623
    :try_start_11
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p0

    if-nez p0, :cond_19

    .line 1624
    monitor-exit v0

    return v1

    .line 1626
    :cond_19
    invoke-virtual {p0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMigrating()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1f
    move-exception p0

    .line 1627
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public isSdpPackage(ILjava/lang/String;)Z
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2805
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 2806
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->readEngineList()V

    .line 2808
    :cond_b
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_13
    if-ge v1, v0, :cond_33

    .line 2809
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    if-eqz v3, :cond_30

    .line 2810
    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v3

    if-ne v3, p1, :cond_30

    const/4 v2, 0x1

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_33
    return v2
.end method

.method public isSdpSupported()Z
    .registers 5

    .line 323
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 324
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 325
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_33

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v2

    if-nez v2, :cond_33

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_33

    .line 328
    :cond_20
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_27

    return v3

    .line 331
    :cond_27
    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isLDUModel()Z

    move-result v0

    if-eqz v0, :cond_2e

    return v3

    .line 334
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result p0

    return p0

    :cond_33
    :goto_33
    return v3
.end method

.method public isSensitive(Ljava/lang/String;)Z
    .registers 3

    .line 1159
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1162
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getProxy()Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;->isSensitive(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isSupportedDevice()Z
    .registers 2

    const-string p0, "SdpManagerImpl"

    const-string v0, "Knox not supported"

    .line 339
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isSyntheticPasswordEnabledSystemUser(I)Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-nez p1, :cond_c

    .line 3178
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 3179
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isSyntheticPasswordEnabledForSystem()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .registers 5

    .line 408
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    .line 409
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 408
    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isSystemComponent(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p0

    return p0
.end method

.method public final loadInternalEngineInfo(I)V
    .registers 4

    .line 2368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Engine info loaded for engine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2369
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpDatabaseCache:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->preload(I)V

    return-void
.end method

.method public lock(Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1253
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0xa

    return p0

    .line 1258
    :cond_9
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1259
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-nez v1, :cond_2c

    const-string p0, "SdpManagerImpl"

    .line 1261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lock :: Can\'t find engine info "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x5

    .line 1262
    monitor-exit v0

    return p0

    .line 1264
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_6e

    .line 1266
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string p0, "SdpManagerImpl"

    .line 1267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "lock :: Not supported anymore to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x63

    return p0

    .line 1270
    :cond_4d
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_69

    .line 1271
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_69

    .line 1272
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_69

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "lock :: Permission denied to invoke engine control API"

    .line 1273
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x7

    return p0

    .line 1278
    :cond_69
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lockInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result p0

    return p0

    :catchall_6e
    move-exception p0

    .line 1264
    :try_start_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw p0
.end method

.method public final lockFinal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .registers 4

    .line 2401
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, -0x3

    return p0

    .line 2405
    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->nativeOnDeviceLocked(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2404
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 p0, -0xb

    return p0

    .line 2408
    :cond_21
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2409
    :try_start_25
    invoke-virtual {p0, p1, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I

    .line 2410
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public final lockInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .registers 7

    .line 1285
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    .line 1288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lock :: Lock engine for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdpManagerImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lockFinal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result p1

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_39

    new-array v1, v1, [Ljava/lang/Object;

    .line 1293
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string/jumbo v3, "lock :: Successfully done for user %d"

    .line 1292
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->clearManagedCredential(I)V

    goto :goto_52

    :cond_39
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    .line 1297
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v1

    const-string/jumbo v0, "lock :: Failed to lock for user %d... [ rc : %d ]"

    .line 1296
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_52
    return p1
.end method

.method public final lockNative(II)I
    .registers 4

    .line 1308
    invoke-static {p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->nativeOnDeviceLocked(II)I

    move-result p0

    if-eqz p0, :cond_28

    .line 1309
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "lockNative :: failed. "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xb

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public migrate(Ljava/lang/String;)I
    .registers 2

    .line 1636
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result p0

    if-nez p0, :cond_9

    const/16 p0, -0xa

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public onBiometricsAuthenticated(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2750
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2754
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "User %d has been authenticated with biometrics"

    .line 2753
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2757
    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2758
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_37

    .line 2759
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->hasBiometricTypeTraced(I)Z

    move-result v0

    if-eqz v0, :cond_37

    const/16 v0, 0x8

    .line 2760
    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onMasterKeyDerivationRequired(II)V

    :cond_37
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 4

    .line 4581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cleaning up user - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "onCleanupUser"

    .line 4582
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkCallerPermissionFor(Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 4584
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->quickMessage(II)V

    return-void
.end method

.method public onDeviceLocked(I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3071
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 3074
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDeviceLocked : User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3078
    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 3079
    invoke-static {p1}, Lcom/android/server/knox/dar/DarUtil;->isDeviceOwnerUser(I)Z

    move-result v0

    if-nez v0, :cond_37

    .line 3080
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_37

    .line 3081
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onMasterKeyEvictionRequired(I)V

    :cond_37
    return-void
.end method

.method public onDeviceOwnerLocked(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2771
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2775
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "User %d has been locked"

    .line 2774
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    invoke-static {p1}, Lcom/android/server/knox/dar/DarUtil;->isDeviceOwnerUser(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2777
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->hasNoSecurity(I)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2c

    .line 2781
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onMasterKeyEvictionRequired(I)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public onDeviceUnlocked(I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3087
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 3090
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDeviceUnLocked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3094
    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 3095
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 3096
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->hasBiometricTypeTraced(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/16 v0, 0x8

    .line 3097
    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onMasterKeyDerivationRequired(II)V

    goto :goto_4b

    .line 3098
    :cond_3a
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "User has no lock"

    .line 3099
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 3100
    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onMasterKeyDerivationRequired(II)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public final onEngineRemoved(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .registers 6

    .line 2284
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->clearInternalEngineInfo(I)V

    .line 2286
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    monitor-enter v0

    .line 2287
    :try_start_a
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    .line 2288
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_1a

    .line 2290
    monitor-exit v0

    return-void

    .line 2292
    :cond_1a
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_20
    if-ltz p1, :cond_44

    .line 2293
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_46

    .line 2295
    :try_start_28
    iget-object v1, v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->mListener:Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    invoke-interface {v1}, Lcom/samsung/android/knox/dar/sdp/ISdpListener;->onEngineRemoved()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_37
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_2e
    .catchall {:try_start_28 .. :try_end_2d} :catchall_46

    goto :goto_41

    :catch_2e
    move-exception v1

    :try_start_2f
    const-string v2, "SdpManagerImpl"

    const-string v3, "Listener failed"

    .line 2300
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41

    :catch_37
    const-string v1, "SdpManagerImpl"

    const-string v2, "Listener dead"

    .line 2297
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_41
    add-int/lit8 p1, p1, -0x1

    goto :goto_20

    .line 2303
    :cond_44
    monitor-exit v0

    return-void

    :catchall_46
    move-exception p0

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_2f .. :try_end_48} :catchall_46

    throw p0
.end method

.method public onLegacyResetCredentialFinalized(I)V
    .registers 4

    .line 4619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Legacy reset credential policy finalized for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 4621
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->clearLegacyResetStatus(I)V

    return-void
.end method

.method public onLegacyResetCredentialRequested([BII)V
    .registers 8

    .line 4589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Legacy reset credential policy requested for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeoutMins:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 4593
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string p0, "Failed due to invalid token"

    .line 4594
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_67

    .line 4597
    :cond_28
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->cacheManagedToken([BI)V

    .line 4598
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserManagerInternal()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    .line 4600
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4c

    const-string p0, "Unexpected failure while set volatiles"

    .line 4601
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_67

    :cond_4c
    if-gtz p3, :cond_52

    const-wide/32 v0, 0xdbba0

    goto :goto_59

    :cond_52
    int-to-long v0, p3

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :goto_59
    const/16 p1, 0xc

    .line 4606
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->quickMessageDelayed(ILjava/lang/Object;J)V

    const-string p0, "Ready to reset credential!"

    .line 4608
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :goto_67
    return-void
.end method

.method public onLegacyResetCredentialStarted(I)V
    .registers 4

    .line 4613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Legacy reset credential policy started for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 4615
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->cancelLegacyResetTimeout(I)V

    return-void
.end method

.method public final onManagedProfileUnavailable(I)V
    .registers 4

    .line 567
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Managed profile user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " got unavailable"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SdpManagerImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 570
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz p0, :cond_33

    const/4 p1, 0x0

    const-string v0, "com.android.settings/.password.ChooseLockGeneric$InternalActivity"

    const-string v1, "Managed profile unavaliable"

    .line 573
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->removeTaskByCmpName(Ljava/lang/String;ILjava/lang/String;)V

    :cond_33
    return-void
.end method

.method public onMasterKeyAcquired([BI)V
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2518
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2523
    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2524
    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 2528
    :cond_12
    invoke-static {p2}, Lcom/android/server/knox/dar/DarUtil;->isDeviceOwnerUser(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2529
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->restoreMasterKeyIfRequired([BI)V

    .line 2532
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sdp essential key acquired for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "masterKey"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string/jumbo v3, "userId"

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const/4 v3, 0x3

    .line 2533
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v3

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    const/16 v0, -0x63

    .line 2538
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2539
    :try_start_51
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v5

    .line 2540
    monitor-exit v3
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_c6

    .line 2541
    invoke-static {v5}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 2542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t find engine info for user "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_9b

    .line 2545
    :cond_71
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    const-string v3, "Failed to unlock due to invalid key"

    .line 2546
    invoke-static {v3}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_9b

    .line 2549
    :cond_7d
    invoke-virtual {v5}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result v0

    if-ne v0, v4, :cond_97

    .line 2550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Engine already unlocked for user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2554
    :cond_97
    invoke-virtual {p0, p1, v5}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->unlockFinal([BLcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v0

    :goto_9b
    if-nez v0, :cond_a0

    .line 2558
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_a2

    :cond_a0
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2559
    :goto_a2
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 2560
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->cacheManagedCredential([BI)V

    .line 2563
    :cond_ab
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    const-string p0, "Result of sdp unlock : %s [ rc : %d ]"

    new-array p1, v4, [Ljava/lang/Object;

    .line 2566
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    .line 2565
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    return-void

    :catchall_c6
    move-exception p0

    .line 2540
    :try_start_c7
    monitor-exit v3
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c6

    throw p0
.end method

.method public onMasterKeyDerivationRequired(II)V
    .registers 13
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2626
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2631
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2632
    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 2636
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sdp essential key derivation required for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 2637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Issued order is identified as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, -0x63

    .line 2643
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2644
    :try_start_41
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v3

    .line 2645
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_13c

    .line 2646
    invoke-static {v3}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v2, :cond_65

    .line 2647
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find engine info for user "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto/16 :goto_111

    :cond_65
    const/4 v2, 0x4

    if-eq p2, v2, :cond_a4

    const/16 v7, 0x8

    if-eq p2, v7, :cond_85

    const/16 v7, 0x10

    if-eq p2, v7, :cond_85

    .line 2666
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected condition while check order "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_c2

    .line 2661
    :cond_85
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getManagedCredential(I)[B

    move-result-object v0

    .line 2660
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c2

    .line 2662
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Managed credential not found for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_c2

    .line 2654
    :cond_a4
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEphemeralKeyViaProtector(I)[B

    move-result-object v0

    .line 2653
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c2

    .line 2655
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ephemeral key not found for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :cond_c2
    :goto_c2
    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "masterKey"

    aput-object v8, v7, v5

    aput-object v0, v7, v4

    const-string/jumbo v8, "userId"

    aput-object v8, v7, v6

    const/4 v8, 0x3

    .line 2669
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const-string/jumbo v8, "order"

    aput-object v8, v7, v2

    const/4 v2, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v7, v2

    invoke-static {v7}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 2671
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f3

    const-string p2, "Failed to unlock due to invalid key"

    .line 2672
    invoke-static {p2}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_111

    .line 2676
    :cond_f3
    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result p2

    if-ne p2, v6, :cond_10d

    .line 2677
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Engine already unlocked for user "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2681
    :cond_10d
    invoke-virtual {p0, v0, v3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->unlockFinal([BLcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v1

    :goto_111
    if-nez v1, :cond_116

    .line 2685
    sget-object p2, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_118

    :cond_116
    sget-object p2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2686
    :goto_118
    invoke-virtual {p2}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v2

    if-eqz v2, :cond_121

    .line 2687
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->cacheManagedCredential([BI)V

    .line 2689
    :cond_121
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    const-string p0, "Result of sdp unlock : %s [ rc : %d ]"

    new-array p1, v6, [Ljava/lang/Object;

    .line 2692
    invoke-virtual {p2}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    .line 2691
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    return-void

    :catchall_13c
    move-exception p0

    .line 2645
    :try_start_13d
    monitor-exit v2
    :try_end_13e
    .catchall {:try_start_13d .. :try_end_13e} :catchall_13c

    throw p0
.end method

.method public onMasterKeyDeserted([BI)V
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2697
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2701
    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2702
    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 2706
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sdp essential key deserted with user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "masterKey"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v3, 0x2

    const-string/jumbo v4, "userId"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    .line 2707
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    new-array v0, v1, [Ljava/lang/Object;

    .line 2710
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "User %d has none type credential"

    .line 2709
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2711
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->saveEphemeralKeyViaProtector([BI)Z

    return-void
.end method

.method public onMasterKeyEvictionRequired(I)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2572
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2577
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2578
    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 2582
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sdp essential key eviction required for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 2583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    const/16 v1, -0x63

    .line 2588
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2589
    :try_start_47
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v4

    .line 2590
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_b0

    .line 2591
    invoke-static {v4}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 2592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find engine info for user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_87

    .line 2595
    :cond_67
    invoke-virtual {v4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result v1

    if-ne v1, v0, :cond_83

    .line 2596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Engine already locked for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    move v1, v3

    goto :goto_87

    .line 2600
    :cond_83
    invoke-virtual {p0, v4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lockFinal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v1

    :goto_87
    if-nez v1, :cond_8c

    .line 2604
    sget-object v2, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_8e

    :cond_8c
    sget-object v2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2605
    :goto_8e
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v4

    if-eqz v4, :cond_97

    .line 2606
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->clearManageCredentialIfRequired(I)V

    :cond_97
    const-string p0, "Result of sdp lock : %s [ rc : %d ]"

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 2610
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    .line 2609
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    return-void

    :catchall_b0
    move-exception p0

    .line 2590
    :try_start_b1
    monitor-exit v2
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    throw p0
.end method

.method public onMasterKeyInitialized([BI)V
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2467
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2471
    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2472
    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 2476
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sdp essential key initialized for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "masterKey"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v3, 0x2

    const-string/jumbo v4, "userId"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    .line 2477
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 2483
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEphemeralKeyViaProtector(I)[B

    move-result-object v0

    .line 2482
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    const-string v0, "Failed to get ephemeral key"

    .line 2484
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_7a

    .line 2488
    :cond_53
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->rewrapSdpKeys([B[BI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2487
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    const-string v0, "Failed to rewrap sdp essential key"

    .line 2489
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_7a

    .line 2493
    :cond_67
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeEphemeralKeyViaProtector(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2492
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    const-string v0, "Failed to delete ephemeral key"

    .line 2494
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :goto_7a
    move v0, v2

    goto :goto_7d

    :cond_7c
    move v0, v1

    :goto_7d
    if-eqz v0, :cond_b1

    .line 2501
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getLockSettingsInternal()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda5;

    invoke-direct {v4, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const/4 v4, -0x1

    .line 2504
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_b1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2507
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "User %d has none type credential"

    .line 2506
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2508
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->saveEphemeralKeyViaProtector([BI)Z

    .line 2511
    :cond_b1
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    .line 2513
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Result of key adjustment : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final onMigrationInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;[B)I
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, -0x3

    return p0

    :cond_4
    const-string p2, "SdpManagerImpl"

    .line 2432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onMigrationInternal :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2433
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_28

    add-int/lit8 p2, p2, 0x1

    :cond_28
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2d

    add-int/lit8 p2, p2, 0x1

    :cond_2d
    const/4 v1, 0x3

    if-ne p2, v1, :cond_32

    add-int/lit8 p2, p2, 0x1

    :cond_32
    const/4 v1, 0x4

    if-ne p2, v1, :cond_37

    add-int/lit8 p2, p2, 0x1

    :cond_37
    const/4 v1, 0x5

    if-ne p2, v1, :cond_53

    const-string v1, "SdpManagerImpl"

    const-string/jumbo v2, "onMigrationInternal :: version 5 -> 6)"

    .line 2452
    invoke-static {v1, v2}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    add-int/2addr p2, v0

    .line 2455
    :try_start_46
    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setVersion(I)V

    .line 2456
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mstoreEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    .line 2458
    monitor-exit v1

    goto :goto_53

    :catchall_50
    move-exception p0

    monitor-exit v1
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_50

    throw p0

    :cond_53
    :goto_53
    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "onMigrationInternal :: DONE"

    .line 2460
    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onPasswordChanged(II)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2716
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2720
    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2721
    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 2725
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Password has been changed for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_4b

    .line 2729
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2730
    :try_start_2d
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    .line 2731
    monitor-exit p1
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_48

    .line 2733
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_66

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result p1

    if-ne p1, v1, :cond_66

    const-string p1, "Engine is locked after changing to none type."

    .line 2734
    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 2735
    invoke-virtual {p0, p2, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onMasterKeyDerivationRequired(II)V

    goto :goto_66

    :catchall_48
    move-exception p0

    .line 2731
    :try_start_49
    monitor-exit p1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p0

    .line 2737
    :cond_4b
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->doesEphemeralKeyExist(I)Z

    move-result p1

    if-eqz p1, :cond_66

    const-string p1, "According as user %d password changed, remove ephemeral key"

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2739
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2738
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2740
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeEphemeralKeyViaProtector(I)Z

    :cond_66
    :goto_66
    return-void
.end method

.method public onStartUser(I)V
    .registers 6

    .line 4571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "onStartUser"

    .line 4572
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkCallerPermissionFor(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 4574
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getDeviceVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "Mark the beginning of sdp service! [Version : %s]"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    .line 4576
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->quickMessage(II)V

    return-void
.end method

.method public final onStateChange(II)V
    .registers 12

    .line 2095
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 2096
    :try_start_3
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4e

    .line 2099
    invoke-virtual {v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->get()Ljava/util/ArrayList;

    move-result-object v1

    .line 2106
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_1c
    if-ltz v4, :cond_4b

    .line 2108
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_90

    .line 2110
    :try_start_24
    invoke-virtual {v5}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->get()Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    move-result-object v6
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_28} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_28} :catch_35
    .catchall {:try_start_24 .. :try_end_28} :catchall_90

    if-eqz v6, :cond_2c

    move v7, v2

    goto :goto_2d

    :cond_2c
    move v7, v3

    :goto_2d
    if-eqz v7, :cond_43

    .line 2112
    :try_start_2f
    invoke-interface {v6, p2}, Lcom/samsung/android/knox/dar/sdp/ISdpListener;->onStateChange(I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_32} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33
    .catchall {:try_start_2f .. :try_end_32} :catchall_90

    goto :goto_43

    :catch_33
    move-exception v6

    goto :goto_37

    :catch_35
    move-exception v6

    move v7, v3

    .line 2117
    :goto_37
    :try_start_37
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_43

    :catch_3b
    move v7, v3

    :catch_3c
    const-string v6, "SdpManagerImpl"

    const-string v8, "Listener might be dead..."

    .line 2115
    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    :goto_43
    if-nez v7, :cond_48

    .line 2121
    invoke-virtual {v5}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->dispose()V

    :cond_48
    add-int/lit8 v4, v4, -0x1

    goto :goto_1c

    .line 2124
    :cond_4b
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handleEmptyListenerRoll(I)V

    .line 2127
    :cond_4e
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5c

    move p0, v3

    goto :goto_6c

    .line 2128
    :cond_5c
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->size()I

    move-result p0

    :goto_6c
    const-string v1, "SdpManagerImpl"

    const-string/jumbo v4, "onStateChange :: Engine Id : %d, State : %d, Roll Size : %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 2131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    const/4 p1, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, p1

    .line 2130
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2129
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    monitor-exit v0

    return-void

    :catchall_90
    move-exception p0

    monitor-exit v0
    :try_end_92
    .catchall {:try_start_37 .. :try_end_92} :catchall_90

    throw p0
.end method

.method public final onStateChange(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)V
    .registers 7

    .line 1120
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    monitor-enter v0

    .line 1121
    :try_start_3
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    .line 1122
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_13

    .line 1124
    monitor-exit v0

    return-void

    .line 1126
    :cond_13
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_19
    if-ltz p1, :cond_3d

    .line 1127
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_3f

    .line 1129
    :try_start_21
    iget-object v1, v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->mListener:Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    invoke-interface {v1, p2}, Lcom/samsung/android/knox/dar/sdp/ISdpListener;->onStateChange(I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_30
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_26} :catch_27
    .catchall {:try_start_21 .. :try_end_26} :catchall_3f

    goto :goto_3a

    :catch_27
    move-exception v1

    :try_start_28
    const-string v2, "SdpManagerImpl"

    const-string v3, "Listener failed"

    .line 1134
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a

    :catch_30
    const-string v1, "SdpManagerImpl"

    const-string v2, "Listener dead"

    .line 1131
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_3a
    add-int/lit8 p1, p1, -0x1

    goto :goto_19

    .line 1137
    :cond_3d
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception p0

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_28 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public final onSystemReady()V
    .registers 6

    .line 485
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->runSdpCryptoDaemon()V

    .line 486
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->registerReceiver()V

    .line 487
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->updateDeviceOwnerStatus()V

    .line 488
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSecureFileSystemManager:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;->-$$Nest$msecureFileSystemManagerReady(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;)V

    .line 490
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_40

    .line 491
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 492
    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v2

    .line 494
    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->boot(I)I

    move-result v2

    .line 495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SdpEngine boot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SdpManagerImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 500
    :cond_40
    :try_start_40
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeInvalidEngines()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_4d

    :catch_44
    move-exception p0

    const-string v0, "Failed to remove Invalid Engines!"

    .line 502
    invoke-static {v0, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 503
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4d
    const/4 p0, 0x1

    .line 506
    sput-boolean p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSystemReady:Z

    return-void
.end method

.method public final quickMessage(I)V
    .registers 3

    .line 800
    iget-boolean v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mIsHandlerReady:Z

    if-eqz v0, :cond_e

    .line 801
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_24

    .line 803
    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to send a message : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void
.end method

.method public final quickMessage(II)V
    .registers 4

    .line 808
    iget-boolean v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mIsHandlerReady:Z

    if-eqz v0, :cond_f

    .line 809
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_25

    .line 811
    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to send a message : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    return-void
.end method

.method public final quickMessage(III)V
    .registers 5

    .line 816
    iget-boolean v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mIsHandlerReady:Z

    if-eqz v0, :cond_e

    .line 817
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_24

    .line 819
    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to send a message : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void
.end method

.method public final quickMessage(ILandroid/os/Bundle;)V
    .registers 4

    .line 824
    iget-boolean v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mIsHandlerReady:Z

    if-eqz v0, :cond_13

    if-eqz p2, :cond_13

    .line 826
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 827
    invoke-virtual {p0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 828
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_29

    .line 830
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to send a message : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    return-void
.end method

.method public final quickMessageDelayed(ILjava/lang/Object;J)V
    .registers 7

    .line 783
    iget-boolean v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mIsHandlerReady:Z

    if-eqz v0, :cond_2b

    .line 784
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 785
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 787
    :cond_11
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_24

    .line 789
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    goto :goto_2c

    .line 791
    :cond_24
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    invoke-virtual {p0, p2, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p0

    goto :goto_2c

    :cond_2b
    const/4 p0, 0x0

    :goto_2c
    if-nez p0, :cond_44

    .line 795
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to send a message delayed : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    return-void
.end method

.method public final readEngineList()V
    .registers 13

    .line 435
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 439
    :cond_7
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 440
    :try_start_a
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    .line 441
    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mgetEngineListLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;)Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_83

    const/4 v2, 0x0

    move v3, v2

    .line 444
    :goto_14
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_8b

    .line 445
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 446
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "SdpManagerImpl"

    const-string/jumbo v7, "read engine - [%s, %d] found in engine list"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v5, v9, v2

    .line 449
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    .line 448
    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v6, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {v6, v4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mgetEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v6

    if-eqz v6, :cond_6a

    const-string v5, "SdpManagerImpl"

    .line 453
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "read engine - Put "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v5, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 456
    iget-object v4, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    invoke-virtual {v4, v6}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->loadPolicy(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;

    goto :goto_80

    :cond_6a
    const-string v6, "SdpManagerImpl"

    const-string/jumbo v7, "read engine - Can\'t find engine info with [%s, %d]"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v2

    .line 459
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v11

    .line 458
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_80
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_83
    const-string p0, "SdpManagerImpl"

    const-string/jumbo v1, "read engine - No any engine found"

    .line 463
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_8b
    monitor-exit v0

    return-void

    :catchall_8d
    move-exception p0

    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_a .. :try_end_8f} :catchall_8d

    throw p0
.end method

.method public final recordException(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    if-eqz p1, :cond_25

    if-nez p2, :cond_5

    goto :goto_25

    :cond_5
    const-string p0, "Leave a trace of the exception...!"

    .line 875
    invoke-static {p1, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    :try_start_11
    invoke-virtual {p2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 879
    array-length p2, p0

    const/4 v0, 0x0

    :goto_17
    if-ge v0, p2, :cond_25

    aget-object v1, p0, v0

    .line 880
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_22} :catch_25

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :catch_25
    :cond_25
    :goto_25
    return-void
.end method

.method public final recordException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 4

    .line 868
    invoke-static {p1, p3}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->recordException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public registerClient(ILcom/samsung/android/knox/dar/sdp/ISdpListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2028
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p2, :cond_6e

    .line 2033
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_6e

    .line 2037
    :cond_10
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 2038
    :try_start_13
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;

    if-nez v1, :cond_30

    .line 2040
    new-instance v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll-IA;)V

    .line 2041
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2043
    :cond_30
    new-instance v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;ILcom/samsung/android/knox/dar/sdp/ISdpListener;)V

    .line 2044
    invoke-virtual {v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->isValid()Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_41

    .line 2045
    invoke-virtual {v1, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->enroll(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;)Z

    move-result p0

    goto :goto_42

    :cond_41
    move p0, p2

    :goto_42
    const-string v2, "SdpManagerImpl"

    const-string/jumbo v3, "registerClient :: Engine Id = %d, Roll Size = %d, Result = %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 2050
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, p2

    const/4 p1, 0x1

    invoke-virtual {v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v4, p1

    .line 2049
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2048
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    monitor-exit v0

    return-void

    :catchall_6b
    move-exception p0

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_13 .. :try_end_6d} :catchall_6b

    throw p0

    :cond_6e
    :goto_6e
    return-void
.end method

.method public registerListener(Ljava/lang/String;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2182
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0xa

    return p0

    :cond_9
    const-string v0, "SdpManagerImpl"

    const-string/jumbo v1, "registerListener"

    .line 2186
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2193
    :try_start_14
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p1

    if-nez p1, :cond_1d

    const/4 p0, -0x5

    .line 2195
    monitor-exit v0

    return p0

    .line 2196
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_23

    .line 2198
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->registerListenerInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)I

    move-result p0

    return p0

    :catchall_23
    move-exception p0

    .line 2196
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public final registerListenerInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)I
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, -0x5

    return p0

    :cond_4
    const-string v0, "SdpManagerImpl"

    .line 2234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerListener from pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2235
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2234
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    .line 2238
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_47

    .line 2240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2241
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2244
    :cond_47
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    monitor-enter v1

    .line 2245
    :try_start_4a
    new-instance v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;

    .line 2246
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/lang/String;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)V
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_6f

    const/4 p0, 0x0

    .line 2248
    :try_start_54
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->setCaller(I)V

    .line 2249
    invoke-interface {p2}, Lcom/samsung/android/knox/dar/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, v2, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2250
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_65} :catch_66
    .catchall {:try_start_54 .. :try_end_65} :catchall_6f

    goto :goto_6d

    :catch_66
    :try_start_66
    const-string p1, "SdpManagerImpl"

    const-string p2, "Failed to link to listener death"

    .line 2252
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    :goto_6d
    monitor-exit v1

    return p0

    :catchall_6f
    move-exception p0

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_66 .. :try_end_71} :catchall_6f

    throw p0
.end method

.method public final registerReceiver()V
    .registers 5

    .line 510
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_ADDED"

    .line 511
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    .line 512
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 513
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 514
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "SdpManagerImpl.receiver"

    const-string v1, "Broadcast receiver has been registered"

    .line 515
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 518
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    .line 519
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 521
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mPackageEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "Package event receiver has been registered"

    .line 522
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContainerStateReceiver:Landroid/os/ContainerStateReceiver;

    invoke-static {v1, p0}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    const-string p0, "Container state receiver has been registered"

    .line 525
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final removeCustomEngines(I)V
    .registers 9

    .line 2907
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2908
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2909
    :try_start_8
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_10
    if-ltz v2, :cond_48

    .line 2910
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    if-eqz v3, :cond_45

    .line 2911
    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v4

    if-ne v4, p1, :cond_45

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isCustomEngine()Z

    move-result v4

    if-eqz v4, :cond_45

    const-string v4, "SdpManagerImpl"

    .line 2912
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove user - Add Custom engine to Removing Engine "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2913
    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2912
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 2917
    :cond_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_8 .. :try_end_49} :catchall_78

    .line 2918
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    const-string v1, "SdpManagerImpl"

    .line 2919
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove user - Removing Custom engine "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2920
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    goto :goto_4d

    :cond_77
    return-void

    :catchall_78
    move-exception p0

    .line 2917
    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw p0
.end method

.method public final removeDirectoryRecursive(Ljava/io/File;)V
    .registers 8

    .line 4346
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 4347
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 4349
    array-length v2, v0

    move v3, v1

    :goto_f
    if-ge v3, v2, :cond_1e

    aget-object v4, v0, v3

    .line 4350
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4351
    invoke-virtual {p0, v5}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeDirectoryRecursive(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 4355
    :cond_1e
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_34

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p1, p0, v1

    const-string p1, "Failed to delete file: %s"

    .line 4356
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return-void
.end method

.method public removeEngine(Ljava/lang/String;)I
    .registers 4

    .line 1833
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0xa

    return p0

    .line 1838
    :cond_9
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1839
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    .line 1840
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_58

    if-nez v1, :cond_1d

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "removeEngine :: no engine found"

    .line 1842
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x5

    return p0

    .line 1846
    :cond_1d
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string p0, "SdpManagerImpl"

    .line 1847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove :: Not supported anymore to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x63

    return p0

    .line 1850
    :cond_3d
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_53

    .line 1851
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_53

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "remove :: Permission denied to invoke engine control API"

    .line 1852
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x7

    return p0

    .line 1856
    :cond_53
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result p0

    return p0

    :catchall_58
    move-exception p0

    .line 1840
    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public final removeEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .registers 6

    .line 1860
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    .line 1862
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v2, "SdpEphemeralKey"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/knox/dar/KeyProtector;->delete(Ljava/lang/String;I)Z

    .line 1863
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v2, "SdpSessionKey"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/knox/dar/KeyProtector;->delete(Ljava/lang/String;I)Z

    .line 1864
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    invoke-virtual {v1, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->clearLock(I)V

    .line 1865
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    invoke-virtual {v1, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->clean(I)V

    .line 1867
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v0

    if-nez v0, :cond_73

    .line 1869
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1870
    :try_start_31
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1871
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mremoveEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    .line 1872
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mupdateEngineListLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;)I

    .line 1874
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onEngineRemoved(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    .line 1875
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_31 .. :try_end_48} :catchall_70

    .line 1876
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeEngineNative(II)I

    move-result v0

    const-string p0, "SdpManagerImpl"

    .line 1878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove :: successfully engine removed! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    :catchall_70
    move-exception p0

    .line 1875
    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw p0

    :cond_73
    const-string p0, "SdpManagerImpl"

    .line 1880
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove :: failed ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8f
    return v0
.end method

.method public final removeEngineNative(II)I
    .registers 4

    .line 1894
    invoke-static {p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->nativeOnUserRemoved(II)I

    move-result p0

    if-eqz p0, :cond_28

    .line 1895
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "removeEngineNative :: failed "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xb

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public final removeEphemeralKeyViaProtector(I)Z
    .registers 3

    .line 3224
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v0, "SdpEphemeralKey"

    .line 3225
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/KeyProtector;->delete(Ljava/lang/String;I)Z

    move-result p0

    .line 3224
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)Z

    move-result p0

    return p0
.end method

.method public final removeInvalidEngines()V
    .registers 8

    .line 2888
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2889
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2890
    :try_start_8
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_10
    if-ltz v2, :cond_54

    .line 2891
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    if-eqz v3, :cond_51

    .line 2892
    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v4

    if-eqz v4, :cond_51

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    sget-object v5, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->NULL_USER:Landroid/content/pm/UserInfo;

    if-ne v4, v5, :cond_51

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isCustomEngine()Z

    move-result v4

    if-eqz v4, :cond_51

    const-string v4, "SdpManagerImpl"

    .line 2893
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid user - Add Custom engine to Removing Engine "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2894
    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2893
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2895
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_51
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 2898
    :cond_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_8 .. :try_end_55} :catchall_84

    .line 2899
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_59
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    const-string v2, "SdpManagerImpl"

    .line 2900
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid user - Removing Custom engine "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2901
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    goto :goto_59

    :cond_83
    return-void

    :catchall_84
    move-exception p0

    .line 2898
    :try_start_85
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw p0
.end method

.method public final removeSessionKeyViaProtector(I)Z
    .registers 3

    .line 3247
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v0, "SdpSessionKey"

    .line 3248
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/KeyProtector;->delete(Ljava/lang/String;I)Z

    move-result p0

    .line 3247
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)Z

    move-result p0

    return p0
.end method

.method public final removeSpecificKeyViaProtector(Ljava/lang/String;I)Z
    .registers 5

    .line 3371
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3373
    :try_start_4
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    .line 3374
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/KeyProtector;->delete(Ljava/lang/String;I)Z

    move-result p0

    .line 3373
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)Z

    move-result p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 3376
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3377
    throw p0
.end method

.method public final removeTokenHandleViaProtector(I)Z
    .registers 3

    .line 3338
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v0, "SdpTokenHandle"

    .line 3339
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/KeyProtector;->delete(Ljava/lang/String;I)Z

    move-result p0

    .line 3338
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)Z

    move-result p0

    return p0
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1515
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0xa

    return p0

    .line 1520
    :cond_9
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1521
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-nez v1, :cond_2c

    const-string p0, "SdpManagerImpl"

    .line 1523
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "reset :: Can\'t find engine info "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x5

    .line 1524
    monitor-exit v0

    return p0

    .line 1526
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_6e

    .line 1528
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string p0, "SdpManagerImpl"

    .line 1529
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "reset :: Not supported anymore to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x63

    return p0

    .line 1538
    :cond_4d
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_69

    .line 1539
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_69

    .line 1540
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_69

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "reset :: Permission denied to invoke engine control API"

    .line 1541
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x7

    return p0

    .line 1546
    :cond_69
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->resetPasswordInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :catchall_6e
    move-exception p0

    .line 1526
    :try_start_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw p0
.end method

.method public final resetPasswordInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    .line 1554
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v5

    .line 1558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reset password for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 1562
    invoke-virtual {p0, v5}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getResetTokenViaProtector(I)[B

    move-result-object p1

    :goto_24
    move-object v4, p1

    goto :goto_35

    :cond_26
    if-eqz p2, :cond_33

    const-string p1, "UTF-8"

    .line 1565
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    goto :goto_24

    :cond_33
    const/4 p1, 0x0

    goto :goto_24

    .line 1567
    :goto_35
    invoke-static {v4}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    const/4 p0, -0x2

    return p0

    .line 1570
    :cond_3d
    invoke-static {p3}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    const/4 p0, -0x1

    return p0

    :cond_45
    const/16 p1, -0x63

    .line 1575
    invoke-virtual {p0, v5}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getTokenHandleViaProtector(I)J

    move-result-wide v2

    .line 1576
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->setPasswordWithToken(Ljava/lang/String;J[BI)Z

    move-result p0

    if-eqz p0, :cond_55

    const/4 p1, 0x0

    :cond_55
    return p1
.end method

.method public final restoreMasterKeyIfRequired([BI)V
    .registers 6

    .line 3142
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSyntheticPasswordEnabledSystemUser(I)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 3143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check if restoration is required for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3145
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->hasNoSecurity(I)Z

    move-result v0

    if-nez v0, :cond_56

    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->doesEphemeralKeyExist(I)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 3146
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEphemeralKeyViaProtector(I)[B

    move-result-object v0

    .line 3147
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->rewrapSdpKeys([B[BI)Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3a

    .line 3148
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeEphemeralKeyViaProtector(I)Z

    move-result p0

    if-eqz p0, :cond_3a

    move p0, v1

    goto :goto_3b

    :cond_3a
    move p0, v2

    :goto_3b
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 3150
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p1, v1

    const-string p0, "Restore master key for user %d [ Res : %b ]"

    .line 3149
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3151
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    :cond_56
    return-void
.end method

.method public final rewrapSdpKeys([B[BI)Z
    .registers 6

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 v1, 0x1

    aput-object p2, p0, v1

    .line 3159
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->isAnyoneEmptyHere([Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const-string/jumbo p0, "rewrap - Failed to rewrap sdp keys due to invalid input"

    .line 3161
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_2c

    .line 3165
    :cond_16
    invoke-static {p3, p2, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->nativeOnChangePassword(I[B[B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 3164
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    const-string/jumbo p0, "rewrap - Failed to change password"

    .line 3166
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_2c

    :cond_2b
    move v0, v1

    .line 3172
    :goto_2c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Result of rewrapping sdp keys : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    return v0
.end method

.method public final runSdpCryptoDaemon()V
    .registers 3

    const-string/jumbo p0, "persist.sys.knox.sdp_cryptod"

    .line 554
    invoke-static {p0}, Lcom/android/server/knox/dar/DarUtil;->isDaemonRunning(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "SdpManagerImpl"

    if-eqz v0, :cond_11

    const-string p0, "SDP daemon is already running!"

    .line 555
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 557
    :cond_11
    invoke-static {}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->testSdpIoctl()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "Start SDP daemon!"

    .line 558
    invoke-static {v1, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 559
    invoke-static {p0, v0}, Lcom/android/server/knox/dar/DarUtil;->setSystemPropertyBoolean(Ljava/lang/String;Z)V

    goto :goto_26

    :cond_21
    const-string p0, "Failed in fs ping test..."

    .line 561
    invoke-static {v1, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_26
    return-void
.end method

.method public final saveEphemeralKeyViaProtector([BI)Z
    .registers 4

    .line 3219
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v0, "SdpEphemeralKey"

    .line 3220
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/knox/dar/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result p0

    .line 3219
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)Z

    move-result p0

    return p0
.end method

.method public saveResetTokenSafe([BI)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3302
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->cacheManagedToken([BI)V

    return-void
.end method

.method public final saveSessionKeyViaProtector([BI)Z
    .registers 4

    .line 3242
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v0, "SdpSessionKey"

    .line 3243
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/knox/dar/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result p0

    .line 3242
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)Z

    move-result p0

    return p0
.end method

.method public final saveSpecificKeyViaProtector([BLjava/lang/String;I)Z
    .registers 9

    .line 3361
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x2

    :try_start_5
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    .line 3363
    invoke-static {v2}, Lcom/android/server/knox/dar/SecureUtil;->isAnyoneEmptyHere([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    .line 3364
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)Z

    move-result p0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_24

    if-eqz p0, :cond_20

    move v3, v4

    .line 3366
    :cond_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_24
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3367
    throw p0
.end method

.method public final saveTokenHandleViaProtector(JI)Z
    .registers 4

    .line 3332
    invoke-static {p1, p2}, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->longToBytes(J)[B

    move-result-object p1

    .line 3333
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string p2, "SdpTokenHandle"

    .line 3334
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result p0

    .line 3333
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)Z

    move-result p0

    return p0
.end method

.method public saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "saveTokenIntoTrusted"

    .line 4377
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 4380
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_42

    .line 4383
    :cond_13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UTF-8"

    .line 4385
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 4386
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->saveSpecificKeyViaProtector([BLjava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3c

    const/4 p0, 0x0

    goto :goto_3e

    :cond_3c
    const/16 p0, -0x63

    .line 4388
    :goto_3e
    invoke-static {p2}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    return p0

    :cond_42
    :goto_42
    const/4 p0, -0x3

    return p0
.end method

.method public final sdpServiceReady()V
    .registers 4

    const-string v0, "SdpManagerImpl"

    const-string v1, "SdpManagerImpl ready"

    .line 469
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "systemReady"

    .line 470
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 472
    new-instance v1, Landroid/os/HandlerThread;

    const/16 v2, 0xa

    invoke-direct {v1, v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handlerThread:Landroid/os/HandlerThread;

    .line 474
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 475
    new-instance v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    const/4 v1, 0x1

    .line 476
    iput-boolean v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mIsHandlerReady:Z

    const-string v2, "Sending message MSG_SYSTEM_READY to handler"

    .line 478
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->quickMessage(I)V

    const-string/jumbo p0, "systemReady done."

    .line 480
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final sendBroadcastForStateChange(III)V
    .registers 6

    .line 835
    iget-boolean v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mIsHandlerReady:Z

    if-eqz v0, :cond_33

    .line 836
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "userId"

    .line 837
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "engineId"

    .line 838
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "state"

    .line 839
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p2, 0xf

    .line 841
    invoke-virtual {p0, p2, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->quickMessage(ILandroid/os/Bundle;)V

    .line 842
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "change state for user "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :cond_33
    return-void
.end method

.method public final setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, -0x5

    return p0

    .line 1097
    :cond_4
    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setState(I)V

    .line 1098
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onStateChange(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)V

    .line 1104
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onStateChange(II)V

    .line 1110
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v0

    .line 1111
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result p1

    .line 1113
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1114
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->sendBroadcastForStateChange(III)V

    .line 1115
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setMasterKeyVersion(II)V
    .registers 4

    .line 4671
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpDatabaseCache:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;

    const-string/jumbo v0, "smk_ver"

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->putInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setPassword(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1436
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0xa

    return p0

    .line 1441
    :cond_9
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1442
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-nez v1, :cond_2c

    const-string p0, "SdpManagerImpl"

    .line 1444
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set password :: Can\'t find engine info "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x5

    .line 1445
    monitor-exit v0

    return p0

    .line 1447
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_6e

    .line 1449
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string p0, "SdpManagerImpl"

    .line 1450
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "set password :: Not supported anymore to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x63

    return p0

    .line 1453
    :cond_4d
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_69

    .line 1454
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_69

    .line 1455
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_69

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "set password :: Permission denied to invoke engine control API"

    .line 1456
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x7

    return p0

    .line 1461
    :cond_69
    invoke-virtual {p0, v1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->setPasswordInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;)I

    move-result p0

    return p0

    :catchall_6e
    move-exception p0

    .line 1447
    :try_start_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw p0
.end method

.method public final setPasswordInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;)I
    .registers 13

    if-nez p1, :cond_4

    const/4 p0, -0x5

    return p0

    .line 1466
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    .line 1470
    invoke-static {p2}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 p0, -0x1

    return p0

    .line 1474
    :cond_10
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result p1

    const/4 v1, -0x6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_19

    return v1

    .line 1478
    :cond_19
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getManagedCredential(I)[B

    move-result-object p1

    .line 1479
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "SdpManagerImpl"

    if-eqz v3, :cond_3b

    .line 1480
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "set password :: Unexpected condition while derive managed creential for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1485
    :cond_3b
    new-instance v1, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1486
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    .line 1487
    invoke-virtual {v3, p2, v1, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->changePassword(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    .line 1489
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_51

    move v5, v6

    goto :goto_53

    :cond_51
    const/16 v5, -0x63

    :goto_53
    const/4 v7, 0x1

    if-nez v5, :cond_76

    new-array v8, v7, [Ljava/lang/Object;

    .line 1492
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const-string/jumbo v9, "set password :: Successfully done for user %d"

    .line 1491
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "UTF-8"

    .line 1493
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->cacheManagedCredential([BI)V

    goto :goto_8e

    :cond_76
    new-array p0, v2, [Ljava/lang/Object;

    .line 1497
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v7

    const-string/jumbo p2, "set password :: Failed to set password for user %d... [ rc : %d ]"

    .line 1495
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :goto_8e
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->destroy()V

    new-array p0, v2, [Ljava/lang/Object;

    aput-object p1, p0, v6

    aput-object v1, p0, v7

    .line 1500
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->clearAll([Ljava/lang/Object;)V

    return v5
.end method

.method public setSDPMigrating(IZ)V
    .registers 4

    .line 1598
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string/jumbo v0, "setSDPMigrating"

    .line 1602
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 1604
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1605
    :try_start_10
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p1

    if-nez p1, :cond_18

    .line 1606
    monitor-exit v0

    return-void

    .line 1608
    :cond_18
    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setIsMigrating(Z)V

    .line 1609
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mstoreEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    .line 1610
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_39

    const-string p0, "SdpManagerImpl"

    .line 1612
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setSDPMigrating "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_39
    move-exception p0

    .line 1610
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public setSensitive(ILjava/lang/String;)Z
    .registers 4

    .line 1147
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1150
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getProxy()Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;->setSensitive(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public unlock(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1325
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0xa

    return p0

    .line 1330
    :cond_9
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1331
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    .line 1332
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_6d

    if-nez v1, :cond_2c

    const-string p0, "SdpManagerImpl"

    .line 1334
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unlock :: Can\'t find engine info for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x5

    return p0

    .line 1337
    :cond_2c
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string p0, "SdpManagerImpl"

    .line 1338
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unlock :: Not supported anymore to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x63

    return p0

    .line 1341
    :cond_4c
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_68

    .line 1342
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_68

    .line 1343
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_68

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "unlock :: Permission denied to invoke engine control API"

    .line 1344
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x7

    return p0

    .line 1348
    :cond_68
    invoke-virtual {p0, v1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->unlockInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;)I

    move-result p0

    return p0

    :catchall_6d
    move-exception p0

    .line 1332
    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw p0
.end method

.method public final unlockFinal([BLcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .registers 4

    .line 2380
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 2383
    :cond_8
    invoke-static {p2}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, -0x3

    return p0

    .line 2387
    :cond_10
    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->nativeOnDeviceUnlocked(I[B)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2386
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    const/16 p0, -0xb

    return p0

    .line 2390
    :cond_25
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x2

    .line 2391
    :try_start_29
    invoke-virtual {p0, p2, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I

    .line 2392
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :catchall_2f
    move-exception p0

    monitor-exit p1
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public final unlockInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;)I
    .registers 13

    .line 1355
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    .line 1359
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1362
    invoke-static {p2}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_2d

    .line 1364
    :try_start_d
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    invoke-virtual {v1, p2, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_14

    goto :goto_2d

    :catch_14
    move-exception p0

    const-string p1, "SdpManagerImpl"

    .line 1366
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unlock :: Failed to check password user "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_2d
    :goto_2d
    const-string v2, "SdpManagerImpl"

    const-string/jumbo v4, "unlock :: Result of virtual user %d verification : %s"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    .line 1372
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    .line 1370
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    const/16 v4, -0x63

    if-eq v2, v3, :cond_a6

    if-eqz v2, :cond_77

    if-eq v2, v9, :cond_58

    move v3, v4

    goto :goto_a6

    .line 1380
    :cond_58
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v3

    const-string v1, "SdpManagerImpl"

    const-string/jumbo v2, "unlock :: User %d throttled! Please try %d ms later..."

    new-array v4, v5, [Ljava/lang/Object;

    .line 1382
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v9

    .line 1381
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    .line 1387
    :cond_77
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v1

    .line 1389
    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->unlockNative(I[B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1388
    invoke-static {v2}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    const-string v2, "SdpManagerImpl"

    .line 1390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unlock :: Failed in native unlock with user "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto :goto_a3

    :cond_a2
    move v3, v8

    .line 1393
    :goto_a3
    invoke-static {v1}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    :cond_a6
    :goto_a6
    if-nez v3, :cond_c0

    .line 1398
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1399
    :try_start_ab
    invoke-virtual {p0, p1, v5}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I

    .line 1400
    monitor-exit v1
    :try_end_af
    .catchall {:try_start_ab .. :try_end_af} :catchall_bd

    const-string p1, "UTF-8"

    .line 1401
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->cacheManagedCredential([BI)V

    goto :goto_c0

    :catchall_bd
    move-exception p0

    .line 1400
    :try_start_be
    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    throw p0

    :cond_c0
    :goto_c0
    return v3
.end method

.method public final unlockNative(I[B)I
    .registers 4

    if-eqz p2, :cond_2a

    .line 1416
    array-length p0, p2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_8

    goto :goto_2a

    .line 1419
    :cond_8
    invoke-static {p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->nativeOnDeviceUnlocked(I[B)I

    move-result p0

    if-eqz p0, :cond_28

    .line 1420
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unlockNative :: failed. "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xb

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0

    :cond_2a
    :goto_2a
    const/4 p0, -0x3

    return p0
.end method

.method public unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4431
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0xa

    return p0

    :cond_9
    const-string/jumbo v0, "unlockViaTrusted"

    .line 4434
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 4437
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4438
    :try_start_12
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-nez v1, :cond_32

    const-string p0, "SdpManagerImpl"

    .line 4440
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unlockViaTrusted :: Can\'t find engine info with "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x5

    .line 4441
    monitor-exit v0

    return p0

    .line 4443
    :cond_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_12 .. :try_end_33} :catchall_72

    .line 4445
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result p2

    const/4 v0, -0x7

    if-eqz p2, :cond_3b

    return v0

    .line 4448
    :cond_3b
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p2

    if-nez p2, :cond_56

    .line 4449
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p2

    if-nez p2, :cond_56

    .line 4450
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p2

    if-nez p2, :cond_56

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "unlockViaTrusted :: Permission denied to invoke engine control API"

    .line 4451
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 4456
    :cond_56
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 4457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4459
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->unlockViaTrustedInternal(Ljava/lang/String;ILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result p0

    return p0

    :catchall_72
    move-exception p0

    .line 4443
    :try_start_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw p0
.end method

.method public final unlockViaTrustedInternal(Ljava/lang/String;ILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p0, -0x5

    return p0

    .line 4466
    :cond_4
    invoke-virtual {p3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    .line 4470
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getSpecificKeyViaProtector(Ljava/lang/String;I)[B

    move-result-object p1

    .line 4471
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2b

    const-string p0, "SdpManagerImpl"

    .line 4472
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unlockViaTrusted :: Failed to get token for user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0

    :cond_2b
    const/16 p2, -0x63

    .line 4480
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getTokenHandleViaProtector(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_51

    const-string p1, "SdpManagerImpl"

    .line 4482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlockViaTrusted :: Failed to get token handle for user"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4484
    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_57

    .line 4486
    :cond_51
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    invoke-virtual {v3, p1, v1, v2, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    .line 4489
    :goto_57
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v1, :cond_97

    .line 4491
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object p2

    .line 4493
    invoke-virtual {p0, v0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->unlockNative(I[B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4492
    invoke-static {v1}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    const-string v1, "SdpManagerImpl"

    .line 4494
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unlockViaTrusted :: Failed in native unlock with user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4497
    :cond_88
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4498
    :try_start_8b
    invoke-virtual {p0, p3, v3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I

    .line 4499
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_94

    .line 4500
    invoke-static {p2}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    move p2, v2

    goto :goto_97

    :catchall_94
    move-exception p0

    .line 4499
    :try_start_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw p0

    :cond_97
    :goto_97
    const-string p0, "SdpManagerImpl"

    const-string/jumbo p3, "unlockViaTrusted :: Result of virtual user %d verification : %s"

    new-array v1, v3, [Ljava/lang/Object;

    .line 4504
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    .line 4502
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public unregisterClient(ILcom/samsung/android/knox/dar/sdp/ISdpListener;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2063
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p2, :cond_9f

    .line 2068
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-nez v0, :cond_11

    goto/16 :goto_9f

    .line 2072
    :cond_11
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 2073
    :try_start_14
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;

    const/4 v2, 0x0

    if-nez v1, :cond_2d

    const-string p2, "SdpManagerImpl"

    const-string/jumbo v1, "unregisterClient :: Already cleared..."

    .line 2075
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    goto :goto_59

    .line 2077
    :cond_2d
    invoke-virtual {v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->get()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :cond_36
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;

    .line 2078
    invoke-interface {p2}, Lcom/samsung/android/knox/dar/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 2079
    invoke-virtual {v4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->dispose()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 2083
    :cond_56
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handleEmptyListenerRoll(I)V

    .line 2086
    :goto_59
    iget-object p2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_67

    move p0, v2

    goto :goto_77

    .line 2087
    :cond_67
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->size()I

    move-result p0

    :goto_77
    const-string p2, "SdpManagerImpl"

    const-string/jumbo v1, "unregisterClient :: Engine Id = %d, Roll Size = %d, Result = %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 2090
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v4, p1

    const/4 p0, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, p0

    .line 2089
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2088
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    monitor-exit v0

    return-void

    :catchall_9c
    move-exception p0

    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_14 .. :try_end_9e} :catchall_9c

    throw p0

    :cond_9f
    :goto_9f
    return-void
.end method

.method public unregisterListener(Ljava/lang/String;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2212
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0xa

    return p0

    :cond_9
    const-string v0, "SdpManagerImpl"

    const-string/jumbo v1, "unregisterListener"

    .line 2216
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2223
    :try_start_14
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p1

    if-nez p1, :cond_1d

    const/4 p0, -0x5

    .line 2225
    monitor-exit v0

    return p0

    .line 2226
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_23

    .line 2228
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->unregisterListenerInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)I

    move-result p0

    return p0

    :catchall_23
    move-exception p0

    .line 2226
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public final unregisterListenerInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)I
    .registers 10

    if-nez p1, :cond_4

    const/4 p0, -0x5

    return p0

    .line 2262
    :cond_4
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    monitor-enter v0

    .line 2263
    :try_start_7
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    .line 2264
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-nez v1, :cond_18

    .line 2266
    monitor-exit v0

    return v2

    .line 2268
    :cond_18
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1c
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;

    .line 2269
    iget-object v5, v4, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->mListener:Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    invoke-interface {v5}, Lcom/samsung/android/knox/dar/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {p2}, Lcom/samsung/android/knox/dar/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v5, v6, :cond_1c

    .line 2270
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2271
    invoke-interface {p2}, Lcom/samsung/android/knox/dar/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_1c

    .line 2275
    :cond_43
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_52

    .line 2276
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2277
    :cond_52
    monitor-exit v0

    return v2

    :catchall_54
    move-exception p0

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_7 .. :try_end_56} :catchall_54

    throw p0
.end method

.method public final updateDeviceOwnerStatus()V
    .registers 4

    .line 746
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwner(I)Z

    move-result v0

    .line 747
    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->updateDeviceOwnerStatus(Z)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 750
    invoke-static {}, Lcom/android/server/knox/dar/DarUtil;->isDoEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "Device owner status updated! [ Enabled : %b ]"

    .line 749
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SdpManagerImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpDatabaseCache:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;

    const-string v2, "do_cleared"

    invoke-virtual {v0, v1, v2, v1}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v0, 0xa

    .line 754
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->quickMessage(I)V

    :cond_31
    return-void
.end method

.method public final verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 8

    .line 683
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 685
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getLockSettings()Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda1;-><init>([BJI)V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 693
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1d

    .line 695
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 696
    throw p0
.end method

.method public welcomeNewUser(I)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3107
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 3111
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Welcome new user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 3114
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->generateRandomBytes(I)[B

    move-result-object v0

    .line 3117
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->establish([BI)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 3116
    invoke-static {v1}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_37

    const-string p0, "Welcome - Failed to create new engine"

    .line 3118
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_4a

    .line 3122
    :cond_37
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->saveEphemeralKeyViaProtector([BI)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 3121
    invoke-static {v1}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const-string p0, "Welcome - Failed to safekeep sdp ephemeral key"

    .line 3123
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :goto_4a
    move p0, v3

    goto :goto_60

    .line 3127
    :cond_4c
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->generateAndSaveSessionKey(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 3126
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5f

    const-string p0, "Welcome - Failed to prepare session key"

    .line 3128
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :cond_5f
    move p0, v2

    .line 3133
    :goto_60
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 3136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "Result of welcoming new user %d : %s"

    .line 3135
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    return-void
.end method
