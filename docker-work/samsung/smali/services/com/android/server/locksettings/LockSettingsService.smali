.class public Lcom/android/server/locksettings/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;,
        Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;,
        Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;,
        Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;,
        Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;,
        Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;,
        Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;,
        Lcom/android/server/locksettings/LockSettingsService$LocalService;,
        Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;,
        Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;,
        Lcom/android/server/locksettings/LockSettingsService$StorageWatcher;,
        Lcom/android/server/locksettings/LockSettingsService$Injector;,
        Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;,
        Lcom/android/server/locksettings/LockSettingsService$Lifecycle;
    }
.end annotation


# static fields
.field public static final ACTION_CHECK_DUALDAR_POLICY_PACKAGES:Ljava/lang/String; = "android.intent.action.CHECK_DUALDAR_POLICY_PACKAGES"

.field public static final ACTION_DUMP_DUALDAR_PASSWORD:Ljava/lang/String; = "android.intent.action.DUMP_DUALDAR_PASSWORD"

.field public static final ACTION_DUMP_SYNTHETIC_PASSWORD:Ljava/lang/String; = "android.intent.action.DUMP_SYNTHETIC_PASSWORD"

.field public static final ALLOW_FAIL_COUNT:Ljava/lang/String; = "allowfailcount"

.field public static final BIOMETRIC_PERMISSION:Ljava/lang/String; = "android.permission.MANAGE_BIOMETRIC"

.field public static final CLIENT_NAME:Ljava/lang/String; = "clientname"

.field public static final DEBUG:Z = false

.field public static final DEBUG_DUMP:Z

.field public static final EMAIL_ADDRESS:Ljava/lang/String; = "emailaddress"

.field public static final ENABLE_EMERGENCY_CALL:Ljava/lang/String; = "enableemergencycall"

.field public static final EXTRA_CREDENTIAL:Ljava/lang/String; = "cred"

.field public static final EXTRA_FILEPATH:Ljava/lang/String; = "path"

.field public static final EXTRA_TOKEN:Ljava/lang/String; = "token"

.field public static final EXTRA_USERID:Ljava/lang/String; = "urid"

.field public static final FAILED_UNLOCK_ATTEMPT_COUNT:Ljava/lang/String; = "remotelockscreen.failedunlockcount"

.field public static final GK_PW_HANDLE_STORE_DURATION_MS:I = 0x927c0

.field public static final GSI_RUNNING_PROP:Ljava/lang/String; = "ro.gsid.image_running"

.field public static final KNOX_SUPPORT_DAR_SDP_LOG:Z = false

.field public static final KNOX_SUPPORT_DAR_SDP_OR_DUAL:Z = false

.field public static final KNOX_SUPPORT_DAR_SECURE_FOLDER:Z = false

.field public static final KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

.field public static final LOCKED:Ljava/lang/String; = "locked"

.field public static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "remotelockscreen.lockoutdeadline"

.field public static final LOCK_TIME:Ljava/lang/String; = "locktime"

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final PERMANENT_BLOCK_COUNT:Ljava/lang/String; = "permanentblockcount"

.field public static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field public static final PHONE_NUMBER:Ljava/lang/String; = "phonenumber"

.field public static final PREV_SYNTHETIC_PASSWORD_HANDLE_KEY:Ljava/lang/String; = "prev-sp-handle"

.field public static final PROFILE_KEY_IV_SIZE:I = 0xc

.field public static final READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

.field public static final READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

.field public static final REMOTE_LOCK_INTENT:Ljava/lang/String; = "com.samsung.remotelock.CLIENT_WAKEUP"

.field public static final REMOTE_LOCK_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.REMOTELOCK"

.field public static final SEPARATE_PROFILE_CHALLENGE_KEY:Ljava/lang/String; = "lockscreen.profilechallenge"

.field public static final SKIP_PIN_CONTAINER:Ljava/lang/String; = "skippin"

.field public static final SYNTHETIC_PASSWORD_UPDATE_TIME_KEY:Ljava/lang/String; = "sp-handle-ts"

.field public static final SYSTEM_CREDENTIAL_UIDS:[I

.field public static final TAG:Ljava/lang/String; = "LockSettingsService"

.field public static final TAG_SDP:Ljava/lang/String; = "LockSettingsService.SDP"

.field public static final USER_SERIAL_NUMBER_KEY:Ljava/lang/String; = "serial-number"

.field public static final VALID_SETTINGS:[Ljava/lang/String;


# instance fields
.field public final mActivityManager:Landroid/app/IActivityManager;

.field public mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;

.field public final mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/IRemoteLockMonitorCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

.field public mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

.field public final mDarVirtualLock:Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;

.field public final mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

.field public final mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

.field public final mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;

.field public mFirstApiLevel:I

.field public mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field public final mGatekeeperPasswords:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mHasSecureLockScreen:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

.field public final mJavaKeyStore:Ljava/security/KeyStore;

.field public final mKeyStore:Landroid/security/KeyStore;

.field public mLockTypeForPasswordCheck:I

.field public mMaintenanceModeCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mMaintenanceModeListener:Lcom/android/server/pm/UserManagerInternal$MaintenanceModeLifecycleListener;

.field public mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public mPassword:[B

.field public final mPendingVerifiedResults:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;",
            ">;"
        }
    .end annotation
.end field

.field public final mRandom:Ljava/util/Random;

.field public final mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

.field public final mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

.field public mRemoteCallback:Landroid/os/IRemoteCallback;

.field public final mSdpLockSettings:Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;

.field public final mSeparateChallengeLock:Ljava/lang/Object;

.field public mShellCommandCallback:Landroid/os/IRemoteCallback;

.field public final mSpDump:Lcom/android/server/locksettings/SyntheticPasswordDump;

.field public final mSpDumpReceiver:Landroid/content/BroadcastReceiver;

.field public final mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

.field public final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mStorageManager:Landroid/os/storage/IStorageManager;

.field public final mStorageWatcher:Lcom/android/server/utils/Watcher;

.field public final mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

.field public final mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

.field public final mUserManager:Landroid/os/UserManager;

.field public mUserManagerCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/UserHandle;",
            "Landroid/os/UserManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserPasswordMetrics:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/admin/PasswordMetrics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1PKcEk0ViFxZuHVLU6q-aL_zjPM(Lcom/android/server/locksettings/LockSettingsService;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->lambda$getKnoxEncryptionNotificationTitle$3()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1cV7ku39qATo3cKfFZMSlghTLvw(Lcom/android/server/locksettings/LockSettingsService;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->lambda$getEncryptionNotificationDetail$5()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3yjeNalHdkCuCwefGasaLZUHXi4(Lcom/android/server/locksettings/LockSettingsService;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->lambda$storeGatekeeperPasswordTemporarily$17(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$8J6KUr7Op7Q4laSYt_FWDwOYHlY(ILcom/android/server/pm/PersonaManagerService;)Ljava/lang/Boolean;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->lambda$getKnoxEncryptionNotificationTitle$1(ILcom/android/server/pm/PersonaManagerService;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9WAiFJ6oqq8x6m6zaqJE0dO6K2I(Lcom/android/server/locksettings/LockSettingsService;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->lambda$getKnoxEncryptionNotificationTitle$4()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EHLLekO8N8m0kIPCJEZ-KDifmTg(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->lambda$removeBiometricsForUser$18(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GfUll97godDyGoe_0SFzZjNQJdY(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->lambda$setLockCredentialWithToken$19(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$M-MfqQtA0PxSaEwVvkmQ5CKo-Ys(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->lambda$notifyPasswordChanged$16(Lcom/android/internal/widget/LockscreenCredential;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$N7-0oVUDV5oj5679Vm7AnP0KDhU(ILcom/android/server/pm/PersonaManagerService;)Ljava/lang/Boolean;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->lambda$getKnoxEncryptionNotificationMessage$9(ILcom/android/server/pm/PersonaManagerService;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RiMo8maazdNLO15dJre-cpjjrh4(Lcom/android/server/locksettings/LockSettingsService;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->lambda$getKnoxEncryptionNotificationDetail$7()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$S3R_qBk2E4mhsHEfwm4195vN0Z8(ILcom/android/server/pm/PersonaManagerService;)Ljava/lang/Boolean;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->lambda$getKnoxEncryptionNotificationDetail$6(ILcom/android/server/pm/PersonaManagerService;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$X5NzQ9CwovQFQCrouiV5miy_byg(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->lambda$notifySeparateProfileChallengeChanged$12(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ck0mronOXqYR8PxQCHNRFanHxVw(Lcom/android/server/locksettings/LockSettingsService;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->lambda$getEncryptionNotificationMessage$8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dAtxElwE3P8IJsM_ZRaDb-gMP9c(Lcom/android/server/locksettings/LockSettingsService;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->lambda$getEncryptionNotificationTitle$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hgdy35ronFzJ5HZT7Ei8dz9Aczg()V
    .registers 0

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->lambda$scheduleGc$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$ilDOF3jObv4D3eSnGTQP9BwUDh0(Lcom/android/server/locksettings/LockSettingsService;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->lambda$getKnoxEncryptionNotificationMessage$10()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pWcmQ-JHcw_RjJVcTZoZFbEqt-k(Lcom/android/server/locksettings/LockSettingsService;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->lambda$getKnoxEncryptionNotificationTitle$2()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vpICfuVMDg6L5JpyDLskGJdjqs8(Lcom/android/server/locksettings/LockSettingsService;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->lambda$getKnoxEncryptionNotificationMessage$11()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xQrY_NlXOYhLd3xEtmqLYKXXRPI(Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;JI)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->lambda$addWeakEscrowToken$14(Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;JI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDarLockSettings(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDarManagerService(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/knox/dar/DarManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDualDarAuthUtils(Lcom/android/server/locksettings/LockSettingsService;)Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDualDarLockSettings(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingVerifiedResults(Lcom/android/server/locksettings/LockSettingsService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mPendingVerifiedResults:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRebootEscrowManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/RebootEscrowManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSpDump(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordDump;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpDump:Lcom/android/server/locksettings/SyntheticPasswordDump;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStrongAuth(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmMaintenanceModeCallback(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/function/Consumer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mMaintenanceModeCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddEscrowToken(Lcom/android/server/locksettings/LockSettingsService;[BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->addEscrowToken([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$maddListenerForMaintenanceMode(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->addListenerForMaintenanceMode(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckWeaverStatus(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWeaverStatus()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcleanupDataForReusedUserIdIfNecessary(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->cleanupDataForReusedUserIdIfNecessary(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdisableEscrowTokenOnNonManagedDevicesIfNeeded(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mensureProfileKeystoreUnlocked(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->ensureProfileKeystoreUnlocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgateKeeperClearSecureUserId(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetDarManagerService(Lcom/android/server/locksettings/LockSettingsService;)Ljava/util/Optional;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getDarManagerService()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhideEncryptionNotification(Lcom/android/server/locksettings/LockSettingsService;Landroid/os/UserHandle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misDeviceOwner(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isDeviceOwner(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misEnterpriseUser(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misEscrowTokenActive(Lcom/android/server/locksettings/LockSettingsService;JI)Z
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEscrowTokenActive(JI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misKnoxAdminActivated(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isKnoxAdminActivated(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misProfileWithUnifiedLock(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misSyntheticPasswordBasedCredentialLocked(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misUserSecure(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mloadEscrowData(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->loadEscrowData()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mloadPasswordMetrics(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Landroid/app/admin/PasswordMetrics;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->loadPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Landroid/app/admin/PasswordMetrics;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmigrateOldDataAfterSystemReady(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateOldDataAfterSystemReady()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monChange(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->onChange()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monCredentialVerified(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Landroid/app/admin/PasswordMetrics;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Landroid/app/admin/PasswordMetrics;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPostPasswordChanged(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->onPostPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrefreshWeaverSlots(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->refreshWeaverSlots()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveEscrowToken(Lcom/android/server/locksettings/LockSettingsService;JI)Z
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->removeEscrowToken(JI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mremoveUser(Lcom/android/server/locksettings/LockSettingsService;IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->removeUser(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetLockCredentialWithAuthTokenLocked(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithAuthTokenLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$msetLockCredentialWithToken(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetSyntheticPasswordTryHandleLocked(Lcom/android/server/locksettings/LockSettingsService;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->setSyntheticPasswordTryHandleLocked(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetUserPasswordMetrics(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mspBasedDoVerifyCredential(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->spBasedDoVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mspBasedSetLockCredentialInternalLocked(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->spBasedSetLockCredentialInternalLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mtryDeriveAuthTokenForUnsecuredPrimaryUser(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->tryDeriveAuthTokenForUnsecuredPrimaryUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munlockUserWithToken(Lcom/android/server/locksettings/LockSettingsService;J[BI)Z
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->unlockUserWithToken(J[BI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdatePasswordHistory(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->updatePasswordHistory(Lcom/android/internal/widget/LockscreenCredential;I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 16

    .line 339
    sget-boolean v0, Lcom/samsung/android/knox/dar/DarRune;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    sput-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    const-string/jumbo v0, "ro.build.type"

    .line 356
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userdebug"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 357
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    sput-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->DEBUG_DUMP:Z

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 371
    fill-array-data v0, :array_80

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    const-string/jumbo v1, "lockscreen.lockedoutpermanently"

    const-string/jumbo v2, "lockscreen.patterneverchosen"

    const-string/jumbo v3, "lockscreen.password_type"

    const-string/jumbo v4, "lockscreen.password_type_alternate"

    const-string/jumbo v5, "lockscreen.password_salt"

    const-string/jumbo v6, "lockscreen.disabled"

    const-string/jumbo v7, "lockscreen.options"

    const-string/jumbo v8, "lockscreen.biometric_weak_fallback"

    const-string/jumbo v9, "lockscreen.biometricweakeverchosen"

    const-string/jumbo v10, "lockscreen.power_button_instantly_locks"

    const-string/jumbo v11, "lockscreen.passwordhistory"

    const-string/jumbo v12, "lock_pattern_autolock"

    const-string/jumbo v13, "lock_biometric_weak_flags"

    const-string/jumbo v14, "lock_pattern_visible_pattern"

    const-string/jumbo v15, "lock_pattern_tactile_feedback_enabled"

    .line 3659
    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    const-string/jumbo v1, "lock_screen_owner_info"

    .line 3678
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    const-string/jumbo v0, "lockscreen.password_salt"

    const-string/jumbo v1, "lockscreen.passwordhistory"

    const-string/jumbo v2, "lockscreen.password_type"

    const-string/jumbo v3, "lockscreen.profilechallenge"

    .line 3684
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    return-void

    :array_80
    .array-data 4
        0x3f8
        0x0
        0x3e8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 758
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;-><init>(Lcom/android/server/locksettings/LockSettingsService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService$Injector;)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 762
    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    .line 289
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    .line 291
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    .line 322
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    .line 374
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManagerCache:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 1140
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mMaintenanceModeCallback:Ljava/util/function/Consumer;

    .line 1142
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/LockSettingsService$1;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mMaintenanceModeListener:Lcom/android/server/pm/UserManagerInternal$MaintenanceModeLifecycleListener;

    .line 1256
    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$3;

    invoke-direct {v3, p0}, Lcom/android/server/locksettings/LockSettingsService$3;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 5214
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    .line 5957
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$8;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/LockSettingsService$8;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpDumpReceiver:Landroid/content/BroadcastReceiver;

    .line 7205
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mPendingVerifiedResults:Landroid/util/SparseArray;

    .line 763
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 764
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 765
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    .line 766
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getJavaKeyStore()Ljava/security/KeyStore;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    .line 767
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getRecoverableKeyStoreManager()Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 768
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getServiceThread()Lcom/android/server/ServiceThread;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getHandler(Lcom/android/server/ServiceThread;)Landroid/os/Handler;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 769
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStrongAuth()Lcom/android/server/locksettings/LockSettingsStrongAuth;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 770
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    .line 772
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_ADDED"

    .line 773
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_STARTING"

    .line 774
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_REMOVED"

    .line 775
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 785
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorage()Lcom/android/server/locksettings/LockSettingsStorage;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 786
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 787
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 788
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 789
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStrongAuthTracker()Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    .line 790
    invoke-virtual {v3, v10}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->register(Lcom/android/server/locksettings/LockSettingsStrongAuth;)V

    .line 791
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    .line 792
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iput-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mRandom:Ljava/util/Random;

    .line 794
    invoke-virtual {p1, v2}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getSyntheticPasswordManager(Lcom/android/server/locksettings/LockSettingsStorage;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 795
    invoke-virtual {p1, v8}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getManagedProfilePasswordCache(Ljava/security/KeyStore;)Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    .line 796
    new-instance v4, Lcom/android/server/locksettings/BiometricDeferredQueue;

    invoke-direct {v4, v1, v3, v9}, Lcom/android/server/locksettings/BiometricDeferredQueue;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/SyntheticPasswordManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    .line 798
    new-instance v4, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;

    invoke-direct {v4, p0, v0}, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks-IA;)V

    invoke-virtual {p1, v4, v2}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getRebootEscrowManager(Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;)Lcom/android/server/locksettings/RebootEscrowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 810
    new-instance p1, Lcom/android/server/locksettings/SyntheticPasswordDump;

    invoke-direct {p1, v1, v3, p0}, Lcom/android/server/locksettings/SyntheticPasswordDump;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpDump:Lcom/android/server/locksettings/SyntheticPasswordDump;

    .line 811
    new-instance p1, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    invoke-direct {p1, p0, p0}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    .line 812
    new-instance p1, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;

    invoke-direct {p1, p0}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSdpLockSettings:Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;

    .line 813
    new-instance p1, Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;

    invoke-direct {p1, p0}, Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;

    .line 814
    new-instance p1, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;

    invoke-direct {p1, p0, v0}, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock-IA;)V

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarVirtualLock:Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;

    .line 815
    new-instance p1, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-direct {p1, v1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    const-string/jumbo p1, "ro.product.first_api_level"

    const/4 v1, 0x0

    .line 819
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mFirstApiLevel:I

    .line 822
    const-class p1, Lcom/android/internal/widget/LockSettingsInternal;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$LocalService;

    invoke-direct {v1, p0, v0}, Lcom/android/server/locksettings/LockSettingsService$LocalService;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$LocalService-IA;)V

    invoke-static {p1, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 824
    new-instance p1, Lcom/android/server/locksettings/LockSettingsService$StorageWatcher;

    invoke-direct {p1, p0, v0}, Lcom/android/server/locksettings/LockSettingsService$StorageWatcher;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$StorageWatcher-IA;)V

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageWatcher:Lcom/android/server/utils/Watcher;

    .line 825
    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public static credentialTypeToString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_27

    const/4 v0, 0x1

    if-eq p0, v0, :cond_24

    const/4 v0, 0x3

    if-eq p0, v0, :cond_21

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1e

    .line 4767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    const-string p0, "Password"

    return-object p0

    :cond_21
    const-string p0, "Pin"

    return-object p0

    :cond_24
    const-string p0, "Pattern"

    return-object p0

    :cond_27
    const-string p0, "None"

    return-object p0
.end method

.method public static isDeviceEncryptionEnabled()Z
    .registers 1

    .line 2643
    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    move-result v0

    return v0
.end method

.method public static isSEPLiteSecureFolder(I)Z
    .registers 1

    .line 5920
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$addWeakEscrowToken$14(Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;JI)V
    .registers 4

    .line 2724
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;->onWeakEscrowTokenActivated(JI)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception p0

    const-string p1, "LockSettingsService"

    const-string p2, "Exception while notifying weak escrow token has been activated"

    .line 2726
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method private synthetic lambda$getEncryptionNotificationDetail$5()Ljava/lang/String;
    .registers 2

    .line 957
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const v0, 0x1040b49

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getEncryptionNotificationMessage$8()Ljava/lang/String;
    .registers 2

    .line 978
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const v0, 0x1040b4c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getEncryptionNotificationTitle$0()Ljava/lang/String;
    .registers 2

    .line 925
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const v0, 0x1040b50

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getKnoxEncryptionNotificationDetail$6(ILcom/android/server/pm/PersonaManagerService;)Ljava/lang/Boolean;
    .registers 2

    .line 966
    invoke-virtual {p1, p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaUserHasBeenShutdownBefore(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getKnoxEncryptionNotificationDetail$7()Ljava/lang/String;
    .registers 2

    .line 969
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const v0, 0x1040b4b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getKnoxEncryptionNotificationMessage$10()Ljava/lang/String;
    .registers 2

    .line 991
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const v0, 0x1040b4f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getKnoxEncryptionNotificationMessage$11()Ljava/lang/String;
    .registers 2

    .line 995
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const v0, 0x1040b53

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getKnoxEncryptionNotificationMessage$9(ILcom/android/server/pm/PersonaManagerService;)Ljava/lang/Boolean;
    .registers 2

    .line 988
    invoke-virtual {p1, p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaUserHasBeenShutdownBefore(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getKnoxEncryptionNotificationTitle$1(ILcom/android/server/pm/PersonaManagerService;)Ljava/lang/Boolean;
    .registers 2

    .line 935
    invoke-virtual {p1, p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaUserHasBeenShutdownBefore(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getKnoxEncryptionNotificationTitle$2()Ljava/lang/String;
    .registers 2

    .line 941
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const v0, 0x1040ecb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getKnoxEncryptionNotificationTitle$3()Ljava/lang/String;
    .registers 2

    .line 945
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const v0, 0x1040eca

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getKnoxEncryptionNotificationTitle$4()Ljava/lang/String;
    .registers 2

    .line 949
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const v0, 0x1040b55

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$notifyPasswordChanged$15(Landroid/app/admin/PasswordMetrics;I)V
    .registers 3

    .line 3422
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->reportPasswordChanged(Landroid/app/admin/PasswordMetrics;I)V

    .line 3425
    const-class p0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerInternal;->reportPasswordChanged(I)V

    return-void
.end method

.method private synthetic lambda$notifyPasswordChanged$16(Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 3

    .line 3431
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    .line 3432
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    move-result-object p1

    .line 3431
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->reportPasswordChanged(Landroid/app/admin/PasswordMetrics;I)V

    .line 3434
    const-class p0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerInternal;->reportPasswordChanged(I)V

    return-void
.end method

.method public static synthetic lambda$notifySeparateProfileChallengeChanged$12(I)V
    .registers 2

    .line 1743
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v0, :cond_d

    .line 1746
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->reportSeparateProfileChallengeChanged(I)V

    :cond_d
    return-void
.end method

.method private synthetic lambda$removeBiometricsForUser$18(I)V
    .registers 3

    .line 4249
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeAllFingerprintForUser(I)V

    .line 4250
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeAllFaceForUser(I)V

    .line 4253
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mMaintenanceModeCallback:Ljava/util/function/Consumer;

    if-eqz p1, :cond_12

    .line 4254
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 4255
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mMaintenanceModeCallback:Ljava/util/function/Consumer;

    :cond_12
    return-void
.end method

.method public static synthetic lambda$scheduleGc$20()V
    .registers 0

    .line 4959
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 4960
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 4961
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public static synthetic lambda$scheduleGc$21()V
    .registers 0

    .line 4965
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 4966
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 4967
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private synthetic lambda$setLockCredentialWithToken$19(I)V
    .registers 3

    const/4 v0, 0x0

    .line 4652
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    return-void
.end method

.method public static synthetic lambda$setLong$13(ILcom/android/server/pm/PersonaManagerService;)V
    .registers 2

    .line 1767
    invoke-virtual {p1, p0}, Lcom/android/server/pm/PersonaManagerService;->unsetTwoFactorValueIfNeeded(I)V

    return-void
.end method

.method private synthetic lambda$storeGatekeeperPasswordTemporarily$17(J)V
    .registers 7

    .line 4025
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    monitor-enter v0

    :try_start_3
    const-string v1, "LockSettingsService"

    .line 4026
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4027
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 4028
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public static pinOrPasswordQualityToCredentialType(I)I
    .registers 4

    .line 1885
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->isQualitySmartCard(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x6

    return p0

    .line 1889
    :cond_8
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->isQualityAlphabeticPassword(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x4

    return p0

    .line 1892
    :cond_10
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->isQualityNumericPin(I)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p0, 0x3

    return p0

    .line 1895
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quality is neither Pin nor password: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static secretFromCredential(Lcom/android/internal/widget/LockscreenCredential;)[B
    .registers 4

    :try_start_0
    const-string v0, "SHA-512"

    .line 2920
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "Android FBE credential hash"

    .line 2922
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0x80

    .line 2924
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 2925
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 2926
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 2927
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_20
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_20} :catch_21

    return-object p0

    .line 2929
    :catch_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "NoSuchAlgorithmException for SHA-512"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static timestampToString(J)Ljava/lang/String;
    .registers 4

    .line 4753
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHex([B)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    const/4 v1, 0x0

    .line 5606
    :goto_3
    array-length v2, p0

    if-ge v1, v2, :cond_3b

    .line 5607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p0, v1

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    const-string v3, "0123456789ABCDEF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5608
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p0, v1

    and-int/lit8 v0, v0, 0xf

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3b
    return-object v0
.end method


# virtual methods
.method public final activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 12

    .line 4561
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 4562
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    .line 4563
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "LockSettingsService"

    const-string v5, "activateEscrowTokens: %x %d "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 4564
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4565
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, v2, v3, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    goto :goto_10

    .line 4567
    :cond_42
    monitor-exit v0

    return-void

    :catchall_44
    move-exception p0

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw p0
.end method

.method public final addEscrowToken([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .registers 13

    .line 4493
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    if-eqz v0, :cond_25

    .line 4494
    invoke-static {p3}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 4495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add escrow token for virtual user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 4496
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarVirtualLock:Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->addEscrowToken([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide p0

    return-wide p0

    .line 4500
    :cond_25
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 4504
    :try_start_28
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_54

    .line 4505
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 4507
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    .line 4506
    invoke-virtual {p0, v2, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v2

    goto :goto_54

    .line 4521
    :cond_3e
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v3

    .line 4522
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    .line 4523
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v5

    const/4 v7, 0x0

    move v6, p3

    .line 4522
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 4526
    :cond_54
    :goto_54
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 4527
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    .line 4534
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v1

    if-eqz v1, :cond_66

    goto :goto_6e

    .line 4535
    :cond_66
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Escrow token is disabled on the current user"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4538
    :cond_6e
    :goto_6e
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedSyntheticPassword([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide p1

    if-eqz v2, :cond_7b

    .line 4552
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p1, p2, v2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    .line 4555
    :cond_7b
    monitor-exit v0

    return-wide p1

    :catchall_7d
    move-exception p0

    .line 4556
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_28 .. :try_end_7f} :catchall_7d

    throw p0
.end method

.method public final addListenerForMaintenanceMode(I)V
    .registers 4

    const-string v0, "LockSettingsService"

    const/16 v1, 0x4d

    if-eq p1, v1, :cond_c

    const-string p0, "Not MaintenanceMode"

    .line 1155
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1159
    :cond_c
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mMaintenanceModeListener:Lcom/android/server/pm/UserManagerInternal$MaintenanceModeLifecycleListener;

    invoke-virtual {p1, p0}, Lcom/android/server/pm/UserManagerInternal;->addMaintenanceModeLifecycleListener(Lcom/android/server/pm/UserManagerInternal$MaintenanceModeLifecycleListener;)V

    const-string p0, "addListener for MaintenanceMode"

    .line 1161
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addLog(ILjava/lang/String;)V
    .registers 3

    .line 5625
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    return-void
.end method

.method public final addUserKeyAuth(I[B[B)V
    .registers 7

    .line 2963
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    if-eqz v0, :cond_b

    .line 2964
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 2966
    :cond_b
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2967
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2975
    :try_start_15
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/storage/IStorageManager;->addUserKeyAuth(II[B[B)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1c} :catch_22
    .catchall {:try_start_15 .. :try_end_1c} :catchall_20

    .line 2979
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_20
    move-exception p0

    goto :goto_3a

    :catch_22
    move-exception p0

    .line 2977
    :try_start_23
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to add new key to vold "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_20

    .line 2979
    :goto_3a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2980
    throw p0
.end method

.method public addWeakEscrowToken([BILcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)J
    .registers 7

    .line 2720
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    const-string v0, "Listener can not be null."

    .line 2721
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2722
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p3}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)V

    .line 2729
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 p3, 0x1

    .line 2731
    :try_start_12
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/server/locksettings/LockSettingsService;->addEscrowToken([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide p0
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_1a

    .line 2733
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide p0

    :catchall_1a
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2734
    throw p0
.end method

.method public final applyRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    .line 5287
    iget v3, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    .line 5288
    iget-boolean v4, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    .line 5289
    iget-object v5, v2, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    check-cast v5, Ljava/lang/String;

    .line 5290
    iget-object v6, v2, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    check-cast v6, Ljava/lang/String;

    .line 5291
    iget-boolean v7, v2, Lcom/android/internal/widget/RemoteLockInfo;->enableEmergencyCall:Z

    .line 5292
    iget-object v8, v2, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    check-cast v8, Ljava/lang/String;

    .line 5293
    iget-object v9, v2, Lcom/android/internal/widget/RemoteLockInfo;->emailAddress:Ljava/lang/CharSequence;

    check-cast v9, Ljava/lang/String;

    .line 5294
    iget v10, v2, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    int-to-long v10, v10

    .line 5295
    iget-wide v12, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    .line 5296
    iget v14, v2, Lcom/android/internal/widget/RemoteLockInfo;->permanentBlockCount:I

    int-to-long v14, v14

    move-wide/from16 v16, v14

    .line 5297
    iget-boolean v14, v2, Lcom/android/internal/widget/RemoteLockInfo;->skipPinContainer:Z

    const-string/jumbo v15, "locked"

    if-eqz v4, :cond_fc

    .line 5302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 5303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "message"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "phonenumber"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v0}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "enableemergencycall"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7, v0}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 5306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "clientname"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8, v0}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "emailaddress"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v9, v0}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "allowfailcount"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v10, v11, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 5309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "locktime"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v12, v13, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 5310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "permanentblockcount"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-wide/from16 v4, v16

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 5311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "skippin"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v14, v0}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    const/4 v4, 0x0

    goto :goto_13b

    .line 5313
    :cond_fc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 5314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "remotelockscreen.lockoutdeadline"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v2, v5, v6, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 5315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "remotelockscreen.failedunlockcount"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 5318
    :goto_13b
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    const-string v2, "failed changeRemoteLockState callback!"

    const-string v3, "LockSettingsService"

    if-eqz v0, :cond_15d

    move-object/from16 v5, p2

    .line 5321
    :try_start_14f
    invoke-interface {v0, v5}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_152
    .catch Landroid/os/RemoteException; {:try_start_14f .. :try_end_152} :catch_153

    goto :goto_15f

    :catch_153
    move-exception v0

    move-object v6, v0

    .line 5323
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5324
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v4

    goto :goto_160

    :cond_15d
    move-object/from16 v5, p2

    :goto_15f
    const/4 v0, 0x1

    .line 5329
    :goto_160
    iget-object v6, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    if-eqz v6, :cond_17f

    .line 5332
    :try_start_16f
    invoke-interface {v6, v5}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_172
    .catch Landroid/os/RemoteException; {:try_start_16f .. :try_end_172} :catch_174

    move v4, v0

    goto :goto_184

    :catch_174
    move-exception v0

    move-object v6, v0

    const-string v0, "!@ failed changeRemoteLockState callback!"

    .line 5334
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5335
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_184

    :cond_17f
    const-string v0, "!@ NULL Callback for changeRemoteLockState!"

    .line 5339
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5343
    :goto_184
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    if-eqz v0, :cond_19f

    .line 5346
    :try_start_193
    invoke-interface {v0, v5}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_196
    .catch Landroid/os/RemoteException; {:try_start_193 .. :try_end_196} :catch_197

    goto :goto_19f

    :catch_197
    move-exception v0

    move-object v1, v0

    .line 5348
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5349
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_19f
    :goto_19f
    return v4
.end method

.method public final callToAuthSecretIfNeeded(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V
    .registers 5

    .line 3742
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 3744
    :try_start_10
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveVendorAuthSecret()[B

    move-result-object p1

    .line 3745
    new-instance p2, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 3746
    :goto_1b
    array-length v1, p1

    if-ge v0, v1, :cond_2a

    .line 3747
    aget-byte v1, p1, v0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 3749
    :cond_2a
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;

    invoke-interface {p0, p2}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->primaryUserCredential(Ljava/util/ArrayList;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_2f} :catch_30

    goto :goto_38

    :catch_30
    move-exception p0

    const-string p1, "LockSettingsService"

    const-string p2, "Failed to pass primary user secret to AuthSecret HAL"

    .line 3751
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_38
    :goto_38
    return-void
.end method

.method public changeToken([BJ[BJI)Z
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move-wide/from16 v7, p5

    move/from16 v9, p7

    .line 6026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change token for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "newToken"

    const/4 v10, 0x0

    aput-object v2, v1, v10

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "newHandle"

    aput-object v3, v1, v2

    .line 6027
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", oldToken : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", oldHandle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 6032
    :try_start_53
    iget-object v11, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v11
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_a3

    .line 6033
    :try_start_56
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 6036
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 6037
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    move-wide/from16 v3, p5

    move-object/from16 v5, p4

    move/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v1

    if-eqz v1, :cond_91

    .line 6039
    iget-object v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v1, :cond_75

    goto :goto_91

    .line 6043
    :cond_75
    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-wide v3, p2

    invoke-virtual {v2, p2, p3, v1, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v10

    if-nez v10, :cond_83

    const-string v1, "Failed in new token activation"

    .line 6046
    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :cond_83
    if-eqz v10, :cond_8b

    .line 6049
    invoke-virtual {p0, v7, v8, v9}, Lcom/android/server/locksettings/LockSettingsService;->removeEscrowToken(JI)Z

    move-result v0

    if-nez v0, :cond_96

    :cond_8b
    const-string v0, "Failed in old token elimination"

    .line 6050
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_96

    :cond_91
    :goto_91
    const-string v0, "Failed due to invalid token"

    .line 6041
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6053
    :cond_96
    :goto_96
    monitor-exit v11

    goto :goto_a9

    .line 6034
    :cond_98
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Excrow token is disabled for current user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_a0
    move-exception v0

    .line 6053
    monitor-exit v11
    :try_end_a2
    .catchall {:try_start_56 .. :try_end_a2} :catchall_a0

    :try_start_a2
    throw v0
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a3} :catch_a3

    :catch_a3
    move-exception v0

    const-string v1, "Unexpected exception while change token"

    .line 6055
    invoke-static {v1, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 6057
    :goto_a9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Final result of change token : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    return v10
.end method

.method public checkAppLockBackupPin(Ljava/lang/String;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5854
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 5855
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash([BI)[B

    move-result-object v0

    .line 5856
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readAppLockBackupkPinHash(I)[B

    move-result-object v1

    if-nez v1, :cond_17

    const/4 p0, 0x1

    return p0

    .line 5860
    :cond_17
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_30

    .line 5861
    array-length v2, v1

    const/16 v3, 0x28

    if-ne v2, v3, :cond_30

    .line 5862
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHashSec([BI)[B

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    :cond_30
    return v0
.end method

.method public checkAppLockFingerprintPassword(Ljava/lang/String;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5869
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 5870
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash([BI)[B

    move-result-object v0

    .line 5871
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readAppLockFingerprintPasswordHash(I)[B

    move-result-object v1

    if-nez v1, :cond_17

    const/4 p0, 0x1

    return p0

    .line 5875
    :cond_17
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_30

    .line 5877
    array-length v2, v1

    const/16 v3, 0x28

    if-ne v2, v3, :cond_30

    .line 5878
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 5879
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHashSec([BI)[B

    move-result-object p0

    .line 5878
    invoke-static {p0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    :cond_30
    return v0
.end method

.method public checkAppLockPassword(Ljava/lang/String;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5827
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 5829
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash([BI)[B

    move-result-object v0

    .line 5830
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readAppLockPasswordHash(I)[B

    move-result-object v1

    if-nez v1, :cond_17

    const/4 p0, 0x1

    return p0

    .line 5834
    :cond_17
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_30

    .line 5835
    array-length v2, v1

    const/16 v3, 0x28

    if-ne v2, v3, :cond_30

    .line 5836
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHashSec([BI)[B

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    :cond_30
    return v0
.end method

.method public checkAppLockPatternWithHash(Ljava/lang/String;I[B)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5843
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 5844
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToByteArray(Ljava/util/List;)[B

    move-result-object p1

    .line 5845
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readAppLockPatternHash(I)[B

    move-result-object p0

    const/4 p2, 0x1

    if-nez p0, :cond_1b

    return p2

    .line 5849
    :cond_1b
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_29

    invoke-static {p3, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_28

    goto :goto_29

    :cond_28
    const/4 p2, 0x0

    :cond_29
    :goto_29
    return p2
.end method

.method public checkAppLockPin(Ljava/lang/String;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5810
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 5811
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash([BI)[B

    move-result-object v0

    .line 5812
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readAppLockPinHash(I)[B

    move-result-object v1

    if-nez v1, :cond_17

    const/4 p0, 0x1

    return p0

    .line 5818
    :cond_17
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_30

    .line 5819
    array-length v2, v1

    const/16 v3, 0x28

    if-ne v2, v3, :cond_30

    .line 5820
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHashSec([BI)[B

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    :cond_30
    return v0
.end method

.method public final checkBiometricPermission()V
    .registers 3

    .line 1640
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MANAGE_BIOMETRIC"

    const-string v1, "LockSettingsBiometric"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public checkCarrierPassword([BI)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5505
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 5507
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash([BI)[B

    move-result-object v0

    .line 5508
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readCarrierPasswordHash(I)[B

    move-result-object v1

    if-nez v1, :cond_11

    const/4 p0, 0x1

    return p0

    .line 5514
    :cond_11
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_24

    .line 5516
    array-length v2, v1

    const/16 v3, 0x28

    if-ne v2, v3, :cond_24

    .line 5517
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHashSec([BI)[B

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    :cond_24
    return v0
.end method

.method public checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 5

    .line 3056
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    const/4 v0, 0x0

    .line 3063
    :try_start_4
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 3065
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    return-object p1

    :catchall_c
    move-exception p1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 3066
    throw p1
.end method

.method public checkCredentialForDualDarDo(Lcom/android/internal/widget/LockscreenCredential;IILcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7092
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 7094
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredentialForDualDarDo(Lcom/android/internal/widget/LockscreenCredential;IILcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0
.end method

.method public checkFMMPassword([BI)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5458
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 5459
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash([BI)[B

    move-result-object v0

    .line 5460
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readFMMPasswordHash(I)[B

    move-result-object v1

    if-nez v1, :cond_11

    const/4 p0, 0x1

    return p0

    .line 5466
    :cond_11
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_24

    .line 5468
    array-length v2, v1

    const/16 v3, 0x28

    if-ne v2, v3, :cond_24

    .line 5469
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHashSec([BI)[B

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    :cond_24
    return v0
.end method

.method public final checkManageWeakEscrowTokenMethodUsage()V
    .registers 4

    .line 1648
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_WEAK_ESCROW_TOKEN"

    const-string v2, "Requires MANAGE_WEAK_ESCROW_TOKEN permission."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    return-void

    .line 1652
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Weak escrow token are only for automotive devices."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkPasswordHavePermission(I)V
    .registers 6

    .line 1609
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_28

    const p1, 0x534e4554

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "28251513"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 1610
    invoke-static {}, Lcom/android/internal/widget/ILockSettings$Stub;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1612
    :cond_28
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string p1, "LockSettingsHave"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final checkPasswordReadPermission()V
    .registers 3

    .line 1605
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v1, "LockSettingsRead"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final checkReadPermission(Ljava/lang/String;I)V
    .registers 12

    .line 1616
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 1618
    :goto_6
    sget-object v3, Lcom/android/server/locksettings/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v4, v3

    const-string v5, " for user "

    const-string v6, " to read "

    const-string v7, " needs permission "

    const-string/jumbo v8, "uid="

    if-ge v2, v4, :cond_51

    .line 1619
    aget-object v3, v3, v2

    .line 1620
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_27

    goto :goto_4e

    .line 1622
    :cond_27
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1628
    :cond_51
    :goto_51
    sget-object v2, Lcom/android/server/locksettings/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_93

    .line 1629
    aget-object v2, v2, v1

    .line 1630
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_69

    goto :goto_90

    .line 1632
    :cond_69
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_90
    :goto_90
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    :cond_93
    return-void
.end method

.method public checkRemoteLockPassword(I[BILandroid/os/IRemoteCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5356
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 5357
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    const-string v1, "LockSettingsService"

    if-eqz v0, :cond_36

    .line 5361
    :try_start_13
    invoke-interface {v0, p2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->checkRemoteLockPassword([B)I

    move-result p2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_17} :catch_18

    goto :goto_37

    :catch_18
    move-exception p3

    .line 5363
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.remotelock.CLIENT_WAKEUP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5364
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.permission.REMOTELOCK"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 5366
    iput-object p4, p0, Lcom/android/server/locksettings/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    .line 5367
    iput p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockTypeForPasswordCheck:I

    .line 5368
    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mPassword:[B

    const-string p0, "failed checkRemoteLockPassword callback!"

    .line 5369
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5370
    invoke-virtual {p3}, Landroid/os/RemoteException;->printStackTrace()V

    return-void

    :cond_36
    const/4 p2, -0x1

    .line 5374
    :goto_37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "result"

    .line 5375
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-lez p2, :cond_62

    .line 5377
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "locktime"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v2, v3, p3}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide p0

    const-string/jumbo p2, "timeout"

    invoke-virtual {v0, p2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5380
    :cond_62
    :try_start_62
    invoke-interface {p4, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_6f

    :catch_66
    move-exception p0

    const-string p1, "failed sendResult callback!"

    .line 5382
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5383
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_6f
    return-void
.end method

.method public final checkWeaverStatus()V
    .registers 2

    .line 6063
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 6064
    :try_start_3
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->checkWeaverStatus()V

    .line 6065
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final checkWritePermission(I)V
    .registers 3

    .line 1601
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v0, "LockSettingsWrite"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final cleanupAbnormalState()V
    .registers 19

    move-object/from16 v0, p0

    .line 5720
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 5725
    :goto_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x3

    if-ge v3, v5, :cond_a4

    .line 5727
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    const/16 v7, 0x5f

    const/4 v8, 0x1

    if-ge v5, v7, :cond_a0

    .line 5729
    invoke-virtual {v0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v9

    .line 5730
    invoke-virtual {v0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getValidSyntheticPasswordHandleLocked(I)J

    move-result-wide v11

    .line 5731
    invoke-virtual {v0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v7

    const/4 v13, 0x5

    new-array v14, v13, [Ljava/lang/Object;

    .line 5733
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v8

    invoke-static {v7}, Lcom/android/server/locksettings/LockSettingsService;->credentialTypeToString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    aput-object v15, v14, v16

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v6

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v17, 0x4

    aput-object v15, v14, v17

    const-string v15, "cleanupAbnormalState() handle=%d(%x) credentialType=%s validHandle=%d(%x)"

    .line 5732
    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "LockSettingsService"

    invoke-static {v15, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v14, v9, v11

    if-eqz v14, :cond_a0

    const-string/jumbo v4, "sp-handle"

    .line 5735
    invoke-virtual {v0, v4, v11, v12, v5}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 5736
    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    .line 5738
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v8

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v14, v16

    invoke-static {v7}, Lcom/android/server/locksettings/LockSettingsService;->credentialTypeToString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v6

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v14, v17

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v14, v13

    const-string v7, "cleanupAbnormalState() mismatched! user=%d current handle=%d(%x) credentialType=%s validHandle=%d(%x)"

    .line 5737
    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 5736
    invoke-virtual {v4, v6, v7}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 5739
    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v4, v6, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->addPWFilelist(II)V

    move v4, v8

    :cond_a0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e

    :cond_a4
    if-eqz v4, :cond_ab

    .line 5746
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->uploadLogFile(I)V

    :cond_ab
    return-void
.end method

.method public final cleanupDataForReusedUserIdIfNecessary(I)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 1103
    :cond_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    .line 1105
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "serial-number"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getInt(Ljava/lang/String;II)I

    move-result v1

    if-eq v1, v0, :cond_25

    if-eq v1, v3, :cond_20

    const/4 v1, 0x1

    .line 1112
    invoke-virtual {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService;->removeUser(IZ)V

    .line 1114
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportUnlock(I)V

    .line 1117
    :cond_20
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, v2, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->setInt(Ljava/lang/String;II)V

    :cond_25
    return-void
.end method

.method public final clearUserKeyProtection(I[B[B)V
    .registers 7

    .line 2878
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    if-eqz v0, :cond_b

    .line 2879
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 2882
    :cond_b
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2883
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2891
    :try_start_15
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/storage/IStorageManager;->clearUserKeyAuth(II[B[B)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1c} :catch_22
    .catchall {:try_start_15 .. :try_end_1c} :catchall_20

    .line 2895
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_20
    move-exception p0

    goto :goto_39

    .line 2893
    :catch_22
    :try_start_22
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "clearUserKeyAuth failed user="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_39
    .catchall {:try_start_22 .. :try_end_39} :catchall_20

    .line 2895
    :goto_39
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2896
    throw p0
.end method

.method public closeSession(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3623
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->closeSession(Ljava/lang/String;)V

    return-void
.end method

.method public final convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 2

    .line 2681
    invoke-static {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0
.end method

.method public final disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V
    .registers 5

    .line 4888
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    .line 4890
    sget-boolean v1, Lcom/android/server/locksettings/LockSettingsService;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    if-eqz v1, :cond_18

    .line 4891
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string p0, "LockSettingsService.SDP"

    const-string p1, "Virtual user can have escrow token"

    .line 4892
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4897
    :cond_18
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserManaged(I)Z

    move-result v1

    const-string v2, "LockSettingsService"

    if-eqz v1, :cond_26

    const-string p0, "Managed profile can have escrow token"

    .line 4911
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4916
    :cond_26
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isKnoxAdminActivated(I)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string p0, "User with knox admin can have escrow token"

    .line 4917
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4923
    :cond_32
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->isDeviceManaged()Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string p0, "Corp-owned device can have escrow token"

    .line 4924
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4931
    :cond_3e
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDeviceStateCache()Landroid/app/admin/DeviceStateCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DeviceStateCache;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_50

    const-string p0, "Postpone disabling escrow tokens until device is provisioned"

    .line 4932
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4937
    :cond_50
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    return-void

    .line 4942
    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disabling escrow token on user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4943
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 4944
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyEscrowData(I)V

    :cond_7e
    return-void
.end method

.method public final doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 11

    if-eqz p1, :cond_c8

    .line 3165
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-nez v0, :cond_c8

    .line 3173
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    if-eqz v0, :cond_19

    .line 3174
    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3175
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarVirtualLock:Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0

    :cond_19
    const/4 v0, 0x0

    const/16 v1, -0x270f

    const-string v2, "LockSettingsService"

    if-ne p2, v1, :cond_38

    .line 3178
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->settingsGlobalGetInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_38

    const-string p0, "FRP credential can only be verified prior to provisioning."

    .line 3180
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3181
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0

    .line 3184
    :cond_38
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->spBasedDoVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p4

    if-eqz p4, :cond_5b

    .line 3189
    invoke-virtual {p4}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result p3

    if-nez p3, :cond_5a

    .line 3196
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 3199
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->KNOX_SUPPORT_DAR_DUAL_DO:Z

    if-eqz p1, :cond_5a

    invoke-static {p2}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 3201
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDarManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->cancelDataLock(I)V

    :cond_5a
    return-object p4

    :cond_5b
    if-ne p2, v1, :cond_65

    const-string p0, "Unexpected FRP credential type, should be SP based."

    .line 3215
    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0

    .line 3219
    :cond_65
    iget-object p4, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p4, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object p4

    .line 3220
    iget v1, p4, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockscreenCredential;->checkAgainstStoredType(I)Z

    move-result v1

    if-nez v1, :cond_b8

    .line 3221
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "doVerifyCredential type mismatch with stored credential?? stored: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p4, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " passed in: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3222
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3221
    invoke-static {v2, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p4, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3225
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3224
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 3227
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0

    .line 3230
    :cond_b8
    invoke-virtual {p0, p2, p4, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->verifyCredential(ILcom/android/server/locksettings/LockSettingsStorage$CredentialHash;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    .line 3232
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result p3

    if-nez p3, :cond_c7

    .line 3238
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulStrongAuthUnlock(I)V

    :cond_c7
    return-object p1

    .line 3166
    :cond_c8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Credential can\'t be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final doVerifyCredentialForDualDarDo(Lcom/android/internal/widget/LockscreenCredential;IILcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 8

    .line 7105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verify credential for dual-dar user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "credential"

    aput-object v2, v0, v1

    if-eqz p1, :cond_24

    .line 7106
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v1

    goto :goto_27

    :cond_24
    const-string/jumbo v1, "null"

    :goto_27
    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "credentialType"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    if-eqz p1, :cond_37

    .line 7107
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    goto :goto_38

    :cond_37
    const/4 v2, -0x1

    :goto_38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "userId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 7108
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "opiotn"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 7106
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    if-eqz p1, :cond_76

    .line 7110
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-nez v0, :cond_76

    .line 7115
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->spBasedDoVerifyCredentialForDualDarDo(Lcom/android/internal/widget/LockscreenCredential;IILcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p3

    if-nez p3, :cond_6c

    .line 7118
    sget-object p3, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_75

    .line 7120
    :cond_6c
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result p4

    if-nez p4, :cond_75

    .line 7121
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V

    :cond_75
    :goto_75
    return-object p3

    .line 7111
    :cond_76
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Credential can\'t be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final doVerifyCredentialForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 5

    .line 3110
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/knox/dar/StreamCipher;->decryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    const/4 v0, 0x0

    .line 3111
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_f

    if-eqz p1, :cond_e

    .line 3114
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_e
    return-object p0

    :catchall_f
    move-exception p0

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 3116
    :cond_15
    throw p0
.end method

.method public final doVerifyCredentialForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 5

    .line 3073
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/knox/dar/StreamCipher;->decryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    const/4 v0, 0x0

    .line 3074
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_f

    if-eqz p1, :cond_e

    .line 3077
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_e
    return-object p0

    :catchall_f
    move-exception p0

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 3079
    :cond_15
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15

    .line 4773
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string p3, "LockSettingsService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 4774
    :cond_b
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, "Current lock settings service state:"

    .line 4776
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4777
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4780
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "isFbeSecure = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isFbeSecure(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "User State:"

    .line 4791
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4792
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4793
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p2

    move v0, p3

    .line 4794
    :goto_43
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_164

    .line 4795
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 4796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4797
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4798
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v2

    :try_start_6b
    const-string v3, "SP Handle: %x"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 4800
    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, p3

    .line 4799
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "Last changed: %s (%x)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "sp-handle-ts"

    const-wide/16 v7, 0x0

    .line 4802
    invoke-virtual {p0, v6, v7, v8, v1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p3

    const-string/jumbo v6, "prev-sp-handle"

    .line 4803
    invoke-virtual {p0, v6, v7, v8, v1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    .line 4801
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4804
    monitor-exit v2
    :try_end_aa
    .catchall {:try_start_6b .. :try_end_aa} :catchall_161

    :try_start_aa
    const-string v2, "SID: %x"

    new-array v3, v4, [Ljava/lang/Object;

    .line 4813
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, p3

    .line 4812
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_c3
    .catch Landroid/os/RemoteException; {:try_start_aa .. :try_end_c3} :catch_c3

    .line 4819
    :catch_c3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Quality: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->getKeyguardStoredQuality(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CredentialType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4821
    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v3

    .line 4820
    invoke-static {v3}, Lcom/android/server/locksettings/LockSettingsService;->credentialTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4822
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SeparateChallenge: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "Metrics: %s"

    new-array v3, v4, [Ljava/lang/Object;

    .line 4824
    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object v4

    if-eqz v4, :cond_11d

    const-string/jumbo v4, "known"

    goto :goto_120

    :cond_11d
    const-string/jumbo v4, "unknown"

    :goto_120
    aput-object v4, v3, p3

    .line 4823
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sp-handle-try = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordTryHandleLocked(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4828
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed attempt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentFailedPasswordAttempts(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4830
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_43

    :catchall_161
    move-exception p0

    .line 4804
    :try_start_162
    monitor-exit v2
    :try_end_163
    .catchall {:try_start_162 .. :try_end_163} :catchall_161

    throw p0

    .line 4832
    :cond_164
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4833
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p2, "Keys in namespace:"

    .line 4835
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4836
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4837
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->dumpKeystoreKeys(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4838
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4839
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p2, "Storage:"

    .line 4841
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4842
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4843
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4844
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4845
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p2, "StrongAuth:"

    .line 4847
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4848
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4849
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {p2, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4850
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4851
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p2, "RebootEscrow:"

    .line 4853
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4854
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4855
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    invoke-virtual {p2, p1}, Lcom/android/server/locksettings/RebootEscrowManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4856
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4857
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4859
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PasswordHandleCount: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {p3}, Landroid/util/LongSparseArray;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "LSSLog:"

    .line 4862
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4863
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4864
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLssLog()Lcom/android/server/locksettings/LockSettingsServiceLog;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsServiceLog;->dump(Ljava/io/PrintWriter;)V

    .line 4865
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4866
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public final dumpKeystoreKeys(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    .line 4872
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object p0

    .line 4873
    :goto_6
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 4874
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_6

    :catch_16
    move-exception p0

    .line 4877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to get keys: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/KeyStoreException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "LockSettingsService"

    const-string v0, "Dump error"

    .line 4878
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_36
    return-void
.end method

.method public final enforceFrpResolved()V
    .registers 6

    .line 1589
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1590
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Lcom/android/server/locksettings/LockSettingsService$Injector;->settingsSecureGetInt(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_15

    move v1, v2

    goto :goto_16

    :cond_15
    move v1, v3

    .line 1592
    :goto_16
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    const-string/jumbo v4, "secure_frp_mode"

    invoke-virtual {p0, v0, v4, v3, v3}, Lcom/android/server/locksettings/LockSettingsService$Injector;->settingsSecureGetInt(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v2, :cond_22

    move v3, v2

    :cond_22
    if-eqz v1, :cond_2f

    if-nez v3, :cond_27

    goto :goto_2f

    .line 1595
    :cond_27
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Cannot change credential in SUW while factory reset protection is not resolved yet"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    :goto_2f
    return-void
.end method

.method public final enforceShell()V
    .registers 2

    .line 3529
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->isCallerShell()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 3530
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller must be shell"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final ensureProfileKeystoreUnlocked(I)V
    .registers 4

    .line 1127
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 1128
    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_23

    .line 1129
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1130
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hasUnifiedChallenge(I)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "LockSettingsService"

    const-string v1, "Profile got unlocked, will unlock its keystore"

    .line 1131
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1135
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->unlockChildProfile(IZ)V

    :cond_23
    return-void
.end method

.method public final faceManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Landroid/hardware/face/FaceManager$RemovalCallback;
    .registers 3

    .line 4332
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$6;-><init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method

.method public final fingerprintManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
    .registers 3

    .line 4315
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$5;-><init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method

.method public final fixateNewestUserKeyAuth(I)V
    .registers 5

    .line 2984
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    if-eqz v0, :cond_b

    .line 2985
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 2988
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2990
    :try_start_f
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->fixateNewestUserKeyAuth(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_1a
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    .line 2996
    :goto_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_23

    :catchall_18
    move-exception p0

    goto :goto_24

    :catch_1a
    move-exception p0

    :try_start_1b
    const-string p1, "LockSettingsService"

    const-string v2, "fixateNewestUserKeyAuth failed"

    .line 2994
    invoke-static {p1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_18

    goto :goto_14

    :goto_23
    return-void

    .line 2996
    :goto_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2997
    throw p0
.end method

.method public final gateKeeperClearSecureUserId(I)V
    .registers 3

    .line 3721
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    const-string p1, "LockSettingsService"

    const-string v0, "Failed to clear SID"

    .line 3723
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method

.method public generateKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3633
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3639
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final generateRandomProfilePassword()Lcom/android/internal/widget/LockscreenCredential;
    .registers 6

    :try_start_0
    const-string p0, "SHA1PRNG"

    .line 472
    invoke-static {p0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object p0

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object p0

    .line 473
    invoke-static {p0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v0

    .line 474
    array-length v1, v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, v2

    .line 475
    :goto_15
    array-length v4, v0

    if-ge v3, v4, :cond_20

    .line 476
    aget-char v4, v0, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 479
    :cond_20
    invoke-static {v1}, Lcom/android/internal/widget/LockscreenCredential;->createManagedPassword([B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v3

    .line 480
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 481
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 482
    invoke-static {p0, v2}, Ljava/util/Arrays;->fill([BB)V
    :try_end_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_2d} :catch_2e

    return-object v3

    :catch_2e
    move-exception p0

    .line 485
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fail to generate profile password"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final getAuthSecretHal()V
    .registers 3

    const-string v0, "LockSettingsService"

    const/4 v1, 0x1

    .line 1335
    :try_start_3
    invoke-static {v1}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->getService(Z)Landroid/hardware/authsecret/V1_0/IAuthSecret;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;
    :try_end_9
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_9} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_a

    goto :goto_16

    :catch_a
    move-exception p0

    const-string v1, "Failed to get AuthSecret HAL"

    .line 1339
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    :catch_11
    const-string p0, "Device doesn\'t implement AuthSecret HAL"

    .line 1337
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    return-void
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .registers 5

    .line 1780
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    const-string/jumbo v0, "lock_pattern_autolock"

    .line 1781
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1782
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_14

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1

    .line 1784
    :cond_16
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->getBoolean(Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public getCarrierLock(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5477
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 5478
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getCarrierLock()Z

    move-result p0

    return p0
.end method

.method public getCredentialType(I)I
    .registers 2

    .line 1816
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordHavePermission(I)V

    .line 1817
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result p0

    return p0
.end method

.method public getCredentialTypeInternal(I)I
    .registers 6

    const/16 v0, -0x270f

    if-ne p1, v0, :cond_9

    .line 1828
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getFrpCredentialType()I

    move-result p0

    return p0

    .line 1846
    :cond_9
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 1847
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1848
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    .line 1849
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(JI)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_21

    .line 1851
    monitor-exit v0

    return v1

    .line 1853
    :cond_21
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getKeyguardStoredQuality(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->pinOrPasswordQualityToCredentialType(I)I

    move-result p0

    monitor-exit v0

    return p0

    .line 1855
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_51

    .line 1859
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getKeyguardStoredQuality(I)I

    move-result v0

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_3e

    .line 1860
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 1861
    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPattern(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    const/4 p0, 0x1

    return p0

    :cond_3e
    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_4f

    .line 1864
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 1865
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPassword(I)Z

    move-result p0

    if-eqz p0, :cond_4f

    .line 1866
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->pinOrPasswordQualityToCredentialType(I)I

    move-result p0

    return p0

    :cond_4f
    const/4 p0, -0x1

    return p0

    :catchall_51
    move-exception p0

    .line 1855
    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw p0
.end method

.method public final getCurrentFailedPasswordAttempts(I)I
    .registers 2

    .line 5641
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    move-result p0

    return p0
.end method

.method public final getDarManagerService()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/knox/dar/DarManagerService;",
            ">;"
        }
    .end annotation

    .line 5924
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    if-nez v0, :cond_c

    .line 5925
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDarManagerService()Lcom/android/server/knox/dar/DarManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    .line 5927
    :cond_c
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1936
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readChildProfileLock(I)[B

    move-result-object v0

    if-eqz v0, :cond_51

    const/4 v1, 0x0

    const/16 v2, 0xc

    .line 1940
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 1941
    array-length v4, v0

    invoke-static {v0, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 1944
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "profile_key_name_decrypt_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    check-cast v2, Ljavax/crypto/SecretKey;

    const-string v4, "AES/GCM/NoPadding"

    .line 1947
    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v5, 0x2

    .line 1950
    new-instance v6, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v7, 0x80

    invoke-direct {v6, v7, v3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v4, v5, v2, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1951
    invoke-virtual {v4, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 1952
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createManagedPassword([B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    .line 1954
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 1955
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->storePassword(ILcom/android/internal/widget/LockscreenCredential;)V

    return-object v2

    .line 1938
    :cond_51
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "Child profile lock file not found"

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDecryptedPasswordsForAllTiedProfiles(I)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/LockscreenCredential;",
            ">;"
        }
    .end annotation

    .line 2100
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 2101
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_c

    return-object v1

    .line 2103
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v0

    if-eqz v0, :cond_13

    return-object v1

    .line 2106
    :cond_13
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2107
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p1

    .line 2108
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_23
    if-ge v2, v1, :cond_63

    .line 2110
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 2111
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v4

    if-nez v4, :cond_34

    goto :goto_60

    .line 2114
    :cond_34
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 2115
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v4

    if-eqz v4, :cond_3d

    goto :goto_60

    .line 2119
    :cond_3d
    :try_start_3d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Ljava/security/KeyStoreException; {:try_start_3d .. :try_end_48} :catch_49
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3d .. :try_end_48} :catch_49
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3d .. :try_end_48} :catch_49
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3d .. :try_end_48} :catch_49
    .catch Ljava/security/InvalidKeyException; {:try_start_3d .. :try_end_48} :catch_49
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3d .. :try_end_48} :catch_49
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3d .. :try_end_48} :catch_49
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3d .. :try_end_48} :catch_49
    .catch Ljava/security/cert/CertificateException; {:try_start_3d .. :try_end_48} :catch_49
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_48} :catch_49

    goto :goto_60

    :catch_49
    move-exception v4

    .line 2124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDecryptedPasswordsForAllTiedProfiles failed for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "LockSettingsService"

    invoke-static {v5, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_63
    return-object v0
.end method

.method public final getEncryptionNotificationDetail()Ljava/lang/String;
    .registers 3

    .line 955
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    const-string p0, "Core.PROFILE_ENCRYPTED_DETAIL"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEncryptionNotificationMessage()Ljava/lang/String;
    .registers 3

    .line 976
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    const-string p0, "Core.PROFILE_ENCRYPTED_MESSAGE"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEncryptionNotificationTitle()Ljava/lang/String;
    .registers 3

    .line 923
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    const-string p0, "Core.PROFILE_ENCRYPTED_TITLE"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getFrpCredentialType()I
    .registers 4

    .line 1872
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object p0

    .line 1873
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_10

    if-eq v0, v1, :cond_10

    const/4 p0, -0x1

    return p0

    .line 1876
    :cond_10
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getFrpCredentialType([B)I

    move-result v0

    if-eq v0, v1, :cond_19

    return v0

    .line 1880
    :cond_19
    iget p0, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->qualityForUi:I

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->pinOrPasswordQualityToCredentialType(I)I

    move-result p0

    return p0
.end method

.method public declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .registers 5

    monitor-enter p0

    .line 3700
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_33

    if-eqz v0, :cond_7

    .line 3701
    monitor-exit p0

    return-object v0

    :cond_7
    :try_start_7
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    .line 3704
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_33

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 3707
    :try_start_10
    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;

    invoke-direct {v2, p0, v1}, Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient-IA;)V

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1a
    .catchall {:try_start_10 .. :try_end_19} :catchall_33

    goto :goto_22

    :catch_1a
    move-exception v1

    :try_start_1b
    const-string v2, "LockSettingsService"

    const-string v3, " Unable to register death recipient"

    .line 3709
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3711
    :goto_22
    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_33

    .line 3712
    monitor-exit p0

    return-object v0

    :cond_2a
    :try_start_2a
    const-string v0, "LockSettingsService"

    const-string v2, "Unable to acquire GateKeeperService"

    .line 3715
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_33

    .line 3716
    monitor-exit p0

    return-object v1

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B
    .registers 12

    .line 4453
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 4460
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5d

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 4462
    :try_start_a
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_f
    .catchall {:try_start_a .. :try_end_e} :catchall_5d

    goto :goto_1b

    :catch_f
    move-exception p1

    :try_start_10
    const-string p2, "LockSettingsService"

    const-string v0, "Failed to get work profile credential"

    .line 4464
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_5d

    .line 4483
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    return-object v1

    :cond_1b
    :goto_1b
    move-object v6, p1

    .line 4468
    :try_start_1c
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter p1
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_5d

    .line 4469
    :try_start_1f
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    if-nez v0, :cond_31

    const-string p2, "LockSettingsService"

    const-string v0, "Synthetic password not enabled"

    .line 4470
    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4471
    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_5a

    .line 4483
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    return-object v1

    .line 4473
    :cond_31
    :try_start_31
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 4474
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 4475
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    const/4 v8, 0x0

    move v7, p2

    .line 4474
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p2

    .line 4476
    iget-object p2, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez p2, :cond_51

    const-string p2, "LockSettingsService"

    const-string v0, "Current credential is incorrect"

    .line 4477
    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4478
    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_31 .. :try_end_4d} :catchall_5a

    .line 4483
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    return-object v1

    .line 4480
    :cond_51
    :try_start_51
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePasswordHashFactor()[B

    move-result-object p2

    monitor-exit p1
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_5a

    .line 4483
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    return-object p2

    :catchall_5a
    move-exception p2

    .line 4481
    :try_start_5b
    monitor-exit p1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw p2
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception p1

    .line 4483
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 4484
    throw p1
.end method

.method public getKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3656
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3565
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public final getKeyguardStoredQuality(I)I
    .registers 5

    .line 1805
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v0, "lockscreen.password_type"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLong(Ljava/lang/String;JI)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public final getKnoxEncryptionNotificationDetail(I)Ljava/lang/String;
    .registers 5

    .line 962
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 965
    :cond_8
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getPersonaService()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda16;

    invoke-direct {v2, p1}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda16;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    .line 966
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 965
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 967
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    const-string p0, "Core.PROFILE_ENCRYPTED_DETAIL"

    invoke-virtual {p1, p0, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3b
    return-object v1
.end method

.method public final getKnoxEncryptionNotificationMessage(I)Ljava/lang/String;
    .registers 4

    .line 983
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 984
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1040b4d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 987
    :cond_14
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getPersonaService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    .line 988
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 987
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "Core.PROFILE_ENCRYPTED_MESSAGE"

    if-eqz p1, :cond_47

    .line 989
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 993
    :cond_47
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getKnoxEncryptionNotificationTitle(I)Ljava/lang/String;
    .registers 4

    .line 930
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 931
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1040b51

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 934
    :cond_14
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getPersonaService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda12;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    .line 935
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 934
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "Core.PROFILE_ENCRYPTED_TITLE"

    if-eqz p1, :cond_72

    const-string/jumbo p1, "ro.build.characteristics"

    .line 936
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_47

    const-string/jumbo v1, "tablet"

    .line 937
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_47

    const/4 p1, 0x1

    goto :goto_48

    :cond_47
    const/4 p1, 0x0

    :goto_48
    if-eqz p1, :cond_5e

    .line 939
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 943
    :cond_5e
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 947
    :cond_72
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .registers 5

    .line 1789
    invoke-virtual {p0, p1, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1790
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getLong(Ljava/lang/String;JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getProfilesWithSameLockScreen(I)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2260
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2261
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2262
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v3, p1, :cond_29

    iget v4, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v4, p1, :cond_f

    .line 2264
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2265
    :cond_29
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_33
    return-object v0
.end method

.method public getRecoverySecretTypes()[I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3597
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getRecoverySecretTypes()[I

    move-result-object p0

    return-object p0
.end method

.method public getRecoveryStatus()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3586
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getRecoveryStatus()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getRequestedPasswordHistoryLength(I)I
    .registers 3

    .line 2632
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->KNOX_SUPPORT_DAR_DUAL_DO:Z

    if-eqz v0, :cond_12

    .line 2633
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->isInnerAuthUserForDo(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2635
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getMainUserId(I)I

    move-result p1

    .line 2639
    :cond_12
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result p0

    return p0
.end method

.method public final getSalt(I)Ljava/lang/String;
    .registers 7

    const-string/jumbo v0, "lockscreen.password_salt"

    const-wide/16 v1, 0x0

    .line 2616
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-nez v1, :cond_3a

    :try_start_d
    const-string v1, "SHA1PRNG"

    .line 2619
    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v3

    .line 2620
    invoke-virtual {p0, v0, v3, v4, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    const-string p0, "LockSettingsService"

    .line 2621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initialized lock password salt for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_30} :catch_31

    goto :goto_3a

    :catch_31
    move-exception p0

    .line 2624
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t get SecureRandom number"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 2627
    :cond_3a
    :goto_3a
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSeparateProfileChallengeEnabled(I)Z
    .registers 3

    const-string/jumbo v0, "lockscreen.profilechallenge"

    .line 1664
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1665
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result p0

    return p0
.end method

.method public final getSeparateProfileChallengeEnabledInternal(I)Z
    .registers 5

    .line 1669
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1670
    :try_start_3
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "lockscreen.profilechallenge"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getBoolean(Ljava/lang/String;ZI)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 1671
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 1795
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1796
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStrongAuthForUser(I)I
    .registers 2

    .line 3519
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 3520
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->getStrongAuthForUser(I)I

    move-result p0

    return p0
.end method

.method public getSyntheticPasswordHandleLocked(I)J
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string/jumbo v0, "sp-handle"

    const-wide/16 v1, 0x0

    .line 3852
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getSyntheticPasswordTryHandleLocked(I)Ljava/lang/String;
    .registers 4

    const-string/jumbo v0, "sp-handle-try"

    const-string v1, ""

    .line 5712
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getUserManagerFromCache(I)Landroid/os/UserManager;
    .registers 5

    .line 2661
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 2662
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManagerCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2663
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManagerCache:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    return-object p0

    .line 2667
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "system"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 2668
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2669
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManagerCache:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_2c} :catch_2d

    return-object v0

    :catch_2d
    move-exception p0

    .line 2672
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create context for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3390
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3395
    new-instance p0, Landroid/app/admin/PasswordMetrics;

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    return-object p0

    .line 3397
    :cond_d
    monitor-enter p0

    .line 3398
    :try_start_e
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/PasswordMetrics;

    monitor-exit p0

    return-object p1

    :catchall_18
    move-exception p1

    .line 3399
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public final getValidSyntheticPasswordHandleLocked(I)J
    .registers 10

    .line 5654
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    const-wide/16 v1, 0x0

    if-nez p1, :cond_9e

    .line 5656
    :try_start_7
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v3
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_ad

    if-eqz v3, :cond_9e

    const/4 v3, 0x1

    .line 5659
    :try_start_e
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v4}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 5661
    invoke-interface {v4, p1}, Landroid/os/storage/IStorageManager;->isFbeSecure(I)Z

    move-result v3

    const-string v4, "LockSettingsService"

    .line 5662
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@ getValidSyntheticPasswordHandleLocked isFbeSecure="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_30} :catch_95
    .catchall {:try_start_e .. :try_end_30} :catchall_ad

    :cond_30
    move v6, v3

    :try_start_31
    const-string/jumbo v3, "sp-handle"

    .line 5668
    invoke-virtual {p0, v3, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    .line 5669
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordTryHandleLocked(I)Ljava/lang/String;

    move-result-object v7

    .line 5670
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    move v2, p1

    move-object v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getValidSyntheticPasswordHandleLocked(IJLjava/lang/String;Z)J

    move-result-wide v1

    .line 5671
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 5672
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 5673
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7a

    .line 5675
    :cond_66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_7a
    const-string v4, "LockSettingsService"

    .line 5677
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@ getValidSyntheticPasswordHandleLocked() : tryHandls="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5678
    invoke-virtual {p0, p1, v3}, Lcom/android/server/locksettings/LockSettingsService;->setSyntheticPasswordTryHandleLocked(ILjava/lang/String;)V

    .line 5680
    :cond_93
    monitor-exit v0

    return-wide v1

    :catch_95
    const-string/jumbo v3, "sp-handle"

    .line 5666
    invoke-virtual {p0, v3, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    .line 5682
    :cond_9e
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    const-string/jumbo v4, "sp-handle"

    .line 5683
    invoke-virtual {p0, v4, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v1

    .line 5682
    invoke-virtual {v3, p1, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getValidSyntheticPasswordHandleLocked(IJ)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_ad
    move-exception p0

    .line 5685
    monitor-exit v0
    :try_end_af
    .catchall {:try_start_31 .. :try_end_af} :catchall_ad

    throw p0
.end method

.method public hasPendingEscrowToken(I)Z
    .registers 3

    .line 4578
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 4579
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 4580
    :try_start_6
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    monitor-exit v0

    return p0

    :catchall_17
    move-exception p0

    .line 4581
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public final hasPermission(Ljava/lang/String;)Z
    .registers 2

    .line 1644
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public hasSecureLockScreen()Z
    .registers 1

    .line 1659
    iget-boolean p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    return p0
.end method

.method public final hasUnifiedChallenge(I)Z
    .registers 3

    .line 2095
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 2096
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public haveAppLockBackupPin(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5902
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->haveAppLockBackupPin(I)Z

    move-result p0

    return p0
.end method

.method public haveAppLockFingerprintPassword(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5907
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->haveAppLockFingerprintPassword(I)Z

    move-result p0

    return p0
.end method

.method public haveAppLockPassword(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5892
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->haveAppLockPassword(I)Z

    move-result p0

    return p0
.end method

.method public haveAppLockPattern(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5897
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->haveAppLockPattern(I)Z

    move-result p0

    return p0
.end method

.method public haveAppLockPin(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5887
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->haveAppLockPin(I)Z

    move-result p0

    return p0
.end method

.method public haveCarrierPassword(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5500
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasCarrierPassword(I)Z

    move-result p0

    return p0
.end method

.method public haveFMMPassword(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5453
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFMMPassword(I)Z

    move-result p0

    return p0
.end method

.method public final hideEncryptionNotification(Landroid/os/UserHandle;)V
    .registers 4

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hide encryption notification, user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public importKey(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3645
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKey(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3651
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3559
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V

    return-void
.end method

.method public initializeSyntheticPasswordLocked([BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSpManager"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initialize SyntheticPassword for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3803
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    const-string v2, "Cannot reinitialize SP"

    .line 3802
    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 3806
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 3807
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    .line 3806
    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSyntheticPasswordAndSid(Landroid/service/gatekeeper/IGateKeeperService;[BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_3c

    const-string/jumbo p0, "initializeSyntheticPasswordLocked returns null auth token"

    .line 3809
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 3812
    :cond_3c
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    invoke-virtual {v3, v4, p2, v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J

    move-result-wide v9

    .line 3814
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result p2

    if-nez p2, :cond_aa

    if-nez p1, :cond_57

    .line 3818
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object p2

    invoke-virtual {p1, p2, v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 3820
    :cond_57
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    const-wide/16 v6, 0x0

    move-object v5, v0

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    .line 3822
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isTokenUser(I)Z

    move-result p2

    if-eqz p2, :cond_87

    .line 3823
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set token and key derived from sp for FBE: user="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3824
    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object p2

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setUserKeyProtection(I[BLcom/android/internal/widget/VerifyCredentialResponse;)V

    goto :goto_a2

    .line 3827
    :cond_87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Set key derived from sp for FBE: user="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3828
    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    .line 3830
    :goto_a2
    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    goto :goto_b3

    .line 3832
    :cond_aa
    invoke-virtual {p0, p3, v2, v2}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I[B[B)V

    .line 3841
    invoke-virtual {p0, v2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    .line 3842
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    .line 3844
    :goto_b3
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 3845
    invoke-virtual {p0, v9, v10, p3}, Lcom/android/server/locksettings/LockSettingsService;->setSyntheticPasswordHandleLocked(JI)V

    .line 3846
    invoke-virtual {p0, p3, v0}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    return-object v0
.end method

.method public final isCallerShell()Z
    .registers 2

    .line 3524
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_d

    if-nez p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public final isCredentialRequiredToDecrypt()Z
    .registers 3

    .line 2655
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "require_password_to_decrypt"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isCredentialSharableWithParent(I)Z
    .registers 2

    .line 2677
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getUserManagerFromCache(I)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserManager;->isCredentialSharableWithParent()Z

    move-result p0

    return p0
.end method

.method public final isDeviceOwner(I)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    return v0

    :cond_4
    const-string/jumbo v1, "knox.device_owner"

    const-wide/16 v2, 0x0

    .line 5916
    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public final isDoNotAskCredentialsOnBootSet()Z
    .registers 1

    .line 2651
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result p0

    return p0
.end method

.method public final isDualDarAuthUserId(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final isEnterpriseUser(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final isEscrowTokenActive(JI)Z
    .registers 5

    .line 4571
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 4572
    :try_start_3
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->existsHandle(JI)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 4573
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final isFbeSecure(I)Z
    .registers 5

    .line 5690
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "LockSettingsService"

    if-eqz v0, :cond_37

    .line 5693
    :try_start_9
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 5695
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->isFbeSecure(I)Z

    move-result p0

    .line 5696
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "!@ isFbeSecure = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, p0

    goto :goto_4b

    :cond_2b
    const-string p0, "!@ isFbeSecure() - storageManager is null"

    .line 5698
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_30} :catch_31

    goto :goto_4b

    :catch_31
    const-string p0, "!@ isFbeSecure() - RemoteException!"

    .line 5702
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5706
    :cond_37
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "!@ isFbeSecure() - bFbeSupport = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4b
    return v1
.end method

.method public final isKnoxAdminActivated(I)Z
    .registers 3

    .line 838
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getEdmService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 841
    :try_start_8
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->isMdmAdminPresentAsUser(I)Z

    move-result p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return p0

    :catch_d
    move-exception p0

    const-string p1, "LockSettingsService"

    const-string v0, "Failed talking with enterprise policy service"

    .line 843
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public isLockPasswordValid(I)Z
    .registers 3

    .line 5648
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 5649
    :try_start_3
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isLockPasswordValid(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 5650
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final isProfileWithSeparatedLock(I)Z
    .registers 3

    .line 2200
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2201
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final isProfileWithUnifiedLock(I)Z
    .registers 3

    .line 2195
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2196
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final isPwdChangeRequested(I)Z
    .registers 2

    :try_start_0
    const-string/jumbo p0, "password_policy"

    .line 4119
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 4120
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_15

    if-lez p0, :cond_19

    const/4 p0, 0x1

    return p0

    :catch_15
    move-exception p0

    .line 4125
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public isSyntheticPasswordBasedCredential(I)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3866
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 3867
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 3868
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final isSyntheticPasswordBasedCredentialLocked(I)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, -0x270f

    if-ne p1, v2, :cond_15

    .line 3873
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object p0

    iget p0, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    if-eq p0, v1, :cond_13

    const/4 p1, 0x2

    if-ne p0, p1, :cond_14

    :cond_13
    move v0, v1

    :cond_14
    return v0

    .line 3876
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_20

    move v0, v1

    :cond_20
    return v0
.end method

.method public final isTokenUser(I)Z
    .registers 4

    .line 2907
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mFirstApiLevel:I

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_16

    if-eqz p1, :cond_14

    .line 2909
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 2910
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p0

    if-nez p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public final isUserKeyUnlocked(I)Z
    .registers 3

    .line 2935
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->isUserKeyUnlocked(I)Z

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    const-string p1, "LockSettingsService"

    const-string v0, "failed to check user key locked state"

    .line 2937
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final isUserSecure(I)Z
    .registers 2

    .line 1899
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isWeakEscrowTokenActive(JI)Z
    .registers 6

    .line 2750
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 2751
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2753
    :try_start_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEscrowTokenActive(JI)Z

    move-result p0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 2755
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2756
    throw p0
.end method

.method public isWeakEscrowTokenValid(J[BI)Z
    .registers 16

    .line 2761
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 2762
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2764
    :try_start_7
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_45

    .line 2765
    :try_start_a
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1f

    const-string p0, "LockSettingsService"

    const-string p1, "Escrow token is disabled on the current user"

    .line 2766
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_42

    .line 2778
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 2769
    :cond_1f
    :try_start_1f
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2770
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v6

    move-wide v7, p1

    move-object v9, p3

    move v10, p4

    .line 2769
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapWeakTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p0

    .line 2771
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez p0, :cond_3c

    const-string p0, "LockSettingsService"

    const-string p1, "Invalid escrow token supplied"

    .line 2772
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_42

    .line 2778
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_3c
    const/4 p0, 0x1

    .line 2775
    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_42

    .line 2778
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_42
    move-exception p0

    .line 2776
    :try_start_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    :try_start_44
    throw p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception p0

    .line 2778
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2779
    throw p0
.end method

.method public legacyPasswordToHash([BI)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_53

    .line 5533
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_53

    .line 5541
    :cond_6
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSalt(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 5542
    array-length p2, p1

    array-length v0, p0

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    .line 5543
    array-length p1, p1

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string p0, "SHA-1"

    .line 5544
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const-string p1, "MD5"

    .line 5545
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 5547
    array-length v0, p0

    array-length v2, p1

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 5548
    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5549
    array-length p0, p0

    array-length v2, p1

    invoke-static {p1, v1, v0, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5551
    invoke-static {v0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object p0

    .line 5552
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 5553
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V
    :try_end_49
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_49} :catch_4a

    return-object p1

    :catch_4a
    move-exception p0

    .line 5555
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Missing digest algorithm: "

    invoke-direct {p1, p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_53
    :goto_53
    const/4 p0, 0x0

    return-object p0
.end method

.method public final loadEscrowData()V
    .registers 2

    .line 1330
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Lcom/android/server/locksettings/RebootEscrowManager;->loadRebootEscrowDataIfAvailable(Landroid/os/Handler;)V

    return-void
.end method

.method public final loadPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Landroid/app/admin/PasswordMetrics;
    .registers 7

    .line 3403
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 3404
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Landroid/app/admin/PasswordMetrics;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 3406
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final maybeShowEncryptionNotificationForUser(ILjava/lang/String;)V
    .registers 5

    .line 856
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 857
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    .line 864
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserKeyUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_14

    return-void

    .line 870
    :cond_14
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 871
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 872
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 873
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_45

    .line 874
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 875
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_45

    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 876
    invoke-virtual {p1, v0}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_45

    .line 879
    invoke-virtual {p0, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotificationForProfile(Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_45
    return-void
.end method

.method public final migrateFrpCredential()V
    .registers 7

    .line 1524
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v0

    sget-object v1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    if-eq v0, v1, :cond_b

    return-void

    .line 1527
    :cond_b
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1528
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1529
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v2

    .line 1530
    :try_start_34
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    if-eqz v0, :cond_57

    const-string/jumbo v0, "lockscreen.password_type"

    const-wide/16 v3, 0x0

    .line 1531
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    long-to-int v0, v3

    .line 1534
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    .line 1535
    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 1537
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->redactActualQualityToMostLenientEquivalentQuality(I)I

    move-result p0

    .line 1534
    invoke-virtual {v3, v4, v5, v1, p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->migrateFrpPasswordLocked(JLandroid/content/pm/UserInfo;I)V

    .line 1539
    :cond_57
    monitor-exit v2

    return-void

    :catchall_59
    move-exception p0

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_34 .. :try_end_5b} :catchall_59

    throw p0

    :cond_5c
    return-void
.end method

.method public final migrateOldData()V
    .registers 17

    move-object/from16 v0, p0

    const-string/jumbo v1, "migrated"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1346
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3b

    .line 1347
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1348
    sget-object v4, Lcom/android/server/locksettings/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    array-length v5, v4

    move v6, v3

    :goto_17
    if-ge v6, v5, :cond_2b

    aget-object v7, v4, v6

    .line 1349
    invoke-virtual {v1}, Landroid/content/ContentResolver;->getUserId()I

    move-result v8

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_28

    .line 1351
    invoke-virtual {v0, v7, v8, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_28
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_2b
    const-string/jumbo v1, "migrated"

    const-string/jumbo v4, "true"

    .line 1355
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "LockSettingsService"

    const-string v4, "Migrated lock settings to new location"

    .line 1356
    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    const-string/jumbo v1, "migrated_user_specific"

    .line 1360
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    if-nez v1, :cond_be

    .line 1361
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1362
    iget-object v7, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    move v8, v3

    .line 1363
    :goto_53
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_ae

    .line 1365
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v10, "lock_screen_owner_info"

    .line 1367
    invoke-static {v1, v10, v9}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 1368
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7c

    const-string/jumbo v11, "lock_screen_owner_info"

    .line 1369
    invoke-virtual {v0, v11, v10, v9}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v11, "lock_screen_owner_info"

    const-string v12, ""

    .line 1370
    invoke-static {v1, v11, v12, v9}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_7c
    const-wide/16 v11, 0x1

    :try_start_7e
    const-string/jumbo v13, "lock_screen_owner_info_enabled"

    .line 1379
    invoke-static {v1, v13, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_89

    const/4 v13, 0x1

    goto :goto_8a

    :cond_89
    move v13, v3

    :goto_8a
    const-string/jumbo v14, "lock_screen_owner_info_enabled"
    :try_end_8d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7e .. :try_end_8d} :catch_97

    move-object v15, v7

    if-eqz v13, :cond_92

    move-wide v6, v11

    goto :goto_93

    :cond_92
    move-wide v6, v4

    .line 1381
    :goto_93
    :try_start_93
    invoke-virtual {v0, v14, v6, v7, v9}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_96
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_93 .. :try_end_96} :catch_98

    goto :goto_a4

    :catch_97
    move-object v15, v7

    .line 1384
    :catch_98
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a4

    const-string/jumbo v6, "lock_screen_owner_info_enabled"

    .line 1385
    invoke-virtual {v0, v6, v11, v12, v9}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    :cond_a4
    :goto_a4
    const-string/jumbo v6, "lock_screen_owner_info_enabled"

    .line 1388
    invoke-static {v1, v6, v3, v9}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    add-int/lit8 v8, v8, 0x1

    move-object v7, v15

    goto :goto_53

    :cond_ae
    const-string/jumbo v1, "migrated_user_specific"

    const-string/jumbo v6, "true"

    .line 1391
    invoke-virtual {v0, v1, v6, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "LockSettingsService"

    const-string v6, "Migrated per-user lock settings to new location"

    .line 1392
    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_be
    const-string/jumbo v1, "migrated_biometric_weak"

    .line 1396
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_110

    .line 1397
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    move v6, v3

    .line 1398
    :goto_ce
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_100

    .line 1399
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v8, "lockscreen.password_type"

    .line 1400
    invoke-virtual {v0, v8, v4, v5, v7}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v8

    const-string/jumbo v10, "lockscreen.password_type_alternate"

    .line 1403
    invoke-virtual {v0, v10, v4, v5, v7}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v10

    const-wide/32 v14, 0x8000

    cmp-long v8, v8, v14

    if-nez v8, :cond_f7

    const-string/jumbo v8, "lockscreen.password_type"

    .line 1407
    invoke-virtual {v0, v8, v10, v11, v7}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    :cond_f7
    const-string/jumbo v8, "lockscreen.password_type_alternate"

    .line 1411
    invoke-virtual {v0, v8, v4, v5, v7}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_ce

    :cond_100
    const-string/jumbo v1, "migrated_biometric_weak"

    const-string/jumbo v4, "true"

    .line 1415
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "LockSettingsService"

    const-string v4, "Migrated biometric weak to use the fallback instead"

    .line 1416
    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_110
    const-string/jumbo v1, "migrated_lockscreen_disabled"

    .line 1422
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_168

    .line 1423
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 1424
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move v5, v3

    move v6, v5

    :goto_125
    if-ge v5, v4, :cond_138

    .line 1427
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v7

    if-eqz v7, :cond_135

    add-int/lit8 v6, v6, 0x1

    :cond_135
    add-int/lit8 v5, v5, 0x1

    goto :goto_125

    :cond_138
    const/4 v5, 0x1

    if-le v6, v5, :cond_158

    move v5, v3

    :goto_13c
    if-ge v5, v4, :cond_158

    .line 1434
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v7, "lockscreen.disabled"

    .line 1436
    invoke-virtual {v0, v7, v3, v6}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v7

    if-eqz v7, :cond_155

    const-string/jumbo v7, "lockscreen.disabled"

    .line 1437
    invoke-virtual {v0, v7, v3, v6}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    :cond_155
    add-int/lit8 v5, v5, 0x1

    goto :goto_13c

    :cond_158
    const-string/jumbo v1, "migrated_lockscreen_disabled"

    const-string/jumbo v4, "true"

    .line 1442
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "LockSettingsService"

    const-string v4, "Migrated lockscreen disabled flag"

    .line 1443
    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    :cond_168
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "android.hardware.type.watch"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ad

    const-string/jumbo v1, "migrated_wear_lockscreen_disabled"

    .line 1450
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1ad

    .line 1451
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 1452
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move v5, v3

    :goto_18a
    if-ge v5, v4, :cond_19d

    .line 1454
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v7, "lockscreen.disabled"

    .line 1455
    invoke-virtual {v0, v7, v3, v6}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_18a

    :cond_19d
    const-string/jumbo v1, "migrated_wear_lockscreen_disabled"

    const-string/jumbo v4, "true"

    .line 1457
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "LockSettingsService"

    const-string v4, "Migrated lockscreen_disabled for Wear devices"

    .line 1458
    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ad
    const-string/jumbo v1, "migrated_keystore_namespace"

    .line 1461
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e5

    .line 1463
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v1

    .line 1464
    :try_start_1b9
    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->migrateKeyNamespace()Z

    move-result v2

    const/4 v4, 0x1

    and-int/2addr v2, v4

    .line 1465
    monitor-exit v1
    :try_end_1c2
    .catchall {:try_start_1b9 .. :try_end_1c2} :catchall_1e2

    .line 1466
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateProfileLockKeys()Z

    move-result v1

    and-int/2addr v1, v2

    if-eqz v1, :cond_1da

    const-string/jumbo v1, "migrated_keystore_namespace"

    const-string/jumbo v2, "true"

    .line 1468
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "LockSettingsService"

    const-string v2, "Migrated keys to LSS namespace"

    .line 1469
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e5

    :cond_1da
    const-string v1, "LockSettingsService"

    const-string v2, "Failed to migrate keys to LSS namespace"

    .line 1471
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e5

    :catchall_1e2
    move-exception v0

    .line 1465
    :try_start_1e3
    monitor-exit v1
    :try_end_1e4
    .catchall {:try_start_1e3 .. :try_end_1e4} :catchall_1e2

    throw v0

    .line 1476
    :cond_1e5
    :goto_1e5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->cleanupAbnormalState()V

    return-void
.end method

.method public final migrateOldDataAfterSystemReady()V
    .registers 4

    .line 1482
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string/jumbo v0, "migrated_frp"

    const/4 v1, 0x0

    .line 1483
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1484
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateFrpCredential()V

    const/4 v2, 0x1

    .line 1485
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    const-string v0, "LockSettingsService"

    const-string v1, "Migrated migrated_frp."

    .line 1486
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateSecurityLog()V

    return-void
.end method

.method public final migrateProfileLockKeys()Z
    .registers 8

    .line 1547
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 1548
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_59

    .line 1550
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1551
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v5

    if-eqz v5, :cond_56

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1552
    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v5

    if-nez v5, :cond_56

    .line 1553
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "profile_key_name_encrypt_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->migrateLockSettingsKey(Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 1555
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "profile_key_name_decrypt_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->migrateLockSettingsKey(Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_59
    return v2
.end method

.method public final migrateSecurityLog()V
    .registers 11

    .line 1496
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->migrateLssLog()V

    const-string/jumbo v0, "lockscreen.pwdata.ver"

    const-string v1, ""

    const/4 v2, 0x0

    .line 1498
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1499
    sget-object v3, Lcom/android/server/locksettings/LockSettingsServiceLog;->SECURITY_LOG_VERSION:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_7c

    .line 1500
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_20

    const-string v1, "empty"

    .line 1501
    :cond_20
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "migrateSecurityLog! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 1503
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 1504
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v4, v2

    :goto_4a
    if-ge v4, v3, :cond_77

    .line 1506
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 1507
    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "User "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " list updated!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 1509
    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v7, v5, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->addPWFilelist(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    .line 1511
    :cond_77
    sget-object v1, Lcom/android/server/locksettings/LockSettingsServiceLog;->SECURITY_LOG_VERSION:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1513
    :cond_7c
    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->setSecurityDebugLevel(I)V

    return-void
.end method

.method public final notifyPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 5

    .line 3414
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    if-eqz v0, :cond_b

    .line 3415
    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 3430
    :cond_b
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyPasswordChangedForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 3

    return-void
.end method

.method public final notifyPasswordPolicyOneLockChanged(ZI)V
    .registers 3

    .line 1727
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 1729
    invoke-virtual {p0, p1, p2}, Landroid/sec/enterprise/PasswordPolicy;->notifyPasswordPolicyOneLockChanged(ZI)V

    :cond_d
    return-void
.end method

.method public final notifySeparateProfileChallengeChanged(I)V
    .registers 3

    .line 1736
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    if-eqz v0, :cond_b

    .line 1737
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 1742
    :cond_b
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V
    .registers 6

    .line 3728
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->isGsiRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p0, "LockSettingsService"

    const-string p1, "Running in GSI; skipping calls to AuthSecret and RebootEscrow"

    .line 3729
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3733
    :cond_10
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getVersion()B

    move-result v1

    .line 3734
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getSyntheticPassword()[B

    move-result-object v2

    .line 3733
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/locksettings/RebootEscrowManager;->callToRebootEscrowIfNeeded(IB[B)V

    .line 3736
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->callToAuthSecretIfNeeded(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    return-void
.end method

.method public final onChange()V
    .registers 1

    .line 832
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->invalidateCredentialTypeCache()V

    return-void
.end method

.method public onCleanupUser(I)V
    .registers 3

    .line 1069
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    .line 1073
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    move-result v0

    .line 1074
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    .line 1075
    monitor-enter p0

    .line 1076
    :try_start_12
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1077
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public final onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Landroid/app/admin/PasswordMetrics;I)V
    .registers 12

    .line 4037
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    if-eqz v0, :cond_10

    .line 4038
    invoke-static {p3}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4039
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSdpLockSettings:Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->migrateWithAuthToken(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    return-void

    :cond_10
    if-eqz p2, :cond_1d

    .line 4044
    monitor-enter p0

    .line 4045
    :try_start_13
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4046
    monitor-exit p0

    goto :goto_24

    :catchall_1a
    move-exception p1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    throw p1

    :cond_1d
    const-string p2, "LockSettingsService"

    const-string v0, "Null metrics after credential verification"

    .line 4048
    invoke-static {p2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4051
    :goto_24
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore([BI)V

    .line 4054
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object p2

    .line 4062
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isTokenUser(I)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "LockSettingsService"

    .line 4063
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unlocking user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with token"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4064
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 4065
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    const-wide/16 v5, 0x0

    move-object v4, p1

    move v7, p3

    .line 4064
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 4066
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object v0

    invoke-virtual {p0, p3, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    goto :goto_80

    :cond_66
    const-string v0, "LockSettingsService"

    .line 4068
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unlocking user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 4069
    invoke-virtual {p0, p3, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    :goto_80
    const/4 v0, 0x0

    .line 4072
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 4089
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 4099
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithSeparatedLock(I)Z

    move-result p2

    if-eqz p2, :cond_90

    .line 4108
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->setDeviceUnlockedForUser(I)V

    .line 4111
    :cond_90
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {p2, p3}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulStrongAuthUnlock(I)V

    .line 4113
    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    return-void
.end method

.method public final onPostPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 5

    if-nez p2, :cond_18

    .line 2558
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2559
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->shouldEncryptWithCredentials()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    .line 2560
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->setCredentialRequiredToDecrypt(Z)V

    .line 2562
    :cond_18
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isPattern()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    const-string/jumbo v1, "lockscreen.patterneverchosen"

    .line 2563
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 2565
    :cond_25
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->updatePasswordHistory(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 2566
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class p1, Landroid/app/trust/TrustManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/trust/TrustManager;

    invoke-virtual {p0, p2}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 18

    move-object v0, p0

    .line 3537
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->enforceShell()V

    .line 3538
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3539
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3542
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 3543
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Caller uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LockSettingsService"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    :try_start_2e
    new-instance v3, Lcom/android/server/locksettings/LockSettingsShellCommand;

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/android/server/locksettings/LockSettingsShellCommand;-><init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;II)V

    .line 3548
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mShellCommandCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {v3, v1}, Lcom/android/server/locksettings/LockSettingsShellCommand;->setCallback(Landroid/os/IRemoteCallback;)Lcom/android/server/locksettings/LockSettingsShellCommand;

    move-object v1, v3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 3549
    invoke-virtual/range {v1 .. v8}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_4e
    .catchall {:try_start_2e .. :try_end_4e} :catchall_52

    .line 3551
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_52
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3552
    throw v0
.end method

.method public onStartUser(I)V
    .registers 3

    const-string/jumbo v0, "user started"

    .line 1087
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(ILjava/lang/String;)V

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 4

    .line 1168
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$2;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public passwordToHash([BI)[B
    .registers 3

    .line 5560
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->legacyPasswordToHash([BI)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 5564
    :cond_8
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public passwordToHashSec([BI)[B
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 5579
    :cond_4
    :try_start_4
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSalt(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 5580
    array-length p2, p1

    array-length v1, p0

    add-int/2addr p2, v1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    .line 5581
    array-length p1, p1

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string p0, "SHA-1"

    .line 5584
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 5585
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move p1, v2

    :goto_24
    const/16 v1, 0x400

    if-ge p1, v1, :cond_4f

    if-eqz v0, :cond_2d

    .line 5587
    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 5588
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 5589
    invoke-virtual {p0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 5590
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_24

    .line 5592
    :cond_4f
    array-length p0, p2

    move p1, v2

    :goto_51
    if-ge p1, p0, :cond_58

    .line 5593
    aput-byte v2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_51

    .line 5595
    :cond_58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-string p2, "LockSettingsService"

    .line 5596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "passwordToHash time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v3

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "ms"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5597
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->toHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0
    :try_end_82
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_82} :catch_83

    return-object p0

    :catch_83
    move-exception p0

    .line 5599
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Missing digest algorithm: "

    invoke-direct {p1, p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final postponeOnCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Landroid/app/admin/PasswordMetrics;ILcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 7191
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Postpone credential verified event for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 7192
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mPendingVerifiedResults:Landroid/util/SparseArray;

    monitor-enter v0

    .line 7193
    :try_start_1a
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;

    invoke-direct {v1, p0, p4}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;)V

    .line 7194
    new-instance p4, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;

    invoke-direct {p4, p0, p1, p2, v1}, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Landroid/app/admin/PasswordMetrics;Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;)V

    .line 7196
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mPendingVerifiedResults:Landroid/util/SparseArray;

    invoke-virtual {p1, p3, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7197
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_59

    .line 7198
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-virtual {p1, p3}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getInnerAuthUserId(I)I

    move-result p1

    .line 7199
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result p2

    if-nez p2, :cond_58

    .line 7200
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Auth user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " has no credential"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 7201
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarVirtualLock:Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->onCredentialVerifiedForInner(Lcom/android/internal/widget/LockscreenCredential;I)Z

    :cond_58
    return-void

    :catchall_59
    move-exception p0

    .line 7197
    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3617
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final redactActualQualityToMostLenientEquivalentQuality(I)I
    .registers 3

    const/high16 p0, 0x20000

    if-eq p1, p0, :cond_15

    const/high16 v0, 0x30000

    if-eq p1, v0, :cond_15

    const/high16 p0, 0x40000

    if-eq p1, p0, :cond_15

    const/high16 v0, 0x50000

    if-eq p1, v0, :cond_15

    const/high16 v0, 0x60000

    if-eq p1, v0, :cond_15

    return p1

    :cond_15
    return p0
.end method

.method public final refreshWeaverSlots()V
    .registers 2

    const-string v0, "Refresh weaver slots"

    .line 6069
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6070
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 6071
    :try_start_8
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->refreshActiveSlots()V

    .line 6072
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public registerRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 5220
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1a

    .line 5221
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "registerRemoteLockCallback requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    :goto_1a
    const-string v0, "LockSettingsService"

    const-string/jumbo v1, "registerRemoteLockCallback!!"

    .line 5225
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5226
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5228
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mPassword:[B

    if-eqz v1, :cond_68

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockTypeForPasswordCheck:I

    if-ne v2, p1, :cond_68

    const/4 p1, -0x1

    if-eqz p2, :cond_49

    .line 5232
    :try_start_3a
    invoke-interface {p2, v1}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->checkRemoteLockPassword([B)I

    move-result p1
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3e} :catch_3f

    goto :goto_49

    :catch_3f
    move-exception p0

    const-string p1, "failed checkRemoteLockPassword callback!! after register"

    .line 5234
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5235
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void

    .line 5239
    :cond_49
    :goto_49
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "result"

    .line 5240
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5242
    :try_start_54
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    invoke-interface {p1, p2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_59} :catch_5a

    goto :goto_63

    :catch_5a
    move-exception p1

    const-string p2, "failed sendResult callback!! after register"

    .line 5244
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5245
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_63
    const/4 p1, 0x0

    .line 5247
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    .line 5248
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mPassword:[B

    :cond_68
    return-void
.end method

.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 2

    .line 3483
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 3484
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method public registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .registers 4

    .line 2695
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 2696
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2698
    :try_start_7
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 2700
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2701
    throw p0
.end method

.method public final removeAllFaceForUser(I)V
    .registers 5

    .line 4281
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getFaceManager()Landroid/hardware/face/FaceManager;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 4282
    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 4283
    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 4284
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 4285
    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->faceManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Landroid/hardware/face/FaceManager$RemovalCallback;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/hardware/face/FaceManager;->removeAll(ILandroid/hardware/face/FaceManager$RemovalCallback;)V

    const-wide/16 p0, 0x2710

    .line 4287
    :try_start_23
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_28} :catch_29

    goto :goto_3d

    :catch_29
    move-exception p0

    const-string p1, "LockSettingsService"

    const-string v0, "Latch interrupted when removing face"

    .line 4289
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    .line 4292
    :cond_32
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "com.samsung.android.bio.face"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    :cond_3d
    :goto_3d
    return-void
.end method

.method public final removeAllFingerprintForUser(I)V
    .registers 5

    .line 4266
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getFingerprintManager()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 4267
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 4268
    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 4269
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 4270
    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->fingerprintManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/hardware/fingerprint/FingerprintManager;->removeAll(ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    const-wide/16 p0, 0x2710

    .line 4272
    :try_start_23
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_28} :catch_29

    goto :goto_31

    :catch_29
    move-exception p0

    const-string p1, "LockSettingsService"

    const-string v0, "Latch interrupted when removing fingerprint"

    .line 4274
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_31
    :goto_31
    return-void
.end method

.method public final removeBiometricsForUser(I)V
    .registers 4

    .line 4248
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeCachedUnifiedChallenge(I)V
    .registers 2

    .line 4749
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->removePassword(I)V

    return-void
.end method

.method public final removeEscrowToken(JI)Z
    .registers 8

    .line 4585
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 4586
    :try_start_3
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    const-string p0, "LockSettingsService"

    const-string p1, "Cannot remove password handle"

    .line 4587
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4588
    monitor-exit v0

    return v2

    .line 4590
    :cond_15
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removePendingToken(JI)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_20

    .line 4591
    monitor-exit v0

    return v3

    .line 4593
    :cond_20
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->existsHandle(JI)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 4594
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyTokenBasedSyntheticPassword(JI)V

    .line 4602
    monitor-exit v0

    return v3

    .line 4604
    :cond_2f
    monitor-exit v0

    return v2

    :catchall_31
    move-exception p0

    .line 4606
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public removeGatekeeperPasswordHandle(J)V
    .registers 4

    .line 3147
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 3148
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 3149
    :try_start_6
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 3150
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public removeKey(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3628
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public final removeKeystoreProfileKey(I)V
    .registers 6

    .line 3468
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    if-eqz v0, :cond_b

    .line 3469
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 3471
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove keystore profile key for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3473
    :try_start_21
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "profile_key_name_encrypt_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 3474
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "profile_key_name_decrypt_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/security/KeyStoreException; {:try_start_21 .. :try_end_4f} :catch_50

    goto :goto_65

    :catch_50
    move-exception p0

    .line 3477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to remove keystore profile key for user:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_65
    return-void
.end method

.method public final removeUser(IZ)V
    .registers 5

    .line 3450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoveUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3451
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeBiometricsForUser(I)V

    .line 3452
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removeUser(Landroid/service/gatekeeper/IGateKeeperService;I)V

    .line 3453
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->removeUser(I)V

    .line 3455
    invoke-static {p1}, Landroid/security/AndroidKeyStoreMaintenance;->onUserRemoved(I)I

    .line 3456
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->removePassword(I)V

    .line 3458
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    if-nez p2, :cond_3a

    .line 3459
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result p2

    if-eqz p2, :cond_3d

    .line 3460
    :cond_3a
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    .line 3464
    :cond_3d
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeUser(I)V

    return-void
.end method

.method public removeWeakEscrowToken(JI)Z
    .registers 6

    .line 2739
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 2740
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2742
    :try_start_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->removeEscrowToken(JI)Z

    move-result p0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 2744
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2745
    throw p0
.end method

.method public reportSuccessfulBiometricUnlock(ZI)V
    .registers 3

    .line 3501
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkBiometricPermission()V

    .line 3502
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulBiometricUnlock(ZI)V

    return-void
.end method

.method public requestRemoteLockInfo(I)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 5388
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    const/4 v0, 0x4

    if-ge v4, v0, :cond_15a

    .line 5402
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "locked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v5

    if-eqz v5, :cond_154

    .line 5404
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "message"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 5405
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "phonenumber"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v7, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 5406
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "enableemergencycall"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v9

    .line 5407
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "clientname"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10, v7, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 5408
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "emailaddress"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11, v7, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 5409
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "allowfailcount"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-wide/16 v12, 0x0

    invoke-virtual {v1, v11, v12, v13, v2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v14

    long-to-int v11, v14

    .line 5410
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v15, "locktime"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14, v12, v13, v2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v14

    .line 5411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "permanentblockcount"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v12, v13, v2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v12

    long-to-int v0, v12

    .line 5412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "skippin"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    invoke-virtual {v1, v3, v12, v2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v3

    .line 5414
    new-instance v13, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    invoke-direct {v13, v4, v5}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    invoke-virtual {v13, v6}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v5

    .line 5415
    invoke-virtual {v5, v8}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setEnableEmergencyCall(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v5

    .line 5416
    invoke-virtual {v5, v10}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setEmailAddress(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setAllowFailCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setLockTimeOut(J)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v5

    .line 5417
    invoke-virtual {v5, v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBlockCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setSkipPinContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v3

    .line 5420
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    const-string v5, "failed changeRemoteLockState callback!"

    const-string v6, "LockSettingsService"

    if-eqz v0, :cond_138

    .line 5423
    :try_start_12c
    invoke-interface {v0, v3}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_12f
    .catch Landroid/os/RemoteException; {:try_start_12c .. :try_end_12f} :catch_130

    goto :goto_138

    :catch_130
    move-exception v0

    move-object v7, v0

    .line 5425
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5426
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5431
    :cond_138
    :goto_138
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    if-eqz v0, :cond_155

    .line 5434
    :try_start_147
    invoke-interface {v0, v3}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_14a
    .catch Landroid/os/RemoteException; {:try_start_147 .. :try_end_14a} :catch_14b

    goto :goto_155

    :catch_14b
    move-exception v0

    move-object v3, v0

    .line 5436
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5437
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_155

    :cond_154
    move v12, v3

    :cond_155
    :goto_155
    add-int/lit8 v4, v4, 0x1

    move v3, v12

    goto/16 :goto_9

    :cond_15a
    return-void
.end method

.method public requireStrongAuth(II)V
    .registers 3

    .line 3495
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 3496
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    return-void
.end method

.method public resetKeyStore(I)V
    .registers 15

    .line 3002
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    if-eqz v0, :cond_b

    .line 3003
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 3005
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 3007
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3008
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3009
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 3010
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 3012
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v4

    if-eqz v4, :cond_22

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 3013
    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v4

    if-nez v4, :cond_22

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 3014
    invoke-virtual {v4, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 3016
    :try_start_48
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3017
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_48 .. :try_end_5a} :catch_5b
    .catch Ljava/security/InvalidKeyException; {:try_start_48 .. :try_end_5a} :catch_5b
    .catch Ljava/security/KeyStoreException; {:try_start_48 .. :try_end_5a} :catch_5b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_48 .. :try_end_5a} :catch_5b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_48 .. :try_end_5a} :catch_5b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_48 .. :try_end_5a} :catch_5b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_48 .. :try_end_5a} :catch_5b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_48 .. :try_end_5a} :catch_5b
    .catch Ljava/security/cert/CertificateException; {:try_start_48 .. :try_end_5a} :catch_5b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_5a} :catch_5b

    goto :goto_22

    :catch_5b
    move-exception v3

    const-string v4, "LockSettingsService"

    const-string v5, "Failed to decrypt child profile key"

    .line 3022
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    :cond_64
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 3028
    :try_start_66
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v4

    array-length v5, v4

    move v6, v3

    :goto_6e
    if-ge v6, v5, :cond_88

    aget v7, v4, v6

    .line 3029
    sget-object v8, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    array-length v9, v8

    move v10, v3

    :goto_76
    if-ge v10, v9, :cond_85

    aget v11, v8, v10

    .line 3031
    invoke-static {v7, v11}, Landroid/os/UserHandle;->getUid(II)I

    move-result v11

    int-to-long v11, v11

    .line 3030
    invoke-static {v3, v11, v12}, Landroid/security/AndroidKeyStoreMaintenance;->clearNamespace(IJ)I

    add-int/lit8 v10, v10, 0x1

    goto :goto_76

    :cond_85
    add-int/lit8 v6, v6, 0x1

    goto :goto_6e

    .line 3034
    :cond_88
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result p1

    if-eqz p1, :cond_9a

    const/4 p1, 0x2

    const-wide/16 v4, 0x66

    .line 3035
    invoke-static {p1, v4, v5}, Landroid/security/AndroidKeyStoreMaintenance;->clearNamespace(IJ)I
    :try_end_9a
    .catchall {:try_start_66 .. :try_end_9a} :catchall_c0

    .line 3039
    :cond_9a
    :goto_9a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_bf

    .line 3040
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3041
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/LockscreenCredential;

    if-eq p1, v2, :cond_b7

    if-eqz v4, :cond_b7

    .line 3044
    invoke-virtual {p0, p1, v4}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(ILcom/android/internal/widget/LockscreenCredential;)V

    :cond_b7
    if-eqz v4, :cond_bc

    .line 3047
    invoke-virtual {v4}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_bc
    add-int/lit8 v3, v3, 0x1

    goto :goto_9a

    :cond_bf
    return-void

    :catchall_c0
    move-exception p1

    .line 3039
    :goto_c1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_e6

    .line 3040
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3041
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LockscreenCredential;

    if-eq v4, v2, :cond_de

    if-eqz v5, :cond_de

    .line 3044
    invoke-virtual {p0, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(ILcom/android/internal/widget/LockscreenCredential;)V

    :cond_de
    if-eqz v5, :cond_e3

    .line 3047
    invoke-virtual {v5}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_e3
    add-int/lit8 v3, v3, 0x1

    goto :goto_c1

    .line 3050
    :cond_e6
    throw p1
.end method

.method public final scheduleGc()V
    .registers 4

    .line 4958
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda18;-><init>()V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public scheduleNonStrongBiometricIdleTimeout(I)V
    .registers 2

    .line 3507
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkBiometricPermission()V

    .line 3508
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->scheduleNonStrongBiometricIdleTimeout(I)V

    return-void
.end method

.method public final semBioFaceManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;
    .registers 3

    .line 4350
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$7;

    invoke-direct {v0, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$7;-><init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method

.method public final sendCredentialsOnChangeIfRequired(Lcom/android/internal/widget/LockscreenCredential;IZ)V
    .registers 7

    if-eqz p3, :cond_3

    return-void

    .line 2247
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result p3

    if-eqz p3, :cond_b

    const/4 p3, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object p3

    .line 2249
    :goto_f
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getProfilesWithSameLockScreen(I)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_17
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2250
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 2251
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    .line 2250
    invoke-virtual {v1, v2, p3, v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretChanged(I[BI)V

    goto :goto_17

    :cond_31
    return-void
.end method

.method public final sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 7

    .line 2209
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    if-eqz v0, :cond_b

    .line 2210
    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const/16 v0, -0x270f

    if-ne p2, v0, :cond_10

    return-void

    .line 2220
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    .line 2225
    :cond_17
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_23

    :cond_1f
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v0

    .line 2227
    :goto_23
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getProfilesWithSameLockScreen(I)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2228
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 2229
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v3

    .line 2228
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretAvailable(I[BI)V

    goto :goto_2b

    :cond_45
    return-void
.end method

.method public sendLockTypeChangedInfo(I)V
    .registers 3

    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 5762
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1a

    .line 5763
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "sendLockTypeChangedInfo requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5767
    :cond_1a
    :goto_1a
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->sendLockTypeChangedInfo(I)V

    return-void
.end method

.method public setAppLockBackupPin(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5795
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 5796
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 5797
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash([BI)[B

    move-result-object p0

    .line 5796
    invoke-virtual {v0, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeAppLockBackupPinHash([BI)V

    return-void
.end method

.method public setAppLockFingerprintPassword(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5802
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 5803
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 5804
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash([BI)[B

    move-result-object p0

    .line 5803
    invoke-virtual {v0, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeAppLockFingerprintPasswordHash([BI)V

    return-void
.end method

.method public setAppLockPassword(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5781
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 5782
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 5783
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash([BI)[B

    move-result-object p0

    .line 5782
    invoke-virtual {v0, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeAppLockPasswordHash([BI)V

    return-void
.end method

.method public setAppLockPattern(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5788
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 5789
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 5790
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToByteArray(Ljava/util/List;)[B

    move-result-object p1

    .line 5789
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeAppLockPatternHash([BI)V

    return-void
.end method

.method public setAppLockPin(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5774
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 5775
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash([BI)[B

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeAppLockPinHash([BI)V

    return-void
.end method

.method public final setAuthlessUserKeyProtection(I[B)V
    .registers 4

    const/4 v0, 0x0

    .line 2903
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    return-void
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .registers 4

    .line 1753
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1754
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->setBoolean(Ljava/lang/String;ZI)V

    return-void
.end method

.method public setCarrierLockEnabled(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final setCredentialRequiredToDecrypt(Z)V
    .registers 3

    .line 2685
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2686
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "require_password_to_decrypt"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_12
    return-void
.end method

.method public final setDeviceUnlockedForUser(I)V
    .registers 3

    .line 4132
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/trust/TrustManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/trust/TrustManager;

    const/4 v0, 0x0

    .line 4133
    invoke-virtual {p0, p1, v0}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    return-void
.end method

.method public final setKeyguardStoredQuality(II)V
    .registers 5

    .line 1801
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    int-to-long v0, p1

    const-string/jumbo p1, "lockscreen.password_type"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->setLong(Ljava/lang/String;JI)V

    return-void
.end method

.method public setKeystorePassword([BI)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1904
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    if-eqz v0, :cond_b

    .line 1905
    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 1907
    :cond_b
    invoke-static {p2, p1}, Landroid/security/AndroidKeyStoreMaintenance;->onUserPasswordChanged(I[B)I

    move-result p1

    .line 1909
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setKeystorePassword, userhandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", ret = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    return-void
.end method

.method public setKnoxGuard(ILcom/android/internal/widget/RemoteLockInfo;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5266
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 5269
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->applyRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)Z

    move-result p0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    :catch_8
    const-string p0, "LockSettingsService"

    const-string p1, "failed applyRemoteLock!"

    .line 5271
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setLockCarrierPassword([BI)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5493
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 5494
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash([BI)[B

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeCarrierPasswordHash([BI)V

    return-void
.end method

.method public setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z
    .registers 5

    const/4 v0, 0x0

    .line 2277
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithIgnoreNotifyIfNeeded(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result p0

    return p0
.end method

.method public final setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z
    .registers 9

    .line 2418
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2419
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2420
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    if-eqz v0, :cond_17

    invoke-static {p3}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2430
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarVirtualLock:Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result p0

    return p0

    .line 2448
    :cond_17
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2449
    :try_start_1a
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_ab

    if-eqz v1, :cond_28

    .line 2451
    :try_start_20
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->spBasedSetLockCredentialInternalLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result p0
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_26

    :try_start_24
    monitor-exit v0

    return p0

    :catchall_26
    move-exception p0

    .line 2471
    throw p0

    .line 2473
    :cond_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_ab

    .line 2475
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_58

    const/4 p2, 0x0

    .line 2476
    invoke-virtual {p0, p3, p2, p2}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I[B[B)V

    .line 2477
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    .line 2478
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->createEmptyHash()Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->writeCredentialHash(Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;I)V

    const/4 v0, 0x0

    .line 2482
    invoke-virtual {p0, v0, p3}, Lcom/android/server/locksettings/LockSettingsService;->setKeyguardStoredQuality(II)V

    .line 2483
    invoke-virtual {p0, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    .line 2484
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 2485
    invoke-virtual {p0, p3, p2}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    .line 2486
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 2487
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnChangeIfRequired(Lcom/android/internal/widget/LockscreenCredential;IZ)V

    const/4 p0, 0x1

    return p0

    .line 2491
    :cond_58
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 2492
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 2494
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v1

    if-eqz v1, :cond_98

    .line 2497
    :try_start_6a
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p2
    :try_end_6e
    .catch Ljava/io/FileNotFoundException; {:try_start_6a .. :try_end_6e} :catch_78
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_6a .. :try_end_6e} :catch_6f
    .catch Ljava/security/InvalidKeyException; {:try_start_6a .. :try_end_6e} :catch_6f
    .catch Ljava/security/KeyStoreException; {:try_start_6a .. :try_end_6e} :catch_6f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6a .. :try_end_6e} :catch_6f
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_6a .. :try_end_6e} :catch_6f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6a .. :try_end_6e} :catch_6f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_6a .. :try_end_6e} :catch_6f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_6a .. :try_end_6e} :catch_6f
    .catch Ljava/security/cert/CertificateException; {:try_start_6a .. :try_end_6e} :catch_6f
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6e} :catch_6f

    goto :goto_98

    :catch_6f
    move-exception v1

    const-string v2, "LockSettingsService"

    const-string v3, "Failed to decrypt child profile key"

    .line 2504
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_98

    :catch_78
    const-string v1, "LockSettingsService"

    const-string v2, "Child profile key not found"

    .line 2499
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    .line 2508
    :cond_80
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    if-nez v1, :cond_98

    .line 2509
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v1

    if-nez v1, :cond_91

    const-string v1, "LockSettingsService"

    const-string v2, "Saved credential provided, but none stored"

    .line 2510
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    :cond_91
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 2513
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p2

    .line 2516
    :cond_98
    :goto_98
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v1

    .line 2519
    :try_start_9b
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 2520
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->spBasedSetLockCredentialInternalLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result p0
    :try_end_a4
    .catchall {:try_start_9b .. :try_end_a4} :catchall_a6

    :try_start_a4
    monitor-exit v1

    return p0

    :catchall_a6
    move-exception p0

    .line 2545
    throw p0

    :catchall_a8
    move-exception p0

    .line 2546
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_a4 .. :try_end_aa} :catchall_a8

    throw p0

    :catchall_ab
    move-exception p0

    .line 2473
    :try_start_ac
    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw p0
.end method

.method public final setLockCredentialWithAuthTokenLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSpManager"
        }
    .end annotation

    .line 4149
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v0

    .line 4150
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J

    move-result-wide v1

    .line 4153
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_8d

    .line 4157
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasSidForUser(I)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 4163
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v6

    const-wide/16 v8, 0x0

    move-object v7, p2

    move v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    goto/16 :goto_eb

    .line 4167
    :cond_2c
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    invoke-virtual {v3, v5, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 4168
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v7

    const-wide/16 v9, 0x0

    move-object v8, p2

    move v11, p3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    .line 4170
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isTokenUser(I)Z

    move-result v5

    const-string v6, "LockSettingsService"

    if-eqz v5, :cond_67

    .line 4171
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set token and key derived from sp for FBE: user="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4180
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v5

    invoke-virtual {p0, p3, v5, v3}, Lcom/android/server/locksettings/LockSettingsService;->setUserKeyProtection(I[BLcom/android/internal/widget/VerifyCredentialResponse;)V

    goto :goto_82

    .line 4183
    :cond_67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set key derived from sp for FBE: user="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4184
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v3

    invoke-virtual {p0, p3, v3}, Lcom/android/server/locksettings/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    .line 4186
    :goto_82
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 4187
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    goto :goto_eb

    .line 4192
    :cond_8d
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordsForAllTiedProfiles(I)Ljava/util/Map;

    move-result-object v3

    .line 4193
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v6

    const-wide/16 v8, 0x0

    move-object v7, p2

    move v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v5

    .line 4196
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v6, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    .line 4197
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    .line 4202
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isTokenUser(I)Z

    move-result v6

    if-eqz v6, :cond_cc

    if-eqz v5, :cond_da

    .line 4204
    invoke-virtual {v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object v5

    if-eqz v5, :cond_c4

    .line 4208
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v6

    invoke-virtual {p0, p3, v5, v6}, Lcom/android/server/locksettings/LockSettingsService;->unlockUserKey(I[B[B)V

    .line 4209
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v6

    invoke-virtual {p0, p3, v5, v6}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I[B[B)V

    goto :goto_da

    .line 4206
    :cond_c4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty payload verifying a credential we just set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4212
    :cond_cc
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v5

    invoke-virtual {p0, p3, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->unlockUserKey(I[B[B)V

    .line 4213
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v5

    invoke-virtual {p0, p3, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I[B[B)V

    .line 4216
    :cond_da
    :goto_da
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 4224
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore([BI)V

    .line 4225
    invoke-virtual {p0, v4, p3}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    .line 4226
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->removeBiometricsForUser(I)V

    move-object v4, v3

    .line 4228
    :goto_eb
    invoke-virtual {p0, v1, v2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setSyntheticPasswordHandleLocked(JI)V

    .line 4229
    invoke-virtual {p0, p3, v4}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    .line 4231
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 4232
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {p1, p3}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->removePassword(I)V

    const/4 p1, -0x1

    if-eq v0, p1, :cond_101

    .line 4234
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyAllWeakTokenBasedSyntheticPasswords(I)V

    :cond_101
    if-eqz v4, :cond_121

    .line 4238
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_121

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 4239
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    goto :goto_10b

    :cond_121
    return-wide v1
.end method

.method public setLockCredentialWithIgnoreNotifyIfNeeded(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z
    .registers 11

    .line 2283
    iget-boolean p4, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    if-nez p4, :cond_16

    if-eqz p1, :cond_16

    .line 2284
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result p4

    const/4 v0, -0x1

    if-ne p4, v0, :cond_e

    goto :goto_16

    .line 2285
    :cond_e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This operation requires secure lock screen feature"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    :goto_16
    const-string p4, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 2288
    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_3e

    const-string p4, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_3e

    const-string p4, "android.permission.SET_INITIAL_LOCK"

    .line 2289
    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_35

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result p4

    if-eqz p4, :cond_35

    goto :goto_3e

    .line 2292
    :cond_35
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "setLockCredential requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2298
    :cond_3e
    :goto_3e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 p4, 0x0

    .line 2300
    :try_start_43
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->enforceFrpResolved()V

    .line 2303
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "n_digits_pin_enabled"

    invoke-static {v2, v3, p4, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2314
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v2

    if-nez v2, :cond_70

    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 2318
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p2, v2, p4}, Lcom/android/server/locksettings/LockSettingsService;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2320
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 2321
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p2

    .line 2366
    :cond_70
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_73
    .catchall {:try_start_43 .. :try_end_73} :catchall_bd

    .line 2367
    :try_start_73
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result p2

    if-nez p2, :cond_86

    .line 2369
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 2370
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_73 .. :try_end_7d} :catchall_ba

    .line 2401
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2403
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->uploadLogFile(I)V

    return p4

    :cond_86
    const/4 p2, 0x0

    const/4 v3, 0x1

    .line 2372
    :try_start_88
    invoke-virtual {p0, p3, v3, p2}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 2379
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 2381
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_88 .. :try_end_8f} :catchall_ba

    .line 2382
    :try_start_8f
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result p2

    if-eqz p2, :cond_98

    .line 2384
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->setDeviceUnlockedForUser(I)V

    .line 2386
    :cond_98
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    .line 2387
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->onPostPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 2390
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "ppp_enroll_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p1, p2, v4, v5, p3}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    .line 2398
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V
    :try_end_b1
    .catchall {:try_start_8f .. :try_end_b1} :catchall_bd

    .line 2401
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2403
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->uploadLogFile(I)V

    return v3

    :catchall_ba
    move-exception p1

    .line 2381
    :try_start_bb
    monitor-exit v2
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    :try_start_bc
    throw p1
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bd

    :catchall_bd
    move-exception p1

    .line 2401
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2403
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->uploadLogFile(I)V

    .line 2405
    throw p1
.end method

.method public final setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .registers 13

    .line 4616
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    if-eqz v0, :cond_15

    .line 4617
    invoke-static {p5}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4618
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarVirtualLock:Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result p0

    return p0

    .line 4623
    :cond_15
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 4629
    :try_start_18
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 4632
    invoke-virtual {p0, p2, p3, p5}, Lcom/android/server/locksettings/LockSettingsService;->isEscrowTokenActive(JI)Z

    move-result v1

    if-nez v1, :cond_43

    const-string p0, "LockSettingsService"

    .line 4633
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown or unactivated token: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 4634
    monitor-exit v0

    return p0

    .line 4636
    :cond_43
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithTokenInternalLocked(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result p2

    .line 4643
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_18 .. :try_end_48} :catchall_76

    if-eqz p2, :cond_6d

    .line 4645
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter p3

    const/4 p4, 0x1

    const/4 v0, 0x0

    .line 4646
    :try_start_4f
    invoke-virtual {p0, p5, p4, v0}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 4647
    monitor-exit p3
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_6a

    .line 4648
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result p3

    if-eqz p3, :cond_63

    .line 4652
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance p4, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda4;

    invoke-direct {p4, p0, p5}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4654
    :cond_63
    invoke-virtual {p0, p1, p5}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 4655
    invoke-virtual {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    goto :goto_6d

    :catchall_6a
    move-exception p0

    .line 4647
    :try_start_6b
    monitor-exit p3
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw p0

    :cond_6d
    :goto_6d
    return p2

    .line 4630
    :cond_6e
    :try_start_6e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Escrow token is disabled on the current user"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_76
    move-exception p0

    .line 4643
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_6e .. :try_end_78} :catchall_76

    throw p0
.end method

.method public final setLockCredentialWithTokenInternalLocked(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSpManager"
        }
    .end annotation

    .line 4684
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p2

    .line 4686
    iget-object p3, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const/4 p4, 0x0

    const-string v0, "LockSettingsService"

    if-nez p3, :cond_1a

    const-string p0, "Invalid escrow token supplied"

    .line 4687
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 4690
    :cond_1a
    iget-object p3, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result p3

    if-eqz p3, :cond_28

    const-string p0, "Obsolete token: synthetic password derived but it fails GK verification."

    .line 4693
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 4704
    :cond_28
    iget-object p3, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {p0, p5, p3}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 4705
    invoke-virtual {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide p3

    .line 4706
    iget-object p2, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {p0, p1, p2, p5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithAuthTokenLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J

    .line 4707
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    const/4 p0, 0x1

    return p0
.end method

.method public setLockFMMPassword([BI)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5446
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 5447
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash([BI)[B

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFMMPasswordHash([BI)V

    return-void
.end method

.method public setLockModeChangedCallback(Landroid/os/IRemoteCallback;)V
    .registers 3

    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 5753
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1a

    .line 5754
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "setLockModeChangedCallback requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5758
    :cond_1a
    :goto_1a
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->setSecureLockModeChangedCallback(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method public setLong(Ljava/lang/String;JI)V
    .registers 5

    .line 1759
    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1760
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->setLong(Ljava/lang/String;JI)V

    return-void
.end method

.method public setRecoverySecretTypes([I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3592
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setRecoverySecretTypes([I)V

    return-void
.end method

.method public setRecoveryStatus(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3581
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setRecoveryStatus(Ljava/lang/String;I)V

    return-void
.end method

.method public setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5278
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 5280
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->applyRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_e

    :catch_7
    const-string p0, "LockSettingsService"

    const-string p1, "failed applyRemoteLock!"

    .line 5282
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    return-void
.end method

.method public setSecurityDebugLevel(I)V
    .registers 4

    const-string v0, "LockSettingsService"

    :try_start_2
    const-string/jumbo v1, "window"

    .line 5629
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "!@safe mode on"

    .line 5631
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5632
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->setSecurityDebugLevel(I)V

    goto :goto_3d

    :cond_1e
    const-string p0, "!@safe mode off"

    .line 5634
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_24

    goto :goto_3d

    :catch_24
    move-exception p0

    .line 5637
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAFEMODE Exception occurs! "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3d
    return-void
.end method

.method public setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V
    .registers 6

    .line 1677
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    if-eqz v0, :cond_b

    .line 1678
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 1684
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1685
    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    if-nez v0, :cond_24

    if-eqz p3, :cond_24

    .line 1687
    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    goto :goto_24

    .line 1688
    :cond_1c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This operation requires secure lock screen feature."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1691
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p3, :cond_2a

    goto :goto_2e

    .line 1693
    :cond_2a
    :try_start_2a
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p3

    .line 1692
    :goto_2e
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 1694
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_36

    .line 1695
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    return-void

    :catchall_36
    move-exception p0

    .line 1694
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public final setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSeparateChallengeLock"
        }
    .end annotation

    .line 1701
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    if-eqz v0, :cond_b

    .line 1702
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x0

    const-string/jumbo v1, "lockscreen.profilechallenge"

    .line 1704
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    .line 1705
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    xor-int/lit8 v2, p2, 0x1

    .line 1708
    invoke-virtual {p0, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordPolicyOneLockChanged(ZI)V

    if-eqz p2, :cond_26

    .line 1713
    :try_start_1d
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    .line 1714
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    goto :goto_29

    .line 1716
    :cond_26
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockIfNecessary(ILcom/android/internal/widget/LockscreenCredential;)V
    :try_end_29
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_29} :catch_2a

    :goto_29
    return-void

    :catch_2a
    move-exception p2

    .line 1719
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1720
    throw p2
.end method

.method public setServerParams([B)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3576
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setServerParams([B)V

    return-void
.end method

.method public setShellCommandCallback(Landroid/os/IRemoteCallback;)V
    .registers 2

    .line 5618
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 5619
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mShellCommandCallback:Landroid/os/IRemoteCallback;

    return-void
.end method

.method public setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3571
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 1774
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1775
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final setSyntheticPasswordHandleLocked(JI)V
    .registers 7

    .line 3857
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v0

    const-string/jumbo v2, "sp-handle"

    .line 3858
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    const-string/jumbo p1, "prev-sp-handle"

    .line 3859
    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 3860
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string/jumbo v0, "sp-handle-ts"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    return-void
.end method

.method public final setSyntheticPasswordTryHandleLocked(ILjava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "sp-handle-try"

    .line 5716
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final setUserKeyProtection(I[BLcom/android/internal/widget/VerifyCredentialResponse;)V
    .registers 5

    .line 2859
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    if-eqz v0, :cond_b

    .line 2860
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    if-eqz p3, :cond_40

    .line 2866
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_25

    .line 2870
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object p3

    if-eqz p3, :cond_1d

    .line 2874
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    return-void

    .line 2872
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty payload verifying a credential we just set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2867
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Non-OK response verifying a credential we just set "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2868
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2864
    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null response verifying a credential we just set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 4

    .line 3383
    monitor-enter p0

    .line 3384
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3385
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public final shouldEncryptWithCredentials()Z
    .registers 2

    .line 2647
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialRequiredToDecrypt()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->isDoNotAskCredentialsOnBootSet()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public shouldMigrateToSyntheticPasswordLocked(I)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3882
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 10

    .line 1043
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x10805a4

    .line 1045
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 1046
    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1047
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1048
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const v3, 0x106001c

    .line 1049
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1051
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 1052
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 1053
    invoke-virtual {p2, p4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 1054
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 1055
    invoke-virtual {p2, p5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 1056
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 1057
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 p3, 0x0

    const/16 p4, 0x9

    invoke-virtual {p0, p3, p4, p2, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final showEncryptionNotificationForProfile(Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 10

    .line 890
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 893
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getEncryptionNotificationTitle()Ljava/lang/String;

    move-result-object v3

    .line 896
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getEncryptionNotificationMessage()Ljava/lang/String;

    move-result-object v4

    .line 899
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getEncryptionNotificationDetail()Ljava/lang/String;

    move-result-object v5

    .line 901
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 903
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_28

    return-void

    .line 909
    :cond_28
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v1

    if-nez v1, :cond_2f

    return-void

    :cond_2f
    const/high16 v1, 0x10800000

    .line 911
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 913
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const/high16 v2, 0xa000000

    const/4 v6, 0x0

    invoke-static {v1, v6, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 917
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string/jumbo p2, "showing encryption notification, user: %d; reason: %s"

    .line 916
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "LockSettingsService"

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move-object v2, p1

    move-object v6, v0

    .line 919
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final spBasedDoVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 15

    .line 3892
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0, p2}, Lcom/android/server/locksettings/LockSettingsService$Injector;->hasEnrolledBiometrics(I)Z

    move-result v0

    const-string v1, "LockSettingsService"

    .line 3894
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "spBasedDoVerifyCredential: user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " hasEnrolledBiometrics="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    and-int/2addr p4, v0

    if-eqz p4, :cond_2b

    move p4, v0

    goto :goto_2c

    :cond_2b
    const/4 p4, 0x0

    .line 3915
    :goto_2c
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v1

    .line 3916
    :try_start_2f
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v2

    if-nez v2, :cond_38

    const/4 p0, 0x0

    .line 3917
    monitor-exit v1

    return-object p0

    :cond_38
    const/16 v2, -0x270f

    if-ne p2, v2, :cond_48

    .line 3920
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object p0

    invoke-virtual {p2, p0, p1, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyFrpCredential(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 3924
    :cond_48
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 3925
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 3926
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    .line 3925
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p3

    .line 3927
    iget-object v2, p3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 3930
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_8d

    .line 3931
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    iget-object v3, p3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 3932
    invoke-virtual {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v3

    .line 3931
    invoke-virtual {v2, p2, v3}, Lcom/android/server/locksettings/BiometricDeferredQueue;->addPendingLockoutResetForUser(I[B)V

    .line 3936
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    iget-object v6, p3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const-wide/16 v7, 0x0

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 3938
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-eqz v3, :cond_8d

    const-string p0, "LockSettingsService"

    const-string/jumbo p1, "verifyChallenge with SP failed."

    .line 3941
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3942
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    monitor-exit v1

    return-object p0

    .line 3945
    :cond_8d
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_2f .. :try_end_8e} :catchall_10b

    .line 3946
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_9e

    .line 3947
    iget-object v0, p3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 3948
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    move-result-object p1

    .line 3947
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Landroid/app/admin/PasswordMetrics;I)V

    goto :goto_e4

    .line 3968
    :cond_9e
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result p1

    if-ne p1, v0, :cond_e4

    const-string/jumbo p1, "spBasedDoVerifyCredential RESPONSE_RETRY"

    .line 3969
    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3971
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentFailedPasswordAttempts(I)I

    move-result p1

    const/16 v1, 0xa

    if-le p1, v1, :cond_d9

    .line 3973
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many failed, fail count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", timeout = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3975
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3973
    invoke-virtual {v1, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 3976
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->uploadLogFile(I)V

    .line 3979
    :cond_d9
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result p1

    if-lez p1, :cond_e4

    const/16 p1, 0x8

    .line 3980
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    .line 3984
    :cond_e4
    :goto_e4
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result p1

    if-eqz p1, :cond_10a

    if-eqz p4, :cond_10a

    const-string/jumbo p1, "request gatekeeper pw handle"

    .line 3985
    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3986
    iget-object p1, p3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 3987
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object p1

    .line 3986
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->storeGatekeeperPasswordTemporarily([B)J

    move-result-wide p0

    .line 3999
    new-instance p2, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    invoke-direct {p2}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    invoke-virtual {p2, p0, p1}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->setGatekeeperPasswordHandle(J)Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    move-result-object p0

    .line 4000
    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0

    :cond_10a
    return-object v2

    :catchall_10b
    move-exception p0

    .line 3945
    :try_start_10c
    monitor-exit v1
    :try_end_10d
    .catchall {:try_start_10c .. :try_end_10d} :catchall_10b

    throw p0
.end method

.method public final spBasedDoVerifyCredentialForDualDarDo(Lcom/android/internal/widget/LockscreenCredential;IILcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 19

    move-object v0, p0

    move/from16 v8, p2

    .line 7130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verify sp based credential for dual-dar user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const/16 v9, 0x8

    new-array v1, v9, [Ljava/lang/Object;

    const-string/jumbo v2, "userCredential"

    const/4 v10, 0x0

    aput-object v2, v1, v10

    .line 7131
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v2

    const/4 v11, 0x1

    aput-object v2, v1, v11

    const-string v2, "credentialType"

    const/4 v12, 0x2

    aput-object v2, v1, v12

    .line 7132
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    const-string/jumbo v3, "userId"

    aput-object v3, v1, v2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/4 v2, 0x6

    const-string/jumbo v3, "option"

    aput-object v3, v1, v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 7131
    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 7138
    iget-object v13, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v13

    .line 7139
    :try_start_58
    invoke-virtual {p0, v8}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-nez v1, :cond_62

    .line 7141
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    monitor-exit v13

    return-object v0

    .line 7144
    :cond_62
    invoke-virtual {p0, v8}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v3

    .line 7145
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 7146
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    const/4 v7, 0x0

    move-object v5, p1

    move/from16 v6, p2

    .line 7145
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v7

    .line 7148
    iget-object v1, v7, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 7150
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_a0

    .line 7153
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    iget-object v3, v7, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const-wide/16 v4, 0x0

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    if-eqz v1, :cond_94

    .line 7156
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-eqz v2, :cond_a0

    :cond_94
    const-string v0, "LockSettingsService"

    const-string/jumbo v1, "verifyChallenge with SP failed."

    .line 7159
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 7160
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    monitor-exit v13

    return-object v0

    .line 7163
    :cond_a0
    monitor-exit v13
    :try_end_a1
    .catchall {:try_start_58 .. :try_end_a1} :catchall_e8

    .line 7164
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_d8

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_b7

    .line 7167
    iget-object v2, v7, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 7168
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    move-result-object v3

    move-object/from16 v4, p4

    .line 7167
    invoke-virtual {p0, v2, v3, v8, v4}, Lcom/android/server/locksettings/LockSettingsService;->postponeOnCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Landroid/app/admin/PasswordMetrics;ILcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;)V

    goto :goto_c0

    .line 7171
    :cond_b7
    iget-object v2, v7, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 7172
    invoke-virtual {p0, v2, v8}, Lcom/android/server/locksettings/LockSettingsService;->loadPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Landroid/app/admin/PasswordMetrics;

    move-result-object v3

    .line 7171
    invoke-virtual {p0, v2, v3, v8}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Landroid/app/admin/PasswordMetrics;I)V

    :goto_c0
    const-string v0, "Result of verification of dual-dar user %d : %s"

    new-array v2, v12, [Ljava/lang/Object;

    .line 7175
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    .line 7176
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    .line 7174
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_e7

    .line 7177
    :cond_d8
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-ne v2, v11, :cond_e7

    .line 7178
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v2

    if-lez v2, :cond_e7

    .line 7179
    invoke-virtual {p0, v9, v8}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    :cond_e7
    :goto_e7
    return-object v1

    :catchall_e8
    move-exception v0

    .line 7163
    :try_start_e9
    monitor-exit v13
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    throw v0
.end method

.method public final spBasedSetLockCredentialInternalLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSpManager"
        }
    .end annotation

    .line 4380
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    const-string v1, "LockSettingsService"

    if-eqz v0, :cond_1f

    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4384
    :try_start_e
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p2
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_12} :catch_1a
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_e .. :try_end_12} :catch_13
    .catch Ljava/security/InvalidKeyException; {:try_start_e .. :try_end_12} :catch_13
    .catch Ljava/security/KeyStoreException; {:try_start_e .. :try_end_12} :catch_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_12} :catch_13
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_e .. :try_end_12} :catch_13
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_e .. :try_end_12} :catch_13
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_e .. :try_end_12} :catch_13
    .catch Ljavax/crypto/BadPaddingException; {:try_start_e .. :try_end_12} :catch_13
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_12} :catch_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_12} :catch_13

    goto :goto_1f

    :catch_13
    move-exception v0

    const-string v2, "Failed to decrypt child profile key"

    .line 4393
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    :catch_1a
    const-string v0, "Child profile key not found"

    .line 4386
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    :goto_1f
    move-object v6, p2

    .line 4398
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v9

    .line 4399
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 4400
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    const/4 v8, 0x0

    move-wide v4, v9

    move v7, p3

    .line 4399
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p2

    .line 4401
    iget-object v0, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 4402
    iget-object p2, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const/4 v2, 0x1

    if-nez p2, :cond_7c

    const/4 p1, 0x0

    if-eqz v0, :cond_6c

    .line 4408
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_43

    goto :goto_6c

    .line 4416
    :cond_43
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result p2

    if-ne p2, v2, :cond_59

    const-string p2, "Failed to enroll: rate limit exceeded."

    .line 4417
    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4419
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 4420
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->uploadLogFile(I)V

    return p1

    .line 4425
    :cond_59
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo p3, "password change failed"

    invoke-virtual {p2, p1, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 4426
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->uploadLogFile(I)V

    .line 4429
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6c
    :goto_6c
    const-string p2, "Failed to enroll: incorrect credential."

    .line 4409
    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4411
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 4412
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->uploadLogFile(I)V

    return p1

    .line 4432
    :cond_7c
    invoke-virtual {p0, p3, p2}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 4433
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithAuthTokenLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J

    .line 4434
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p2, v9, v10, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    .line 4440
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnChangeIfRequired(Lcom/android/internal/widget/LockscreenCredential;IZ)V

    return v2
.end method

.method public startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/security/keystore/recovery/RecoveryCertPath;",
            "[B[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3607
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B

    move-result-object p0

    return-object p0
.end method

.method public final storeGatekeeperPasswordTemporarily([B)J
    .registers 8

    .line 4016
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    monitor-enter v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_6
    cmp-long v5, v3, v1

    if-eqz v5, :cond_27

    .line 4017
    :try_start_a
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_13

    goto :goto_27

    .line 4020
    :cond_13
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v3, v4, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4021
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_2e

    .line 4024
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/locksettings/LockSettingsService;J)V

    const-wide/32 v1, 0x927c0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-wide v3

    .line 4018
    :cond_27
    :goto_27
    :try_start_27
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mRandom:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    goto :goto_6

    :catchall_2e
    move-exception p0

    .line 4021
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public final synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/LockscreenCredential;",
            ">;)V"
        }
    .end annotation

    .line 2146
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    if-eqz v0, :cond_b

    .line 2147
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 2149
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 2152
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    .line 2153
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p1

    .line 2154
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v1, :cond_73

    .line 2160
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 2161
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 2162
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 2163
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v4

    if-eqz v4, :cond_38

    goto :goto_70

    :cond_38
    if-eqz v0, :cond_42

    .line 2168
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v4

    .line 2167
    invoke-virtual {p0, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockIfNecessary(ILcom/android/internal/widget/LockscreenCredential;)V

    goto :goto_70

    :cond_42
    if-eqz p2, :cond_69

    .line 2173
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 2177
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v4

    .line 2178
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LockscreenCredential;

    const/4 v6, 0x1

    .line 2177
    invoke-virtual {p0, v4, v5, v3, v6}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    .line 2181
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v4, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    .line 2182
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    goto :goto_70

    :cond_69
    const-string v3, "LockSettingsService"

    const-string v4, "Attempt to clear tied challenge, but no password supplied."

    .line 2187
    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    :goto_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_73
    return-void
.end method

.method public systemReady()V
    .registers 6

    .line 1310
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    const v0, 0x534e4554

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "28251513"

    aput-object v3, v2, v1

    const/4 v3, 0x1

    .line 1311
    invoke-static {}, Lcom/android/internal/widget/ILockSettings$Stub;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1313
    :cond_28
    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1315
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.software.secure_lock_screen"

    .line 1316
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    .line 1317
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateOldData()V

    .line 1318
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 1319
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->initWeaverService()V

    .line 1320
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getAuthSecretHal()V

    .line 1321
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->onSystemReady()V

    .line 1324
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->prefetchUser(I)V

    .line 1325
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getFingerprintManager()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 1326
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getFaceManager()Landroid/hardware/face/FaceManager;

    move-result-object p0

    .line 1325
    invoke-virtual {v0, v1, p0}, Lcom/android/server/locksettings/BiometricDeferredQueue;->systemReady(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;)V

    return-void
.end method

.method public tieProfileLockIfNecessary(ILcom/android/internal/widget/LockscreenCredential;)V
    .registers 8

    .line 498
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    if-eqz v0, :cond_b

    .line 499
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 507
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 511
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    .line 515
    :cond_19
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_22

    return-void

    .line 525
    :cond_22
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 526
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3f

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 529
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p1, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    return-void

    .line 537
    :cond_3f
    :try_start_3f
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v0
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_47} :catch_6f

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_4e

    return-void

    .line 545
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->generateRandomProfilePassword()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 546
    :try_start_52
    invoke-virtual {p0, v0, p2, p1, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    .line 548
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(ILcom/android/internal/widget/LockscreenCredential;)V

    .line 549
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->storePassword(ILcom/android/internal/widget/LockscreenCredential;)V
    :try_end_5d
    .catchall {:try_start_52 .. :try_end_5d} :catchall_63

    if-eqz v0, :cond_62

    .line 555
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    :cond_62
    return-void

    :catchall_63
    move-exception p0

    if-eqz v0, :cond_6e

    .line 545
    :try_start_66
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    goto :goto_6e

    :catchall_6a
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6e
    :goto_6e
    throw p0

    :catch_6f
    move-exception p0

    const-string p1, "LockSettingsService"

    const-string p2, "Failed to talk to GateKeeper service"

    .line 541
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public tieProfileLockToParent(ILcom/android/internal/widget/LockscreenCredential;)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "NoPadding"

    const-string v1, "GCM"

    const-string/jumbo v2, "profile_key_name_encrypt_"

    :try_start_7
    const-string v3, "AES"

    .line 2788
    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    .line 2789
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v4}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 2790
    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3
    :try_end_19
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_7 .. :try_end_19} :catch_11e
    .catch Ljavax/crypto/BadPaddingException; {:try_start_7 .. :try_end_19} :catch_11e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7 .. :try_end_19} :catch_11e
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_19} :catch_11e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_7 .. :try_end_19} :catch_11e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_19} :catch_11e
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_19} :catch_11e

    .line 2792
    :try_start_19
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v6, v3}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v7, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v9

    .line 2796
    invoke-virtual {v7, v9}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v7

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    .line 2797
    invoke-virtual {v7, v9}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v7

    .line 2798
    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v7

    .line 2792
    invoke-virtual {v4, v5, v6, v7}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 2817
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "profile_key_name_decrypt_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v6, v3}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v3, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v7, 0x2

    invoke-direct {v3, v7}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 2821
    invoke-virtual {v3, v1}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2822
    invoke-virtual {v1, v0}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    .line 2823
    invoke-virtual {v0, v8}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    const/16 v1, 0x1e

    .line 2824
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    .line 2825
    invoke-virtual {v0}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v0

    .line 2817
    invoke-virtual {v4, v5, v6, v0}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 2828
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    const-string v1, "AES/GCM/NoPadding"

    .line 2830
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 2833
    invoke-virtual {v1, v8, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 2834
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    .line 2835
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0
    :try_end_b9
    .catchall {:try_start_19 .. :try_end_b9} :catchall_108

    .line 2838
    :try_start_b9
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_cd
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_b9 .. :try_end_cd} :catch_11e
    .catch Ljavax/crypto/BadPaddingException; {:try_start_b9 .. :try_end_cd} :catch_11e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_b9 .. :try_end_cd} :catch_11e
    .catch Ljava/security/KeyStoreException; {:try_start_b9 .. :try_end_cd} :catch_11e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_b9 .. :try_end_cd} :catch_11e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b9 .. :try_end_cd} :catch_11e
    .catch Ljava/security/InvalidKeyException; {:try_start_b9 .. :try_end_cd} :catch_11e

    .line 2845
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2847
    :try_start_d2
    array-length v2, v0

    const/16 v3, 0xc

    if-ne v2, v3, :cond_e7

    .line 2850
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 2851
    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_dd} :catch_ff

    .line 2855
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeChildProfileLock(I[B)V

    return-void

    .line 2848
    :cond_e7
    :try_start_e7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid iv length: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ff} :catch_ff

    :catch_ff
    move-exception p0

    .line 2853
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to concatenate byte arrays"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catchall_108
    move-exception p2

    .line 2838
    :try_start_109
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 2839
    throw p2
    :try_end_11e
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_109 .. :try_end_11e} :catch_11e
    .catch Ljavax/crypto/BadPaddingException; {:try_start_109 .. :try_end_11e} :catch_11e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_109 .. :try_end_11e} :catch_11e
    .catch Ljava/security/KeyStoreException; {:try_start_109 .. :try_end_11e} :catch_11e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_109 .. :try_end_11e} :catch_11e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_109 .. :try_end_11e} :catch_11e
    .catch Ljava/security/InvalidKeyException; {:try_start_109 .. :try_end_11e} :catch_11e

    :catch_11e
    move-exception p0

    .line 2843
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to encrypt key"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final tryDeriveAuthTokenForUnsecuredPrimaryUser(I)V
    .registers 10

    .line 1237
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 1239
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1240
    monitor-exit v0

    return-void

    .line 1243
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v3

    .line 1244
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 1245
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    .line 1246
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v5

    const/4 v7, 0x0

    move v6, p1

    .line 1245
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v1

    .line 1247
    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-eqz v2, :cond_3f

    const-string v2, "LockSettingsService"

    .line 1248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrieved auth token for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    iget-object v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    goto :goto_55

    :cond_3f
    const-string p0, "LockSettingsService"

    .line 1251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auth token not available for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :goto_55
    monitor-exit v0

    return-void

    :catchall_57
    move-exception p0

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw p0
.end method

.method public tryUnlockWithCachedUnifiedChallenge(I)Z
    .registers 5

    .line 4738
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->retrievePassword(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    if-eqz v0, :cond_e

    .line 4744
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    :cond_e
    return v1

    :cond_f
    const/4 v2, 0x0

    .line 4742
    :try_start_10
    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    .line 4743
    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result p0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_1f

    if-nez p0, :cond_1b

    const/4 v1, 0x1

    .line 4744
    :cond_1b
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    return v1

    :catchall_1f
    move-exception p0

    .line 4738
    :try_start_20
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_28

    :catchall_24
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_28
    throw p0
.end method

.method public final unlockChildProfile(IZ)V
    .registers 6

    .line 1961
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_9
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_28

    :catch_a
    move-exception p0

    .line 1967
    instance-of p1, p0, Ljava/io/FileNotFoundException;

    const-string v0, "LockSettingsService"

    if-eqz p1, :cond_17

    const-string p0, "Child profile key not found"

    .line 1968
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :cond_17
    if-eqz p2, :cond_23

    .line 1969
    instance-of p1, p0, Landroid/security/keystore/UserNotAuthenticatedException;

    if-eqz p1, :cond_23

    const-string p0, "Parent keystore seems locked, ignoring"

    .line 1970
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :cond_23
    const-string p1, "Failed to decrypt child profile key"

    .line 1972
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    return-void
.end method

.method public final unlockKeystore([BI)V
    .registers 6

    .line 1915
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    if-eqz v0, :cond_b

    .line 1916
    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1919
    invoke-static {v0, p2, p1, v1}, Landroid/security/Authorization;->onLockScreenEvent(ZI[B[J)I

    move-result p1

    .line 1921
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authorization.onLockScreenEvent, userhandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", ret = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    if-eqz p1, :cond_37

    .line 1924
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->uploadLogFile(I)V

    :cond_37
    return-void
.end method

.method public final unlockUser(I[B[B)V
    .registers 11

    .line 1986
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    if-eqz v0, :cond_b

    .line 1987
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 1989
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unlocking user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with secret only, length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p3, :cond_22

    .line 1990
    array-length v2, p3

    goto :goto_23

    :cond_22
    move v2, v1

    :goto_23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LockSettingsService"

    .line 1989
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    .line 1993
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1994
    new-instance v4, Lcom/android/server/locksettings/LockSettingsService$4;

    invoke-direct {v4, p0, p1, v3}, Lcom/android/server/locksettings/LockSettingsService$4;-><init>(Lcom/android/server/locksettings/LockSettingsService;ILjava/util/concurrent/CountDownLatch;)V

    .line 2019
    :try_start_40
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v5, p1, p2, p3, v4}, Landroid/app/IActivityManager;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_45} :catch_14a

    const-wide/16 p2, 0xf

    .line 2025
    :try_start_47
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p2, p3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_4c} :catch_4d

    goto :goto_54

    .line 2027
    :catch_4d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 2030
    :goto_54
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result p2

    if-eqz p2, :cond_66

    .line 2031
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hasUnifiedChallenge(I)Z

    move-result p1

    if-nez p1, :cond_65

    .line 2032
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    invoke-virtual {p0}, Lcom/android/server/locksettings/BiometricDeferredQueue;->processPendingLockoutResets()V

    :cond_65
    return-void

    .line 2037
    :cond_66
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_70
    :goto_70
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_144

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/UserInfo;

    .line 2038
    iget v3, p3, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, p1, :cond_81

    goto :goto_70

    .line 2039
    :cond_81
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v3

    if-nez v3, :cond_88

    goto :goto_70

    .line 2041
    :cond_88
    iget v3, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->hasUnifiedChallenge(I)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 2042
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    iget v4, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 2044
    iget v3, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3, v1}, Lcom/android/server/locksettings/LockSettingsService;->unlockChildProfile(IZ)V

    goto :goto_ac

    .line 2049
    :cond_a0
    :try_start_a0
    iget v3, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;
    :try_end_a5
    .catch Ljava/security/GeneralSecurityException; {:try_start_a0 .. :try_end_a5} :catch_a6
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a5} :catch_a6

    goto :goto_ac

    :catch_a6
    move-exception v3

    const-string v4, "Cache work profile password failed"

    .line 2051
    invoke-static {v2, v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2057
    :cond_ac
    :goto_ac
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v3

    if-eqz v3, :cond_12c

    .line 2058
    invoke-virtual {p3}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v3

    if-eqz v3, :cond_12c

    .line 2059
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    iget v4, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v3

    if-nez v3, :cond_de

    .line 2060
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Secure folder user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not running yet while unlock system user"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_12c

    .line 2062
    :cond_de
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    iget v4, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v3

    if-nez v3, :cond_12c

    iget v3, p3, Landroid/content/pm/UserInfo;->id:I

    .line 2063
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v3

    if-nez v3, :cond_12c

    .line 2064
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unlock secure folder user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2065
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2067
    :try_start_10a
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v5}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDarManagerService()Lcom/android/server/knox/dar/DarManagerService;

    move-result-object v5

    if-eqz v5, :cond_124

    .line 2068
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v5}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDarManagerService()Lcom/android/server/knox/dar/DarManagerService;

    move-result-object v5

    iget v6, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Lcom/android/server/knox/dar/DarManagerService;->unlockSecureFolderWithToken(I)V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_11d} :catch_120
    .catchall {:try_start_10a .. :try_end_11d} :catchall_11e

    goto :goto_124

    :catchall_11e
    move-exception p0

    goto :goto_128

    :catch_120
    move-exception v5

    .line 2071
    :try_start_121
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_124
    .catchall {:try_start_121 .. :try_end_124} :catchall_11e

    .line 2073
    :cond_124
    :goto_124
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_12c

    :goto_128
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2074
    throw p0

    :cond_12c
    :goto_12c
    if-nez v0, :cond_70

    .line 2082
    invoke-static {}, Lcom/android/internal/widget/ILockSettings$Stub;->clearCallingIdentity()J

    move-result-wide v3

    .line 2084
    :try_start_132
    iget p3, p3, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v5, "parent unlocked"

    invoke-virtual {p0, p3, v5}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(ILjava/lang/String;)V
    :try_end_13a
    .catchall {:try_start_132 .. :try_end_13a} :catchall_13f

    .line 2086
    invoke-static {v3, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->restoreCallingIdentity(J)V

    goto/16 :goto_70

    :catchall_13f
    move-exception p0

    invoke-static {v3, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->restoreCallingIdentity(J)V

    .line 2087
    throw p0

    .line 2091
    :cond_144
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    invoke-virtual {p0}, Lcom/android/server/locksettings/BiometricDeferredQueue;->processPendingLockoutResets()V

    return-void

    :catch_14a
    move-exception p0

    .line 2021
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final unlockUserKey(I[B[B)V
    .registers 5

    .line 2944
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    if-eqz v0, :cond_b

    .line 2945
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 2947
    :cond_b
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2955
    :try_start_11
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/storage/IStorageManager;->unlockUserKey(II[B[B)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p0

    .line 2957
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to unlock user key "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final unlockUserWithToken(J[BI)Z
    .registers 14

    .line 4713
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 4714
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    const-string p0, "LockSettingsService"

    const-string p1, "Escrow token is disabled on the current user"

    .line 4715
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4716
    monitor-exit v0

    return v2

    .line 4718
    :cond_15
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move-wide v5, p1

    move-object v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p1

    .line 4720
    iget-object p1, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez p1, :cond_2f

    const-string p0, "LockSettingsService"

    const-string p1, "Invalid escrow token supplied"

    .line 4721
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4722
    monitor-exit v0

    return v2

    .line 4724
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_39

    .line 4732
    invoke-virtual {p0, p1, p4}, Lcom/android/server/locksettings/LockSettingsService;->loadPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Landroid/app/admin/PasswordMetrics;

    move-result-object p2

    .line 4731
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Landroid/app/admin/PasswordMetrics;I)V

    const/4 p0, 0x1

    return p0

    :catchall_39
    move-exception p0

    .line 4724
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public unregisterRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p2, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 5253
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1a

    const-string p2, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_11

    goto :goto_1a

    .line 5254
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "registerRemoteLockCallback requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5258
    :cond_1a
    :goto_1a
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_30

    .line 5259
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    .line 5261
    :cond_30
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " hasn\'t been registered!!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockSettingsService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_46
    return-void
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 2

    .line 3489
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 3490
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method public unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .registers 4

    .line 2708
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 2709
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2711
    :try_start_7
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 2713
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2714
    throw p0
.end method

.method public updateCarrierLock(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5482
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 5483
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->updateCarrierLock()Z

    move-result p0

    return p0
.end method

.method public final updatePasswordHistory(Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 9

    .line 2574
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2577
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isPattern()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    const/4 v0, 0x0

    const-string/jumbo v1, "lockscreen.passwordhistory"

    .line 2583
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-nez v0, :cond_1b

    move-object v0, v2

    .line 2588
    :cond_1b
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getRequestedPasswordHistoryLength(I)I

    move-result v3

    if-nez v3, :cond_22

    goto :goto_69

    .line 2592
    :cond_22
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B

    move-result-object v2

    .line 2593
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSalt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 2594
    invoke-virtual {p1, v4, v2}, Lcom/android/internal/widget/LockscreenCredential;->passwordToHistoryHash([B[B)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_40

    const-string v2, "LockSettingsService"

    const-string v5, "Compute new style password hash failed, fallback to legacy style"

    .line 2596
    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    invoke-virtual {p1, v4}, Lcom/android/internal/widget/LockscreenCredential;->legacyPasswordToHash([B)Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    .line 2599
    :cond_40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_47

    goto :goto_69

    :cond_47
    const-string p1, ","

    .line 2602
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2604
    new-instance v4, Ljava/util/StringJoiner;

    invoke-direct {v4, p1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 2605
    invoke-virtual {v4, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/4 p1, 0x0

    :goto_56
    add-int/lit8 v2, v3, -0x1

    if-ge p1, v2, :cond_65

    .line 2606
    array-length v2, v0

    if-ge p1, v2, :cond_65

    .line 2607
    aget-object v2, v0, p1

    invoke-virtual {v4, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 p1, p1, 0x1

    goto :goto_56

    .line 2609
    :cond_65
    invoke-virtual {v4}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2612
    :goto_69
    invoke-virtual {p0, v1, v2, p2}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public userPresent(I)V
    .registers 2

    .line 3513
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 3514
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportUnlock(I)V

    return-void
.end method

.method public final verifyCredential(ILcom/android/server/locksettings/LockSettingsStorage$CredentialHash;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 12

    if-eqz p2, :cond_7

    .line 3286
    iget-object v0, p2, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v0, v0

    if-nez v0, :cond_10

    :cond_7
    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3288
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0

    :cond_10
    if-eqz p2, :cond_c3

    .line 3291
    iget-object v0, p2, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v0, v0

    if-eqz v0, :cond_c3

    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto/16 :goto_c3

    .line 3297
    :cond_1f
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 3301
    :try_start_22
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    const-wide/16 v3, 0x0

    iget-object v5, p2, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    .line 3302
    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v6

    move v2, p1

    .line 3301
    invoke-interface/range {v1 .. v6}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_33} :catch_34

    goto :goto_3e

    :catch_34
    move-exception v0

    const-string v1, "LockSettingsService"

    const-string v2, "gatekeeper verify failed"

    .line 3304
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3305
    sget-object v0, Landroid/service/gatekeeper/GateKeeperResponse;->ERROR:Landroid/service/gatekeeper/GateKeeperResponse;

    .line 3307
    :goto_3e
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 3308
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v0

    .line 3310
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_b0

    if-eqz p4, :cond_5b

    .line 3316
    :try_start_4e
    invoke-interface {p4}, Lcom/android/internal/widget/ICheckCredentialProgressCallback;->onCredentialVerified()V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_5b

    :catch_52
    move-exception p4

    const-string v2, "LockSettingsService"

    const-string/jumbo v3, "progressCallback throws exception"

    .line 3318
    invoke-static {v2, v3, p4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3321
    :cond_5b
    :goto_5b
    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 3322
    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object p4

    invoke-virtual {p0, p4, p1}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore([BI)V

    const-string p4, "LockSettingsService"

    .line 3324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unlocking user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3325
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object p4

    invoke-static {p3}, Lcom/android/server/locksettings/LockSettingsService;->secretFromCredential(Lcom/android/internal/widget/LockscreenCredential;)[B

    move-result-object v2

    invoke-virtual {p0, p1, p4, v2}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    .line 3327
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithSeparatedLock(I)Z

    move-result p4

    if-eqz p4, :cond_8f

    .line 3328
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->setDeviceUnlockedForUser(I)V

    :cond_8f
    if-eqz v0, :cond_96

    const/4 p2, 0x0

    .line 3331
    invoke-virtual {p0, p3, p3, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    goto :goto_a9

    .line 3336
    :cond_96
    iget-object p4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter p4

    .line 3337
    :try_start_99
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 3338
    iget-object p2, p2, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object p2

    .line 3340
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 3355
    :cond_a8
    monitor-exit p4
    :try_end_a9
    .catchall {:try_start_99 .. :try_end_a9} :catchall_ad

    .line 3358
    :goto_a9
    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V

    goto :goto_c2

    :catchall_ad
    move-exception p0

    .line 3355
    :try_start_ae
    monitor-exit p4
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw p0

    .line 3360
    :cond_b0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_c2

    .line 3361
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result p2

    if-lez p2, :cond_c2

    const/16 p2, 0x8

    .line 3362
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    :cond_c2
    :goto_c2
    return-object v1

    .line 3292
    :cond_c3
    :goto_c3
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0
.end method

.method public verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 7

    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 3087
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1a

    .line 3088
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "verifyCredential requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3092
    :cond_1a
    :goto_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 3099
    :try_start_1f
    invoke-virtual {p0, p1, p2, v2, p3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_2a

    .line 3101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3102
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    return-object p1

    :catchall_2a
    move-exception p1

    .line 3101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3102
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 3103
    throw p1
.end method

.method public verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 13

    .line 3124
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 3129
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 3130
    :try_start_6
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, [B

    .line 3131
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_30

    .line 3133
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter p1

    if-nez v3, :cond_1f

    :try_start_15
    const-string p0, "LockSettingsService"

    const-string p2, "No gatekeeper password for handle"

    .line 3135
    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3136
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_2b

    .line 3138
    :cond_1f
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallengeInternal(Landroid/service/gatekeeper/IGateKeeperService;[BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    .line 3141
    :goto_2b
    monitor-exit p1

    return-object p0

    :catchall_2d
    move-exception p0

    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_15 .. :try_end_2f} :catchall_2d

    throw p0

    :catchall_30
    move-exception p0

    .line 3131
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public verifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 6

    .line 3247
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 3248
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 3252
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v1, 0x0

    .line 3254
    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    .line 3259
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_1d

    return-object p1

    .line 3266
    :cond_1d
    :try_start_1d
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1
    :try_end_25
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1d .. :try_end_25} :catch_2b
    .catch Ljava/security/InvalidKeyException; {:try_start_1d .. :try_end_25} :catch_2b
    .catch Ljava/security/KeyStoreException; {:try_start_1d .. :try_end_25} :catch_2b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1d .. :try_end_25} :catch_2b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1d .. :try_end_25} :catch_2b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1d .. :try_end_25} :catch_2b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1d .. :try_end_25} :catch_2b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1d .. :try_end_25} :catch_2b
    .catch Ljava/security/cert/CertificateException; {:try_start_1d .. :try_end_25} :catch_2b
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_25} :catch_2b
    .catchall {:try_start_1d .. :try_end_25} :catchall_29

    .line 3275
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    return-object p1

    :catchall_29
    move-exception p1

    goto :goto_3b

    :catch_2b
    move-exception p1

    :try_start_2c
    const-string p2, "LockSettingsService"

    const-string p3, "Failed to decrypt child profile key"

    .line 3272
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3273
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unable to get tied profile token"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3b
    .catchall {:try_start_2c .. :try_end_3b} :catchall_29

    .line 3275
    :goto_3b
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 3276
    throw p1

    .line 3249
    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "User id must be managed/clone profile with unified lock"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verify token for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "token"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "tokenHandle"

    aput-object v2, v0, v1

    .line 5994
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const-string/jumbo v2, "userId"

    aput-object v2, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 5996
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 5998
    :try_start_3f
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v1
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_88

    .line 5999
    :try_start_42
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 6002
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 6003
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move-wide v5, p2

    move-object v7, p1

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p1

    if-eqz p1, :cond_76

    .line 6005
    iget-object p2, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez p2, :cond_5e

    goto :goto_76

    .line 6009
    :cond_5e
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSdpLockSettings:Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;

    invoke-virtual {p0, p2, p4}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->migrateWithAuthToken(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 6011
    new-instance p0, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    invoke-direct {p0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 6012
    iget-object p0, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 6013
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveSdpMasterKey()[B

    move-result-object p0

    .line 6012
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->setSecret([B)V

    goto :goto_7b

    :cond_76
    :goto_76
    const-string p0, "Failed due to invalid escrow token supplied"

    .line 6007
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6015
    :goto_7b
    monitor-exit v1

    goto :goto_8e

    .line 6000
    :cond_7d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Escrow token is disabled on the current user"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_85
    move-exception p0

    .line 6015
    monitor-exit v1
    :try_end_87
    .catchall {:try_start_42 .. :try_end_87} :catchall_85

    :try_start_87
    throw p0
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_88} :catch_88

    :catch_88
    move-exception p0

    const-string p1, "Unexpected exception while verify token"

    .line 6017
    invoke-static {p1, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 6019
    :goto_8e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Result of token verification : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    return-object v0
.end method
