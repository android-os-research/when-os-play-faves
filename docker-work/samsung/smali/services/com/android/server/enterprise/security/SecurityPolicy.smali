.class public Lcom/android/server/enterprise/security/SecurityPolicy;
.super Lcom/samsung/android/knox/ISecurityPolicy$Stub;
.source "SecurityPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/security/SecurityPolicy$LocalService;,
        Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;,
        Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;,
        Lcom/android/server/enterprise/security/SecurityPolicy$ResponseHandler;,
        Lcom/android/server/enterprise/security/SecurityPolicy$UserSwitchObserver;,
        Lcom/android/server/enterprise/security/SecurityPolicy$Injector;
    }
.end annotation


# static fields
.field public static final ACTION_LAST_BOOT_SAFE_MODE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.LAST_BOOT_SAFE_MODE_INTERNAL"

.field public static final AES256ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field public static final AES_BLOCK_SIZE:I = 0x1000

.field public static final BUFFER_SIZE:I = 0x1000

.field public static final DOD_BANNER_PATH:Ljava/lang/String; = "com.samsung.android.mdm.DodBanner"

.field public static final DOD_BANNER_PKG:Ljava/lang/String; = "com.samsung.android.mdm"

.field public static final EXTRA_SENDER_PACKAGE_NAME:Ljava/lang/String; = "senderpackagename"

.field public static final InitialVectorNum:I = 0x10

.field public static final KEYCHAIN_RESET_TIMEOUT:I = 0xbb8

.field public static final MAX_DEPTH:I = 0x14

.field public static final MSG_UNREGISTER_RECEIVER:I = 0x1

.field public static final SECURITY_POLICY_PACKAGE_MARKER:Ljava/lang/String; = "SecurityPolicy"

.field public static final TAG:Ljava/lang/String; = "SecurityPolicy"

.field public static final USER_DATA_DIR:Ljava/lang/String; = "/data/user/"

.field public static mBannerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public factoryReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

.field public final mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

.field public mBootCompleted:Z

.field public mBootReceiver:Landroid/content/BroadcastReceiver;

.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

.field public mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/enterprise/security/SecurityPolicy$Injector;

.field public mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

.field public final mLocalService:Lcom/android/server/enterprise/security/SecurityPolicy$LocalService;

.field public mMediaFormatRet:Z

.field public mPendingGetCerificates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public mSecureRandom:Ljava/security/SecureRandom;

.field public mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public mToken:Landroid/os/IBinder;

.field public pkgNameList_allowed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method public static bridge synthetic -$$Nest$fgetfactoryReceiver(Lcom/android/server/enterprise/security/SecurityPolicy;)Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->factoryReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputfactoryReceiver(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->factoryReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmBootCompleted(Lcom/android/server/enterprise/security/SecurityPolicy;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootCompleted:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMediaFormatRet(Lcom/android/server/enterprise/security/SecurityPolicy;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetFactoryReceiver(Lcom/android/server/enterprise/security/SecurityPolicy;)Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getFactoryReceiver()Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misLastBootInSafeMode(Lcom/android/server/enterprise/security/SecurityPolicy;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isLastBootInSafeMode()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msaveDeviceBootMode(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->saveDeviceBootMode(Z)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 251
    new-instance v0, Lcom/android/server/enterprise/security/SecurityPolicy$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy$Injector;)V
    .registers 11

    .line 254
    invoke-direct {p0}, Lcom/samsung/android/knox/ISecurityPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->pkgNameList_allowed:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 202
    iput-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mSecureRandom:Ljava/security/SecureRandom;

    .line 203
    iput-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->secretKey:Ljavax/crypto/SecretKey;

    .line 208
    iput-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 209
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mToken:Landroid/os/IBinder;

    .line 216
    new-instance v2, Lcom/android/server/enterprise/security/SecurityPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/security/SecurityPolicy$1;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    .line 224
    iput-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 310
    iput-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 339
    new-instance v2, Lcom/android/server/enterprise/security/SecurityPolicy$3;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/security/SecurityPolicy$3;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 1702
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    .line 256
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mInjector:Lcom/android/server/enterprise/security/SecurityPolicy$Injector;

    .line 257
    iget-object v2, p1, Lcom/android/server/enterprise/security/SecurityPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 258
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mHandler:Landroid/os/Handler;

    .line 260
    invoke-virtual {p1}, Lcom/android/server/enterprise/security/SecurityPolicy$Injector;->getStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 261
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 262
    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

    .line 263
    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 264
    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 266
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/server/enterprise/security/SecurityPolicy;->mBannerMap:Ljava/util/Map;

    .line 268
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->pkgNameList_allowed:Ljava/util/ArrayList;

    const-string v3, "com.samsung.android.email.provider"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-virtual {p1}, Lcom/android/server/enterprise/security/SecurityPolicy$Injector;->getEnterpriseDumpHelper()Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 293
    :try_start_80
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p1

    new-instance v2, Lcom/android/server/enterprise/security/SecurityPolicy$UserSwitchObserver;

    invoke-direct {v2, p0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy$UserSwitchObserver;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$UserSwitchObserver-IA;)V

    .line 294
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 293
    invoke-interface {p1, v2, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_94} :catch_95

    goto :goto_9d

    :catch_95
    move-exception p1

    const-string v2, "SecurityPolicy"

    const-string v3, "Exception during register UserSwitchObserver "

    .line 296
    invoke-static {v2, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    :goto_9d
    iget-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mInjector:Lcom/android/server/enterprise/security/SecurityPolicy$Injector;

    invoke-virtual {p1}, Lcom/android/server/enterprise/security/SecurityPolicy$Injector;->getSemEmergencyManager()Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 301
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getFirmwareUpgrade()Z

    move-result p1

    if-eqz p1, :cond_be

    .line 302
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_be

    .line 303
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->addBannerAppToBatteryOptimizationWhitelist(Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 306
    :cond_be
    new-instance p1, Lcom/android/server/enterprise/security/SecurityPolicy$LocalService;

    invoke-direct {p1, p0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy$LocalService;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$LocalService-IA;)V

    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mLocalService:Lcom/android/server/enterprise/security/SecurityPolicy$LocalService;

    .line 307
    const-class p0, Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addBannerAppToBatteryOptimizationWhitelist(Lcom/samsung/android/knox/ContextInfo;Z)V
    .registers 5

    const-string p0, "application_policy"

    .line 2437
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v0, 0x0

    const-string v1, "com.samsung.android.mdm"

    if-eqz p2, :cond_16

    .line 2439
    new-instance p2, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {p2, v1, v0}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addPackageToBatteryOptimizationWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    goto :goto_1e

    .line 2441
    :cond_16
    new-instance p2, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {p2, v1, v0}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removePackageFromBatteryOptimizationWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    :goto_1e
    return-void
.end method

.method public addPackagesToCertificateWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)Z"
        }
    .end annotation

    .line 2210
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceCertificateProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2211
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2213
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v1

    if-eqz p2, :cond_99

    .line 2217
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_99

    .line 2222
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2224
    :try_start_1f
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v7, v2

    move v8, v6

    :goto_27
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/AppIdentity;

    if-eqz v9, :cond_3d

    .line 2228
    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2229
    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v7

    .line 2232
    :cond_3d
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->validatePackageName(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 2233
    invoke-virtual {p0, v2, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isPackageAlreadyWhiteListed(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4a

    goto :goto_8d

    :cond_4a
    if-eqz v7, :cond_58

    .line 2240
    invoke-static {v1, v2, v7}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_58

    .line 2245
    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    move v10, v3

    goto :goto_5a

    :cond_58
    move v9, v3

    move v10, v6

    :goto_5a
    if-nez v10, :cond_5e

    if-nez v9, :cond_8d

    .line 2249
    :cond_5e
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "adminUid"

    .line 2251
    iget v11, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v10, "packageName"

    .line 2252
    invoke-virtual {v9, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "signature"

    .line 2253
    invoke-virtual {v9, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    iget-object v10, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "CertificateWhiteListTable"

    invoke-virtual {v10, v11, v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9
    :try_end_82
    .catchall {:try_start_1f .. :try_end_82} :catchall_94

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_8a

    move v9, v6

    goto :goto_8b

    :cond_8a
    move v9, v3

    :goto_8b
    and-int/2addr v8, v9

    goto :goto_27

    :cond_8d
    :goto_8d
    move v8, v3

    goto :goto_27

    .line 2261
    :cond_8f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v8

    goto :goto_99

    :catchall_94
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2262
    throw p0

    :cond_99
    :goto_99
    return v3
.end method

.method public deleteCertificateFromKeystore(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateInfo;I)Z
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    .line 1770
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceAdminPermissionIfCallerInCertWhiteList(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    .line 1772
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->validateKeystoreParam(I)Z

    move-result v0

    if-eqz v0, :cond_223

    if-eqz p2, :cond_223

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    if-nez v0, :cond_1a

    goto/16 :goto_223

    .line 1776
    :cond_1a
    iget v0, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    const/4 v5, 0x0

    .line 1785
    :try_start_21
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v13

    .line 1787
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_21c

    and-int/lit8 v16, v2, 0x1

    const-string v11, "deleteCertificateFromKeystore: "

    const-string v10, "SecurityPolicy"

    if-eqz v16, :cond_6a

    .line 1791
    :try_start_31
    iget-object v0, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v0, v6}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v6
    :try_end_3c
    .catch Ljava/lang/AssertionError; {:try_start_31 .. :try_end_3c} :catch_62
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_3c} :catch_58
    .catchall {:try_start_31 .. :try_end_3c} :catchall_55

    .line 1792
    :try_start_3c
    invoke-virtual {v6}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v0
    :try_end_40
    .catch Ljava/lang/AssertionError; {:try_start_3c .. :try_end_40} :catch_4f
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_40} :catch_48
    .catchall {:try_start_3c .. :try_end_40} :catchall_44

    move-object v8, v0

    move-object/from16 v17, v6

    goto :goto_6d

    :catchall_44
    move-exception v0

    move-object v5, v6

    goto/16 :goto_218

    :catch_48
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v21, v18

    move-object v5, v6

    goto :goto_5d

    :catch_4f
    move-object/from16 v18, v5

    move-object/from16 v21, v18

    move-object v5, v6

    goto :goto_66

    :catchall_55
    move-exception v0

    goto/16 :goto_218

    :catch_58
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v21, v18

    :goto_5d
    move-object/from16 v22, v10

    move-object v4, v11

    goto/16 :goto_139

    :catch_62
    move-object/from16 v18, v5

    move-object/from16 v21, v18

    :goto_66
    move-object v6, v10

    move-object v4, v11

    goto/16 :goto_164

    :cond_6a
    move-object v8, v5

    move-object/from16 v17, v8

    .line 1796
    :goto_6d
    :try_start_6d
    invoke-static {v12}, Landroid/sec/enterprise/auditlog/AuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v0
    :try_end_71
    .catch Ljava/lang/AssertionError; {:try_start_6d .. :try_end_71} :catch_15c
    .catch Ljava/lang/InterruptedException; {:try_start_6d .. :try_end_71} :catch_12f
    .catchall {:try_start_6d .. :try_end_71} :catchall_12a

    if-eqz v0, :cond_117

    if-eqz v16, :cond_8c

    .line 1798
    :try_start_75
    invoke-virtual {v1, v8, v13}, Lcom/android/server/enterprise/security/SecurityPolicy;->retrieveCertificateAliasFromKeyChain(Landroid/security/IKeyChainService;Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0
    :try_end_79
    .catch Ljava/lang/AssertionError; {:try_start_75 .. :try_end_79} :catch_84
    .catch Ljava/lang/InterruptedException; {:try_start_75 .. :try_end_79} :catch_7a
    .catchall {:try_start_75 .. :try_end_79} :catchall_12a

    goto :goto_90

    :catch_7a
    move-exception v0

    move-object/from16 v18, v5

    :goto_7d
    move-object/from16 v21, v8

    move-object/from16 v22, v10

    move-object v4, v11

    goto/16 :goto_137

    :catch_84
    move-object/from16 v18, v5

    :catch_86
    move-object/from16 v21, v8

    move-object v6, v10

    move-object v4, v11

    goto/16 :goto_162

    .line 1800
    :cond_8c
    :try_start_8c
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v0
    :try_end_90
    .catch Ljava/lang/AssertionError; {:try_start_8c .. :try_end_90} :catch_110
    .catch Ljava/lang/InterruptedException; {:try_start_8c .. :try_end_90} :catch_12f
    .catchall {:try_start_8c .. :try_end_90} :catchall_12a

    :goto_90
    move-object/from16 v18, v0

    .line 1803
    :try_start_92
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    .line 1805
    instance-of v6, v0, Ljava/security/cert/X509Certificate;
    :try_end_98
    .catch Ljava/lang/AssertionError; {:try_start_92 .. :try_end_98} :catch_10c
    .catch Ljava/lang/InterruptedException; {:try_start_92 .. :try_end_98} :catch_109
    .catchall {:try_start_92 .. :try_end_98} :catchall_12a

    if-eqz v6, :cond_a4

    .line 1806
    :try_start_9a
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1807
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v5
    :try_end_a4
    .catch Ljava/lang/AssertionError; {:try_start_9a .. :try_end_a4} :catch_86
    .catch Ljava/lang/InterruptedException; {:try_start_9a .. :try_end_a4} :catch_109
    .catchall {:try_start_9a .. :try_end_a4} :catchall_12a

    :cond_a4
    const/4 v0, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 1810
    :try_start_a7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    const-string v20, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Admin "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has requested to delete a certificate. Keystore(s) : "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1812
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getKeystoreString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Alias : "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_cd
    .catch Ljava/lang/AssertionError; {:try_start_a7 .. :try_end_cd} :catch_10c
    .catch Ljava/lang/InterruptedException; {:try_start_a7 .. :try_end_cd} :catch_109
    .catchall {:try_start_a7 .. :try_end_cd} :catchall_12a

    if-nez v18, :cond_d2

    :try_start_cf
    const-string v4, "Not available"
    :try_end_d1
    .catch Ljava/lang/AssertionError; {:try_start_cf .. :try_end_d1} :catch_86
    .catch Ljava/lang/InterruptedException; {:try_start_cf .. :try_end_d1} :catch_109
    .catchall {:try_start_cf .. :try_end_d1} :catchall_12a

    goto :goto_d4

    :cond_d2
    move-object/from16 v4, v18

    .line 1813
    :goto_d4
    :try_start_d4
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Subject : "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1814
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Issuer : "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_ef
    .catch Ljava/lang/AssertionError; {:try_start_d4 .. :try_end_ef} :catch_10c
    .catch Ljava/lang/InterruptedException; {:try_start_d4 .. :try_end_ef} :catch_109
    .catchall {:try_start_d4 .. :try_end_ef} :catchall_12a

    move v5, v0

    move-object/from16 v21, v8

    move/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v22, v10

    move-object v10, v4

    move-object v4, v11

    move v11, v12

    .line 1809
    :try_start_fb
    invoke-static/range {v5 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_fe
    .catch Ljava/lang/AssertionError; {:try_start_fb .. :try_end_fe} :catch_103
    .catch Ljava/lang/InterruptedException; {:try_start_fb .. :try_end_fe} :catch_101
    .catchall {:try_start_fb .. :try_end_fe} :catchall_12a

    move-object/from16 v5, v18

    goto :goto_11c

    :catch_101
    move-exception v0

    goto :goto_137

    :catch_103
    move-object/from16 v5, v17

    move-object/from16 v6, v22

    goto/16 :goto_164

    :catch_109
    move-exception v0

    goto/16 :goto_7d

    :catch_10c
    move-object/from16 v21, v8

    move-object v4, v11

    goto :goto_115

    :catch_110
    move-object/from16 v21, v8

    move-object v4, v11

    move-object/from16 v18, v5

    :goto_115
    move-object v6, v10

    goto :goto_162

    :cond_117
    move-object/from16 v21, v8

    move-object/from16 v22, v10

    move-object v4, v11

    .line 1824
    :goto_11c
    :try_start_11c
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_11f
    .catchall {:try_start_11c .. :try_end_11f} :catchall_125

    move-object/from16 v8, v21

    move-object/from16 v6, v22

    const/4 v9, 0x1

    goto :goto_17e

    :catchall_125
    move-exception v0

    move-object/from16 v5, v17

    goto/16 :goto_21d

    :catchall_12a
    move-exception v0

    move-object/from16 v5, v17

    goto/16 :goto_218

    :catch_12f
    move-exception v0

    move-object/from16 v21, v8

    move-object/from16 v22, v10

    move-object v4, v11

    move-object/from16 v18, v5

    :goto_137
    move-object/from16 v5, v17

    .line 1821
    :goto_139
    :try_start_139
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v22

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_151
    .catchall {:try_start_139 .. :try_end_151} :catchall_55

    .line 1824
    :goto_151
    :try_start_151
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_154
    .catchall {:try_start_151 .. :try_end_154} :catchall_21c

    move-object/from16 v17, v5

    move-object/from16 v5, v18

    move-object/from16 v8, v21

    const/4 v9, 0x0

    goto :goto_17e

    :catch_15c
    move-object/from16 v21, v8

    move-object v6, v10

    move-object v4, v11

    move-object/from16 v18, v5

    :goto_162
    move-object/from16 v5, v17

    .line 1818
    :goto_164
    :try_start_164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteCertificateFromKeystore - is KeyChainService running for user "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "?"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17d
    .catchall {:try_start_164 .. :try_end_17d} :catchall_55

    goto :goto_151

    :goto_17e
    if-eqz v16, :cond_1ba

    .line 1828
    :try_start_180
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10
    :try_end_184
    .catchall {:try_start_180 .. :try_end_184} :catchall_125

    if-nez v5, :cond_18d

    .line 1832
    :try_start_186
    invoke-virtual {v1, v8, v13}, Lcom/android/server/enterprise/security/SecurityPolicy;->retrieveCertificateAliasFromKeyChain(Landroid/security/IKeyChainService;Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v5
    :try_end_18a
    .catchall {:try_start_186 .. :try_end_18a} :catchall_18b

    goto :goto_18d

    :catchall_18b
    move-exception v0

    goto :goto_1b3

    :cond_18d
    :goto_18d
    if-eqz v5, :cond_1b7

    if-eqz v8, :cond_1b7

    .line 1843
    :try_start_191
    invoke-interface {v8, v5}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z

    move-result v0
    :try_end_195
    .catch Landroid/os/RemoteException; {:try_start_191 .. :try_end_195} :catch_198
    .catchall {:try_start_191 .. :try_end_195} :catchall_18b

    and-int/2addr v0, v9

    :goto_196
    move v9, v0

    goto :goto_1b7

    :catch_198
    move-exception v0

    move-object v5, v0

    .line 1845
    :try_start_19a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b0
    .catchall {:try_start_19a .. :try_end_1b0} :catchall_18b

    and-int/lit8 v0, v9, 0x0

    goto :goto_196

    .line 1850
    :goto_1b3
    :try_start_1b3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1851
    throw v0

    .line 1850
    :cond_1b7
    :goto_1b7
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1ba
    and-int/lit8 v0, v2, 0x2

    if-eqz v0, :cond_1c9

    .line 1854
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v1, v13, v0, v4, v5}, Lcom/android/server/enterprise/security/SecurityPolicy;->retrieveAliasAndDeleteCertificate(Ljava/security/cert/Certificate;Ljava/lang/String;II)Z

    move-result v0

    and-int/2addr v9, v0

    :cond_1c9
    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_1d7

    .line 1858
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v1, v13, v0, v4, v12}, Lcom/android/server/enterprise/security/SecurityPolicy;->retrieveAliasAndDeleteCertificate(Ljava/security/cert/Certificate;Ljava/lang/String;II)Z

    move-result v0

    and-int/2addr v9, v0

    .line 1863
    :cond_1d7
    invoke-virtual {v1, v12}, Lcom/android/server/enterprise/security/SecurityPolicy;->sendIntentToSettings(I)V
    :try_end_1da
    .catchall {:try_start_1b3 .. :try_end_1da} :catchall_125

    if-eqz v17, :cond_1df

    .line 1866
    invoke-virtual/range {v17 .. v17}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    :cond_1df
    if-eqz v9, :cond_217

    .line 1871
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v4, "KNOX_AKS"

    const-string v5, "API:deleteCertificateFromKeystore"

    const/4 v6, 0x1

    invoke-direct {v0, v4, v6, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1872
    iget v4, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v5, "cId"

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string/jumbo v4, "uId"

    .line 1873
    invoke-virtual {v0, v4, v12}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 1874
    iget-object v4, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget v3, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "pN"

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getKeystoreString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "key"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    :cond_217
    return v9

    .line 1824
    :goto_218
    :try_start_218
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1825
    throw v0
    :try_end_21c
    .catchall {:try_start_218 .. :try_end_21c} :catchall_21c

    :catchall_21c
    move-exception v0

    :goto_21d
    if-eqz v5, :cond_222

    .line 1866
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 1868
    :cond_222
    throw v0

    :cond_223
    :goto_223
    const/4 v1, 0x0

    return v1
.end method

.method public final deleteCertificateFromNativeKeystoreAsUser(Ljava/lang/String;II)Z
    .registers 9

    const-string v0, "SecurityPolicy"

    if-nez p1, :cond_22

    .line 1944
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "deleteCertificateFromNativeKeystoreAsUser: alias is null for keystore = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", userId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 v1, 0x0

    .line 1951
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1953
    :try_start_27
    new-instance v4, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, p3}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_57

    const/4 p0, 0x4

    if-ne p2, p0, :cond_33

    const/4 p0, -0x1

    goto :goto_35

    :cond_33
    const/16 p0, 0x3f2

    .line 1955
    :goto_35
    :try_start_35
    invoke-virtual {v4, p1, p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->deleteEntry(Ljava/lang/String;I)Z

    move-result p0

    .line 1956
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Delete state : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_35 .. :try_end_4d} :catchall_54

    .line 1959
    invoke-virtual {v4}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 1961
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_54
    move-exception p0

    move-object v1, v4

    goto :goto_58

    :catchall_57
    move-exception p0

    :goto_58
    if-eqz v1, :cond_5d

    .line 1959
    invoke-virtual {v1}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 1961
    :cond_5d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1962
    throw p0
.end method

.method public deleteCertificateFromUserKeystore(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateInfo;I)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13

    const-string p1, "Failed to dump Default keystore "

    const-string p3, "SecurityPolicy"

    .line 2097
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    const-string p0, "Permission Denial: can\'t dump SecurityPolicy"

    .line 2099
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2102
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2104
    new-instance v1, Lcom/android/server/enterprise/utils/CertificateUtil;

    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    .line 2105
    invoke-virtual {v1}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object v1

    .line 2107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VPN and Apps keystore]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2108
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ": "

    const-string v5, "Aliases for user "

    const/4 v6, 0x0

    if-eqz v3, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2109
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2110
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2111
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2112
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    .line 2113
    invoke-static {v4, v6, v5, v3}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->listAliases(Landroid/content/Context;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v3

    .line 2112
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->dumpAliases([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 2116
    :cond_6d
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Wifi keystore]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Aliases: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2119
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const/16 v3, 0x3f2

    const/4 v7, 0x0

    .line 2120
    invoke-static {v2, v6, v3, v7}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->listAliases(Landroid/content/Context;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v2

    .line 2119
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->dumpAliases([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2124
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Default keystore]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2128
    :try_start_c4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c8
    :goto_c8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2129
    iget-object v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v7, v8}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v7

    .line 2131
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v8
    :try_end_e7
    .catch Ljava/lang/InterruptedException; {:try_start_c4 .. :try_end_e7} :catch_135
    .catch Ljava/lang/AssertionError; {:try_start_c4 .. :try_end_e7} :catch_121
    .catchall {:try_start_c4 .. :try_end_e7} :catchall_11f

    if-eqz v8, :cond_c8

    .line 2134
    :try_start_e9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2135
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2136
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2137
    invoke-interface {v8}, Landroid/security/IKeyChainService;->userAliases()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/security/SecurityPolicy;->dumpAliases(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_fd
    .catch Landroid/os/RemoteException; {:try_start_e9 .. :try_end_fd} :catch_103
    .catchall {:try_start_e9 .. :try_end_fd} :catchall_101

    .line 2143
    :goto_fd
    :try_start_fd
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_100
    .catch Ljava/lang/InterruptedException; {:try_start_fd .. :try_end_100} :catch_135
    .catch Ljava/lang/AssertionError; {:try_start_fd .. :try_end_100} :catch_121
    .catchall {:try_start_fd .. :try_end_100} :catchall_11f

    goto :goto_c8

    :catchall_101
    move-exception v1

    goto :goto_117

    :catch_103
    move-exception v6

    .line 2140
    :try_start_104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_116
    .catchall {:try_start_104 .. :try_end_116} :catchall_101

    goto :goto_fd

    .line 2143
    :goto_117
    :try_start_117
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 2144
    throw v1
    :try_end_11b
    .catch Ljava/lang/InterruptedException; {:try_start_117 .. :try_end_11b} :catch_135
    .catch Ljava/lang/AssertionError; {:try_start_117 .. :try_end_11b} :catch_121
    .catchall {:try_start_117 .. :try_end_11b} :catchall_11f

    .line 2152
    :cond_11b
    :goto_11b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_149

    :catchall_11f
    move-exception p0

    goto :goto_178

    :catch_121
    move-exception v1

    .line 2150
    :try_start_122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11b

    :catch_135
    move-exception v1

    .line 2148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_148
    .catchall {:try_start_122 .. :try_end_148} :catchall_11f

    goto :goto_11b

    .line 2154
    :goto_149
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 2158
    iget-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    const-string p3, "deviceEnrolled"

    const-string v0, "bannerText"

    filled-new-array {p3, v0}, [Ljava/lang/String;

    move-result-object p3

    const-string v0, "SECURITY"

    invoke-virtual {p1, p2, v0, p3}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2163
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    const-string p1, "dodBannerVisible"

    const-string p3, "deviceLastAccessDate"

    const-string v0, "deviceBootMode"

    filled-new-array {p1, p3, v0}, [Ljava/lang/String;

    move-result-object p1

    const-string p3, "generic"

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 2152
    :goto_178
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2153
    throw p0
.end method

.method public final dumpAliases(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2175
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_39

    const-string/jumbo v0, "{"

    .line 2177
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2178
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2179
    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2180
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2183
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, ", "

    .line 2184
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_2c
    const-string/jumbo p1, "}"

    .line 2187
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2188
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2190
    :cond_39
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final dumpAliases([Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_7

    .line 2171
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->dumpAliases(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public enableRebootBanner(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 13

    const/4 v0, 0x0

    .line 1421
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enableRebootBannerInternal(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    move-result p0

    .line 1422
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-eqz p0, :cond_63

    .line 1425
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    const-string v0, "Admin "

    if-eqz p2, :cond_38

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 1429
    :try_start_18
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "SecurityPolicy"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has enabled reboot banner."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1428
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_5a

    :cond_38
    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 1433
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "SecurityPolicy"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has disabled reboot banner."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1432
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5a
    .catchall {:try_start_18 .. :try_end_5a} :catchall_5e

    .line 1437
    :goto_5a
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_63

    :catchall_5e
    move-exception p0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1438
    throw p0

    :cond_63
    :goto_63
    return p0
.end method

.method public final enableRebootBannerInternal(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z
    .registers 8

    const-string v0, "SECURITY"

    .line 1468
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1470
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-nez p2, :cond_b

    const/4 p3, 0x0

    .line 1475
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "deviceEnrolled"

    invoke-virtual {v2, v1, v0, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1479
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "bannerText"

    invoke-virtual {v2, v1, v0, v3, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_19} :catch_1b

    const/4 p3, 0x1

    goto :goto_1c

    :catch_1b
    const/4 p3, 0x0

    .line 1486
    :goto_1c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->addBannerAppToBatteryOptimizationWhitelist(Lcom/samsung/android/knox/ContextInfo;Z)V

    return p3
.end method

.method public enableRebootBannerWithText(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z
    .registers 14

    .line 1445
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/SecurityPolicy;->enableRebootBannerInternal(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    move-result p0

    .line 1446
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-eqz p0, :cond_65

    .line 1448
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    const-string v0, "Admin "

    if-eqz p2, :cond_3a

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 1452
    :try_start_17
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "SecurityPolicy"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has enabled reboot banner with text "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1451
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_5c

    :cond_3a
    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 1456
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "SecurityPolicy"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has disabled reboot banner."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1455
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5c
    .catchall {:try_start_17 .. :try_end_5c} :catchall_60

    .line 1460
    :goto_5c
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_65

    :catchall_60
    move-exception p0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1461
    throw p0

    :cond_65
    :goto_65
    return p0
.end method

.method public final enforceAdminPermissionIfCallerInCertWhiteList(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/ContextInfo;
    .registers 6

    .line 474
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_SECURITY"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 475
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 474
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getAdminContextIfCallerInCertWhiteList(Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    if-nez v0, :cond_27

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_22

    .line 479
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndCertProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    goto :goto_3c

    .line 481
    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceCertificateProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    goto :goto_3c

    :cond_27
    and-int/lit8 p0, p2, 0x2

    if-eqz p0, :cond_3c

    .line 484
    iget p0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 486
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    if-nez p0, :cond_34

    goto :goto_3c

    .line 487
    :cond_34
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Operation supported only on owner space"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3c
    :goto_3c
    return-object v0
.end method

.method public final enforceCertificateProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5

    .line 433
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    const-string v2, "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 434
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 433
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOnlyCertProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 450
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 451
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 450
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOnlySecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 442
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 442
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndCertProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 468
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 468
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 459
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 460
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 459
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 424
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 425
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 424
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final formatExternalStorageCard()Z
    .registers 5

    .line 799
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 800
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->wipeAdoptableDisks()V

    .line 802
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 803
    new-instance v1, Lcom/android/server/enterprise/security/SecurityPolicy$4;

    invoke-direct {v1, p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy$4;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Ljava/lang/Object;)V

    .line 820
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    .line 821
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "file"

    .line 822
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 823
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 825
    monitor-enter v0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_45

    const-wide/16 v2, 0x1b58

    .line 827
    :try_start_2f
    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_32} :catch_35
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_3c

    :catchall_33
    move-exception v1

    goto :goto_43

    :catch_35
    :try_start_35
    const-string v2, "SecurityPolicy"

    const-string v3, "formatStorageCard - InterruptedException"

    .line 829
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_33

    .line 832
    :try_start_3d
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_42} :catch_45

    goto :goto_4c

    .line 831
    :goto_43
    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_33

    :try_start_44
    throw v1
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_45} :catch_45

    :catch_45
    const-string v0, "SecurityPolicy"

    const-string v1, "formatStorageCard fail"

    .line 835
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :goto_4c
    iget-boolean p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    return p0
.end method

.method public formatInternalStorage(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .registers 4

    .line 714
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/4 p0, 0x1

    return p0
.end method

.method public formatSelective(Lcom/samsung/android/knox/ContextInfo;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method

.method public formatStorageCard(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "android.intent.action.MASTER_CLEAR"

    .line 731
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/4 v4, 0x0

    .line 733
    iput-boolean v4, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    .line 734
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getStorageAdapter()Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;->getVolumes()Ljava/util/List;

    move-result-object v7

    .line 738
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v4

    :cond_1f
    :goto_1f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_46

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/VolumeInfo;

    if-eqz v9, :cond_1f

    .line 739
    invoke-virtual {v9}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v11

    if-nez v11, :cond_1f

    invoke-virtual {v9}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v11

    if-eqz v11, :cond_1f

    invoke-virtual {v9}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v9

    if-eqz v9, :cond_1f

    move v8, v10

    goto :goto_1f

    :cond_46
    const-string v7, "Admin "

    const-string v9, "SecurityPolicy"

    if-ne v2, v10, :cond_5c

    if-ne v8, v10, :cond_53

    .line 747
    :try_start_4e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->formatExternalStorageCard()Z

    goto/16 :goto_102

    :cond_53
    const-string v3, "This device doesn\'t suppot External SD card"

    .line 749
    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iput-boolean v4, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    goto/16 :goto_102

    .line 755
    :cond_5c
    iget-object v8, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "device_provisioned"

    invoke-static {v8, v11, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_7a

    .line 757
    iget-object v8, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "persistent_data_block"

    .line 758
    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/persistentdata/PersistentDataBlockManager;

    if-eqz v8, :cond_7a

    .line 760
    invoke-virtual {v8}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    .line 764
    :cond_7a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getFactoryReceiver()Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->factoryReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    .line 765
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 766
    invoke-virtual {v8, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 767
    iget-object v11, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    iget-object v12, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->factoryReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    invoke-virtual {v11, v12, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 769
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 770
    iget-object v3, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget v11, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v11}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    const-string v11, "android.intent.extra.REASON"

    .line 771
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DeviceWipeByMDM("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_b1

    aget-object v3, v3, v4

    goto :goto_b4

    :cond_b1
    const-string/jumbo v3, "null!"

    :goto_b4
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    iget-object v3, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 774
    iput-boolean v10, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    const/4 v11, 0x5

    const/4 v12, 0x1

    const/4 v13, 0x1

    .line 776
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    const-string v15, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has requested full wipe of device."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    iget v3, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 778
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    .line 775
    invoke-static/range {v11 .. v17}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_fc} :catch_fd

    goto :goto_102

    :catch_fd
    const-string v3, "formatStorageCard fail"

    .line 781
    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :goto_102
    iget-boolean v3, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    if-eqz v3, :cond_130

    if-eqz v2, :cond_130

    const/4 v10, 0x5

    const/4 v11, 0x1

    const/4 v12, 0x1

    .line 787
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has requested wipe of device external memory."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 789
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    const-string v14, "SecurityPolicy"

    .line 786
    invoke-static/range {v10 .. v16}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 792
    :cond_130
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 793
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "formatStorageCard() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isExternal = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-boolean v0, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    return v0
.end method

.method public getAdminUidFromWhiteListedPackage(Ljava/lang/String;I)I
    .registers 7

    const-string v0, "adminUid"

    .line 2329
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 2333
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "packageName"

    .line 2334
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2336
    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object p2

    const-string v3, "#SelectClause#"

    .line 2335
    invoke-virtual {v2, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2339
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p2, "CertificateWhiteListTable"

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    .line 2342
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_38

    .line 2343
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_38
    const/4 p0, -0x1

    return p0
.end method

.method public final getAndroidInstalledCertificatesAsUser(I)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "getAndroidInstalledCertificates "

    const-string v1, "SecurityPolicy"

    .line 1117
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1119
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1121
    :try_start_d
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {p0, v5}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object p0

    .line 1122
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v5
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_1c} :catch_c8
    .catch Ljava/lang/AssertionError; {:try_start_d .. :try_end_1c} :catch_ae
    .catchall {:try_start_d .. :try_end_1c} :catchall_ac

    if-eqz v5, :cond_a8

    .line 1126
    :try_start_1e
    invoke-interface {v5}, Landroid/security/IKeyChainService;->userAliases()Ljava/util/List;

    move-result-object v6

    .line 1127
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_26
    :goto_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x0

    .line 1128
    invoke-interface {v5, v7, v8}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    move-result-object v7
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_37} :catch_90
    .catchall {:try_start_1e .. :try_end_37} :catchall_8e

    if-eqz v7, :cond_26

    .line 1131
    :try_start_39
    invoke-static {v7}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v7

    .line 1132
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_41
    :goto_41
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_26

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    if-eqz v9, :cond_41

    .line 1134
    new-instance v10, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v10}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>()V

    .line 1135
    invoke-virtual {v10, v9}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    const/4 v9, 0x1

    .line 1136
    invoke-virtual {v10, v9}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setKeystore(I)V

    .line 1137
    invoke-virtual {v10, v8}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setSystemPreloaded(Z)V

    .line 1138
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_61} :catch_76
    .catch Ljava/security/cert/CertificateException; {:try_start_39 .. :try_end_61} :catch_62
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_61} :catch_90
    .catchall {:try_start_39 .. :try_end_61} :catchall_8e

    goto :goto_41

    :catch_62
    move-exception v7

    .line 1144
    :try_start_63
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :catch_76
    move-exception v7

    .line 1142
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_89} :catch_90
    .catchall {:try_start_63 .. :try_end_89} :catchall_8e

    goto :goto_26

    .line 1151
    :cond_8a
    :goto_8a
    :try_start_8a
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_8d
    .catch Ljava/lang/InterruptedException; {:try_start_8a .. :try_end_8d} :catch_c8
    .catch Ljava/lang/AssertionError; {:try_start_8a .. :try_end_8d} :catch_ae
    .catchall {:try_start_8a .. :try_end_8d} :catchall_ac

    goto :goto_a8

    :catchall_8e
    move-exception v0

    goto :goto_a4

    :catch_90
    move-exception v5

    .line 1149
    :try_start_91
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catchall {:try_start_91 .. :try_end_a3} :catchall_8e

    goto :goto_8a

    .line 1151
    :goto_a4
    :try_start_a4
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 1152
    throw v0
    :try_end_a8
    .catch Ljava/lang/InterruptedException; {:try_start_a4 .. :try_end_a8} :catch_c8
    .catch Ljava/lang/AssertionError; {:try_start_a4 .. :try_end_a8} :catch_ae
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_ac

    .line 1159
    :cond_a8
    :goto_a8
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_df

    :catchall_ac
    move-exception p0

    goto :goto_e0

    .line 1157
    :catch_ae
    :try_start_ae
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAndroidInstalledCertificatesAsUser - is KeyChainService running for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    :catch_c8
    move-exception p0

    .line 1155
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "getSystemCertificatesAsUser "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_de
    .catchall {:try_start_ae .. :try_end_de} :catchall_ac

    goto :goto_a8

    :goto_df
    return-object v2

    .line 1159
    :goto_e0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1160
    throw p0
.end method

.method public getCertificatesFromKeystore(Lcom/samsung/android/knox/ContextInfo;II)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "II)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    .line 1705
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceAdminPermissionIfCallerInCertWhiteList(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1707
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 1708
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1711
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1712
    iget-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6d

    .line 1715
    :cond_2b
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->validateKeystoreParam(I)Z

    move-result v1

    if-eqz v1, :cond_a2

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_44

    .line 1717
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getAndroidInstalledCertificatesAsUser(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x1

    .line 1718
    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getSystemCertificatesAsUser(ZI)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_44
    and-int/lit8 v1, p2, 0x2

    const-string v2, "CACERT_"

    const-string v3, "USRCERT_"

    if-eqz v1, :cond_5b

    const/4 v1, 0x2

    .line 1721
    invoke-virtual {p0, v3, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1723
    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5b
    const/4 v1, 0x4

    and-int/2addr p2, v1

    if-eqz p2, :cond_6d

    .line 1727
    invoke-virtual {p0, v3, v1, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1729
    invoke-virtual {p0, v2, v1, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1740
    :cond_6d
    :goto_6d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    sget p2, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->MAXIMUM_CERTIFICATE_NUMBERS:I

    const/4 v1, 0x0

    if-lt p1, p2, :cond_90

    .line 1741
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget p2, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->MAXIMUM_CERTIFICATE_NUMBERS:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    invoke-interface {v0, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1742
    sget p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->MAXIMUM_CERTIFICATE_NUMBERS:I

    invoke-interface {v0, v1, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    goto :goto_a1

    .line 1746
    :cond_90
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    :goto_a1
    return-object p0

    :cond_a2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCertificatesFromUserKeystore(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCredentialStorageStatus(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 7

    .line 1245
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 1246
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "com.samsung.android.knox.permission.KNOX_SECURITY"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 1247
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1246
    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getAdminContextIfCallerInCertWhiteList(Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    if-nez v1, :cond_2c

    .line 1249
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->needtoCheckPackageCaller()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1250
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceCertificateProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    goto :goto_2c

    .line 1252
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOnlyCertProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    .line 1258
    :cond_2c
    :goto_2c
    iget p0, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    .line 1260
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 p1, 0x4

    .line 1262
    :try_start_37
    invoke-virtual {v0, p0}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object p0

    .line 1263
    sget-object v0, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    invoke-virtual {p0, v0}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const/4 p1, 0x1

    goto :goto_58

    .line 1266
    :cond_45
    sget-object v0, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    invoke-virtual {p0, v0}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const/4 p1, 0x2

    goto :goto_58

    .line 1269
    :cond_4f
    sget-object v0, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    invoke-virtual {p0, v0}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_55
    .catch Ljava/lang/AssertionError; {:try_start_37 .. :try_end_55} :catch_5e
    .catchall {:try_start_37 .. :try_end_55} :catchall_5c

    if-eqz p0, :cond_58

    const/4 p1, 0x3

    .line 1278
    :cond_58
    :goto_58
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7a

    :catchall_5c
    move-exception p0

    goto :goto_7b

    :catch_5e
    move-exception p0

    :try_start_5f
    const-string v0, "SecurityPolicy"

    .line 1275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keystore State Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_5f .. :try_end_79} :catchall_5c

    goto :goto_58

    :goto_7a
    return p1

    .line 1278
    :goto_7b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1279
    throw p0
.end method

.method public getDeviceLastAccessDate(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 3

    .line 1617
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1618
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "deviceLastAccessDate"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 312
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 313
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mInjector:Lcom/android/server/enterprise/security/SecurityPolicy$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/security/SecurityPolicy$Injector;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 315
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public final getFactoryReceiver()Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;
    .registers 3

    .line 320
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->factoryReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    if-nez v0, :cond_c

    .line 321
    new-instance v0, Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver-IA;)V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->factoryReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    .line 324
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->factoryReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    return-object p0
.end method

.method public final getInitialVector()Ljavax/crypto/spec/IvParameterSpec;
    .registers 3

    .line 640
    new-instance p0, Ljava/security/SecureRandom;

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    .line 641
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v0
.end method

.method public final getKeystoreString(I)Ljava/lang/String;
    .registers 4

    .line 2051
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_e

    const-string v0, "Default"

    .line 2053
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    and-int/lit8 v0, p1, 0x2

    const-string v1, "/"

    if-eqz v0, :cond_22

    .line 2056
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 2057
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    const-string v0, "Wi-Fi"

    .line 2059
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_34

    .line 2062
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_2f

    .line 2063
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    const-string p1, "VPN and Apps"

    .line 2065
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2068
    :cond_34
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_3f

    const-string p1, "None"

    .line 2069
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2071
    :cond_3f
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNativeInstalledCertificateNamesAsUser(Ljava/lang/String;II)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1224
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1226
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p1, :cond_1d

    const/4 v2, 0x4

    if-ne p2, v2, :cond_f

    const/4 p2, -0x1

    goto :goto_11

    :cond_f
    const/16 p2, 0x3f2

    .line 1230
    :goto_11
    :try_start_11
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->listAliases(Landroid/content/Context;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_18

    goto :goto_1e

    :catchall_18
    move-exception p0

    .line 1234
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1235
    throw p0

    :cond_1d
    const/4 p0, 0x0

    .line 1234
    :goto_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p0, :cond_28

    .line 1237
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_2d

    :cond_28
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_2d
    return-object p0
.end method

.method public final getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1068
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    .line 1079
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x4

    if-ne p2, v2, :cond_9

    const/4 v2, -0x1

    goto :goto_b

    :cond_9
    const/16 v2, 0x3f2

    :goto_b
    const/4 v3, 0x0

    .line 1083
    :try_start_c
    new-instance v4, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, p3}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_76

    .line 1084
    :try_start_13
    invoke-virtual {v4, p1, v2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->listAliases(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_22

    .line 1085
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_73

    .line 1110
    invoke-virtual {v4}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 1112
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 1087
    :cond_22
    :try_start_22
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1088
    array-length v3, p0

    const/4 v5, 0x0

    :goto_29
    if-ge v5, v3, :cond_6c

    aget-object v6, p0, v5

    .line 1089
    invoke-virtual {v4, v6, p1, v2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->get(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v7

    if-nez v7, :cond_34

    goto :goto_69

    .line 1092
    :cond_34
    invoke-static {v7}, Lcom/android/server/enterprise/utils/CertificateUtil;->toCertificates([B)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_69

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    if-nez v8, :cond_4b

    goto :goto_3c

    .line 1095
    :cond_4b
    new-instance v9, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v9}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>()V

    .line 1096
    invoke-virtual {v9, v8}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 1097
    invoke-virtual {v9, p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setKeystore(I)V

    .line 1098
    invoke-virtual {v9, v6}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setAlias(Ljava/lang/String;)V

    const-string v8, "USRCERT_"

    .line 1099
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_65

    const/4 v8, 0x1

    .line 1102
    invoke-virtual {v9, v8}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setHasPrivateKey(Z)V

    .line 1104
    :cond_65
    invoke-interface {p3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_68
    .catchall {:try_start_22 .. :try_end_68} :catchall_73

    goto :goto_3c

    :cond_69
    :goto_69
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 1110
    :cond_6c
    invoke-virtual {v4}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 1112
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p3

    :catchall_73
    move-exception p0

    move-object v3, v4

    goto :goto_77

    :catchall_76
    move-exception p0

    :goto_77
    if-eqz v3, :cond_7c

    .line 1110
    invoke-virtual {v3}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 1112
    :cond_7c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1113
    throw p0
.end method

.method public getPackagesFromCertificateWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    .line 2350
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceCertificateProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string/jumbo v0, "packageName"

    const-string/jumbo v1, "signature"

    .line 2352
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    .line 2357
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2358
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v4, "adminUid"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2360
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "CertificateWhiteListTable"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    .line 2363
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2365
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 2366
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2367
    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2369
    new-instance v4, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v4, v3, v2}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_4c
    return-object p1
.end method

.method public getRebootBannerText(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 4

    .line 1514
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1515
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "SECURITY"

    const-string v1, "bannerText"

    .line 1516
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 1519
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_14

    return-object p1

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRequireDeviceEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z
    .registers 3

    .line 1003
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1005
    :try_start_3
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string p1, "device_policy"

    .line 1006
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 1007
    invoke-virtual {p0, p2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_12

    return p0

    :catch_12
    move-exception p0

    .line 1009
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "getRequireDeviceEncryption Ex"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SecurityPolicy"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public getRequireStorageCardEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z
    .registers 6

    .line 1033
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1034
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1037
    :try_start_7
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    .line 1038
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 1039
    iget-boolean p1, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    invoke-virtual {p0, p2, p1}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;Z)Z

    move-result p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_1d
    .catchall {:try_start_7 .. :try_end_17} :catchall_1b

    .line 1044
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1b
    move-exception p0

    goto :goto_41

    :catch_1d
    move-exception p0

    :try_start_1e
    const-string p1, "SecurityPolicy"

    .line 1041
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRequireStorageCardEncryption Ex"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_1e .. :try_end_3c} :catchall_1b

    .line 1044
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1045
    throw p0
.end method

.method public getRestrictedKeyCodes()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2015
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisibleAsUser(I)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 2016
    new-instance p0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Integer;

    .line 2017
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const/16 v1, 0xbb

    .line 2018
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 2017
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object p0

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getServiceName()Ljava/lang/String;
    .registers 1

    const-string p0, "SecurityPolicy"

    return-object p0
.end method

.method public final getSessionKey()Ljava/security/Key;
    .registers 4

    .line 626
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mSecureRandom:Ljava/security/SecureRandom;

    :try_start_7
    const-string v0, "AES"

    .line 629
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const/16 v1, 0x100

    .line 630
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 631
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->secretKey:Ljavax/crypto/SecretKey;
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception v0

    .line 633
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 635
    :goto_1f
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->secretKey:Ljavax/crypto/SecretKey;

    return-object p0
.end method

.method public final declared-synchronized getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    monitor-enter p0

    .line 328
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1c

    const-string/jumbo v0, "statusbar"

    .line 330
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 329
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1c

    const-string v0, "SecurityPolicy"

    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    .line 332
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_1c
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v0

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getStorageAdapter()Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;
    .registers 1

    .line 720
    const-class p0, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    invoke-static {p0}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->getAdapter(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    return-object p0
.end method

.method public getSystemCertificates(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    .line 1053
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceCertificateProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1054
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const/4 v0, 0x0

    .line 1055
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getSystemCertificatesAsUser(ZI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getSystemCertificatesAsUser(ZI)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "getSystemCertificatesAsUser "

    const-string v1, "SecurityPolicy"

    .line 1166
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1167
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1169
    :try_start_e
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {p0, v5}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object p0

    .line 1171
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v5
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_1d} :catch_d0
    .catch Ljava/lang/AssertionError; {:try_start_e .. :try_end_1d} :catch_b5
    .catchall {:try_start_e .. :try_end_1d} :catchall_b3

    if-eqz v5, :cond_af

    .line 1174
    :try_start_1f
    invoke-interface {v5}, Landroid/security/IKeyChainService;->allSystemAliases()Ljava/util/List;

    move-result-object v6

    .line 1175
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_27
    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_91

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1176
    new-instance v8, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v8}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>()V

    .line 1178
    invoke-interface {v5, v7, p1}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    move-result-object v9
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_3c} :catch_97
    .catchall {:try_start_1f .. :try_end_3c} :catchall_95

    if-eqz v9, :cond_27

    .line 1182
    :try_start_3e
    invoke-static {v9}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v9

    .line 1183
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_46
    :goto_46
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_27

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    if-eqz v10, :cond_46

    .line 1185
    invoke-virtual {v8, v10}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    const/4 v10, 0x1

    .line 1186
    invoke-virtual {v8, v10}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setKeystore(I)V

    .line 1187
    invoke-virtual {v8, v10}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setSystemPreloaded(Z)V

    .line 1188
    invoke-interface {v5, v7}, Landroid/security/IKeyChainService;->containsAlias(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v10}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setEnabled(Z)V

    .line 1189
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_68} :catch_7d
    .catch Ljava/security/cert/CertificateException; {:try_start_3e .. :try_end_68} :catch_69
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_68} :catch_97
    .catchall {:try_start_3e .. :try_end_68} :catchall_95

    goto :goto_46

    :catch_69
    move-exception v7

    .line 1195
    :try_start_6a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :catch_7d
    move-exception v7

    .line 1193
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_90} :catch_97
    .catchall {:try_start_6a .. :try_end_90} :catchall_95

    goto :goto_27

    .line 1202
    :cond_91
    :goto_91
    :try_start_91
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_94
    .catch Ljava/lang/InterruptedException; {:try_start_91 .. :try_end_94} :catch_d0
    .catch Ljava/lang/AssertionError; {:try_start_91 .. :try_end_94} :catch_b5
    .catchall {:try_start_91 .. :try_end_94} :catchall_b3

    goto :goto_af

    :catchall_95
    move-exception p1

    goto :goto_ab

    :catch_97
    move-exception p1

    .line 1200
    :try_start_98
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catchall {:try_start_98 .. :try_end_aa} :catchall_95

    goto :goto_91

    .line 1202
    :goto_ab
    :try_start_ab
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 1203
    throw p1
    :try_end_af
    .catch Ljava/lang/InterruptedException; {:try_start_ab .. :try_end_af} :catch_d0
    .catch Ljava/lang/AssertionError; {:try_start_ab .. :try_end_af} :catch_b5
    .catchall {:try_start_ab .. :try_end_af} :catchall_b3

    .line 1210
    :cond_af
    :goto_af
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_e4

    :catchall_b3
    move-exception p0

    goto :goto_e5

    .line 1208
    :catch_b5
    :try_start_b5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "getSystemCertificatesAsUser - is KeyChainService running for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    :catch_d0
    move-exception p0

    .line 1206
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e3
    .catchall {:try_start_b5 .. :try_end_e3} :catchall_b3

    goto :goto_af

    :goto_e4
    return-object v2

    .line 1210
    :goto_e5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1211
    throw p0
.end method

.method public final getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    goto :goto_f

    .line 530
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_10

    if-lez v0, :cond_f

    move-object p0, p1

    :cond_f
    :goto_f
    return-object p0

    :catch_10
    const-string p1, "SecurityPolicy"

    const-string/jumbo v0, "is string valid?"

    .line 532
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public installCertificateToKeystore(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;IZ)I
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v8, p6

    move-object/from16 v1, p1

    .line 1652
    invoke-virtual {v0, v1, v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceAdminPermissionIfCallerInCertWhiteList(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v9

    .line 1654
    iget v1, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    move-object/from16 v1, p2

    .line 1657
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p4

    .line 1658
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz p5, :cond_26

    .line 1661
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_28

    :cond_26
    move-object/from16 v5, p5

    .line 1664
    :goto_28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 1667
    :try_start_2c
    invoke-virtual {v0, v9}, Lcom/android/server/enterprise/security/SecurityPolicy;->getCredentialStorageStatus(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_f4

    const-string v6, "SecurityPolicy"

    const/4 v15, 0x1

    if-eq v1, v15, :cond_50

    const/4 v10, 0x3

    if-eq v1, v10, :cond_50

    .line 1669
    :try_start_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "installCertificateToKeystore: Keystore error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v7

    move v10, v15

    goto :goto_b4

    .line 1670
    :cond_50
    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->validateKeystoreParam(I)Z

    move-result v1

    if-eqz v1, :cond_ab

    if-nez p7, :cond_5a

    if-eqz v2, :cond_ab

    :cond_5a
    if-eqz v3, :cond_ab

    array-length v1, v3

    if-eqz v1, :cond_ab

    if-nez v4, :cond_62

    goto :goto_ab

    :cond_62
    const/4 v10, 0x5

    const/4 v11, 0x1

    const/4 v12, 0x1

    .line 1675
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    const-string v14, "SecurityPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " has requested to install a certificate. Keystore(s) : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1677
    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->getKeystoreString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", Name : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v6, v15

    move-object v15, v1

    move/from16 v16, v7

    .line 1675
    invoke-static/range {v10 .. v16}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1679
    new-instance v1, Lcom/android/server/enterprise/utils/CertificateUtil;

    iget-object v10, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v10}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    move-object/from16 v3, p3

    move v10, v6

    move/from16 v6, p6

    move v11, v7

    .line 1680
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/utils/CertificateUtil;->installAsUser(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)I

    move-result v1

    goto :goto_b4

    :cond_ab
    :goto_ab
    move v11, v7

    move v10, v15

    const/4 v1, -0x1

    const-string/jumbo v2, "installCertificateToKeystore: Invalid parameter(s)"

    .line 1673
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :goto_b4
    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/security/SecurityPolicy;->sendIntentToSettings(I)V
    :try_end_b7
    .catchall {:try_start_38 .. :try_end_b7} :catchall_f4

    .line 1686
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez p7, :cond_f3

    if-nez v1, :cond_f3

    .line 1691
    new-instance v2, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v3, "KNOX_AKS"

    const-string v4, "API:installCertificateToKeystore"

    invoke-direct {v2, v3, v10, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1692
    iget v3, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "cId"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string/jumbo v3, "uId"

    .line 1693
    invoke-virtual {v2, v3, v11}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 1694
    iget-object v3, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget v4, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "pN"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->getKeystoreString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "key"

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    invoke-static {v2}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    :cond_f3
    return v1

    :catchall_f4
    move-exception v0

    .line 1686
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1687
    throw v0
.end method

.method public installCertificateToUserKeystore(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;I)Z
    .registers 7

    const/4 p0, 0x0

    return p0
.end method

.method public installCertificateWithType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[B)V
    .registers 8

    const-string v0, "SecurityPolicy"

    .line 562
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndCertProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 563
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_52

    if-eqz p3, :cond_52

    .line 564
    array-length p2, p3

    if-lez p2, :cond_52

    .line 565
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 567
    :try_start_14
    new-instance p2, Landroid/content/Intent;

    const-string v3, "android.credentials.INSTALL"

    invoke-direct {p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    .line 568
    invoke-virtual {p2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "senderpackagename"

    .line 569
    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 571
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_14 .. :try_end_2e} :catch_34
    .catchall {:try_start_14 .. :try_end_2e} :catchall_32

    .line 575
    :goto_2e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_52

    :catchall_32
    move-exception p0

    goto :goto_4e

    :catch_34
    move-exception p0

    .line 573
    :try_start_35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "::installCertificateWithType() : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_35 .. :try_end_4d} :catchall_32

    goto :goto_2e

    .line 575
    :goto_4e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 576
    throw p0

    :cond_52
    :goto_52
    return-void
.end method

.method public installCertificatesFromSdCard(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 6

    const-string v0, "SecurityPolicy"

    .line 583
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndCertProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 584
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 586
    :try_start_9
    new-instance p1, Landroid/content/Intent;

    const-string v3, "android.credentials.INSTALL"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    .line 587
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "senderpackagename"

    .line 588
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_20
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_20} :catch_26
    .catchall {:try_start_9 .. :try_end_20} :catchall_24

    .line 593
    :goto_20
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_40

    :catchall_24
    move-exception p0

    goto :goto_41

    :catch_26
    move-exception p0

    .line 591
    :try_start_27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::installCertificatesFromSdCard() : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_27 .. :try_end_3f} :catchall_24

    goto :goto_20

    :goto_40
    return-void

    .line 593
    :goto_41
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 594
    throw p0
.end method

.method public installKeyPair(Ljava/security/KeyPair;)V
    .registers 2

    return-void
.end method

.method public final isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 p0, 0x0

    if-eqz p1, :cond_12

    .line 2308
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2309
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    return v0

    :cond_12
    const-string p1, "SecurityPolicy"

    const-string p2, "context or PackageManager is null : returning false"

    .line 2313
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_19} :catch_19

    :catch_19
    return p0
.end method

.method public final isBannerApp(I)Z
    .registers 2

    .line 1559
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.samsung.android.mdm"

    .line 1560
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public isDodBannerVisible(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 1570
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1572
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisibleAsUser(I)Z

    move-result p0

    return p0
.end method

.method public isDodBannerVisibleAsUser(I)Z
    .registers 3

    .line 1578
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "dodBannerVisible"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_12

    :catch_9
    const-string p0, "SecurityPolicy"

    const-string/jumbo p1, "isDodBannerVisibleAsUser facing exception, return default value"

    .line 1580
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_12
    if-eqz p0, :cond_1e

    const-string p1, "1"

    .line 1583
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public isExternalStorageEncrypted(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    .line 971
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 972
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 975
    :try_start_7
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    move-result-object p0

    .line 976
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->isStorageCardEncrypted()Z

    move-result p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_17
    .catchall {:try_start_7 .. :try_end_11} :catchall_15

    .line 980
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_15
    move-exception p0

    goto :goto_24

    :catch_17
    :try_start_17
    const-string p0, "SecurityPolicy"

    const-string/jumbo p1, "is External Storage Encrypted ?"

    .line 978
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_15

    .line 980
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 981
    throw p0
.end method

.method public isInternalStorageEncrypted(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 943
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 944
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 p1, 0x0

    .line 947
    :try_start_8
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    .line 948
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 949
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_28
    .catchall {:try_start_8 .. :try_end_16} :catchall_26

    const/4 v2, 0x3

    if-eq p0, v2, :cond_21

    const/4 v2, 0x5

    if-ne p0, v2, :cond_1d

    goto :goto_21

    .line 959
    :cond_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :cond_21
    :goto_21
    const/4 p0, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_26
    move-exception p0

    goto :goto_34

    :catch_28
    :try_start_28
    const-string p0, "SecurityPolicy"

    const-string/jumbo v2, "is Internal Storage Encrypted ?"

    .line 957
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_26

    .line 959
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 960
    throw p0
.end method

.method public final isInternalStorageEncryptedbyDefaultKey(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 2194
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2195
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 p1, 0x0

    .line 2198
    :try_start_8
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    .line 2199
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 2200
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_20
    .catchall {:try_start_8 .. :try_end_16} :catchall_1e

    const/4 v2, 0x4

    if-ne p0, v2, :cond_1a

    const/4 p1, 0x1

    .line 2204
    :cond_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_1e
    move-exception p0

    goto :goto_2c

    :catch_20
    :try_start_20
    const-string p0, "SecurityPolicy"

    const-string/jumbo v2, "is Internal Storage Encrypted by Default key?"

    .line 2202
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_1e

    .line 2204
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_2c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2205
    throw p0
.end method

.method public isKeyCodeInputAllowed(I)Z
    .registers 4

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_d

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_d

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_d

    return v1

    :cond_d
    const/4 p1, 0x0

    .line 2090
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisibleAsUser(I)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public final isLastBootInSafeMode()Z
    .registers 2

    .line 1639
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "deviceBootMode"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_14

    const-string v0, "1"

    .line 1641
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public final isPackageAlreadyWhiteListed(Ljava/lang/String;I)Z
    .registers 3

    .line 2322
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getAdminUidFromWhiteListedPackage(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isRebootBannerEnabled(I)Z
    .registers 4

    .line 1501
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "SECURITY"

    const-string v1, "deviceEnrolled"

    .line 1502
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    .line 1504
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    return p1
.end method

.method public isRebootBannerEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 1495
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1496
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    move-result p0

    return p0
.end method

.method public makeZipFile(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    .line 654
    :try_start_1
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_22
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    const/16 p0, 0x1000

    :try_start_8
    new-array v1, p0, [B

    :goto_a
    const/4 v2, 0x0

    .line 661
    invoke-virtual {p1, v1, v2, p0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_16

    .line 662
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_a

    .line 664
    :cond_16
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_19} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1a
    .catchall {:try_start_8 .. :try_end_19} :catchall_37

    goto :goto_33

    :catch_1a
    move-exception p0

    goto :goto_25

    :catch_1c
    move-exception p0

    goto :goto_2e

    :catchall_1e
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_38

    :catch_22
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 668
    :goto_25
    :try_start_25
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v0, :cond_36

    goto :goto_33

    :catch_2b
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 666
    :goto_2e
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_37

    if-eqz v0, :cond_36

    .line 671
    :goto_33
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_36
    return-object p2

    :catchall_37
    move-exception p0

    :goto_38
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 673
    :cond_3d
    throw p0
.end method

.method public final needtoCheckPackageCaller()Z
    .registers 3

    .line 2029
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2030
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->pkgNameList_allowed:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x0

    return p0

    :cond_1a
    const/4 p0, 0x1

    return p0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    return-void
.end method

.method public onKeyguardLaunched()V
    .registers 5

    .line 380
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOnlySecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 393
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 395
    :try_start_11
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 396
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->startBannerService(I)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_20
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1e

    .line 401
    :cond_1a
    :goto_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_25

    :catchall_1e
    move-exception p0

    goto :goto_26

    :catch_20
    move-exception p0

    .line 399
    :try_start_21
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_1e

    goto :goto_1a

    :goto_25
    return-void

    .line 401
    :goto_26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 402
    throw p0
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public final registerDexBlocker()V
    .registers 6

    const-string v0, "SecurityPolicy"

    .line 2412
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2414
    :try_start_6
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "desktopmode"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 2415
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    invoke-virtual {v3, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    const-string p0, "DexBlocker was registered"

    .line 2416
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1e} :catch_1f

    goto :goto_24

    :catch_1f
    const-string p0, "DexBlocker was failed"

    .line 2418
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    :goto_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public removeAccountsByType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 13

    .line 1385
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SecurityPolicy"

    if-nez p2, :cond_10

    const-string/jumbo p0, "removeAccountsByType() failed - type is invalid"

    .line 1387
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1390
    :cond_10
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1393
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1395
    :try_start_18
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    .line 1396
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p2, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v4

    if-eqz v4, :cond_55

    .line 1397
    array-length v5, v4

    if-lez v5, :cond_55

    .line 1398
    array-length v5, v4

    move v6, v0

    :goto_2e
    if-ge v6, v5, :cond_6a

    aget-object v7, v4, v6

    .line 1399
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeAccountsByType() account = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v9, v9, v8}, Landroid/accounts/AccountManager;->removeAccountAsUser(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    .line 1403
    :cond_55
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "removeAccountsByType() : there is no account for type - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_6a} :catch_71
    .catchall {:try_start_18 .. :try_end_6a} :catchall_6f

    .line 1409
    :cond_6a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x1

    goto :goto_7b

    :catchall_6f
    move-exception p0

    goto :goto_93

    :catch_71
    move-exception p0

    :try_start_72
    const-string/jumbo p1, "removeAccountsByType() : failed. error occurs."

    .line 1407
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_78
    .catchall {:try_start_72 .. :try_end_78} :catchall_6f

    .line 1409
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_7b
    if-nez v0, :cond_92

    .line 1412
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "removeAccountsByType() : has failed. type - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    return v0

    .line 1409
    :goto_93
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1410
    throw p0
.end method

.method public removePackagesFromCertificateWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)Z"
        }
    .end annotation

    .line 2376
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceCertificateProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "CertificateWhiteListTable"

    const-string v1, "adminUid"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_5e

    .line 2382
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_76

    .line 2383
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v4, v2

    :goto_17
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/AppIdentity;

    if-nez v5, :cond_27

    move v4, v3

    goto :goto_17

    .line 2389
    :cond_27
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2390
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2391
    invoke-virtual {v5}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "packageName"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2393
    invoke-virtual {v5}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4f

    .line 2394
    invoke-virtual {v5}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "signature"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2397
    :cond_4f
    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v5

    if-lez v5, :cond_59

    move v5, v2

    goto :goto_5a

    :cond_59
    move v5, v3

    :goto_5a
    and-int/2addr v4, v5

    goto :goto_17

    :cond_5c
    move v3, v4

    goto :goto_76

    .line 2403
    :cond_5e
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 2404
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2405
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    if-lez p0, :cond_75

    move v3, v2

    :cond_75
    and-int/2addr v3, v2

    :cond_76
    :goto_76
    return v3
.end method

.method public resetCredentialStorage(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 12

    .line 1287
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceCertificateProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1288
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1290
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 1293
    :try_start_11
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "SecurityPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has requested to clear credential storages"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v7, v0

    .line 1292
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x3e8

    .line 1302
    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x0

    .line 1301
    invoke-static {v3, v1, v2}, Landroid/security/AndroidKeyStoreMaintenance;->clearNamespace(IJ)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_44

    move v1, v2

    goto :goto_45

    :cond_44
    move v1, v3

    :goto_45
    if-nez v0, :cond_54

    const/4 v4, 0x2

    const-wide/16 v5, 0x66

    .line 1304
    invoke-static {v4, v5, v6}, Landroid/security/AndroidKeyStoreMaintenance;->clearNamespace(IJ)I

    move-result v4
    :try_end_4e
    .catchall {:try_start_11 .. :try_end_4e} :catchall_b2

    if-nez v4, :cond_52

    move v4, v2

    goto :goto_53

    :cond_52
    move v4, v3

    :goto_53
    and-int/2addr v1, v4

    .line 1310
    :cond_54
    :try_start_54
    new-instance v4, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain-IA;)V

    new-array v5, v2, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    .line 1311
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    and-int/2addr v1, v3

    .line 1313
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->sendIntentToSettings(I)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_78} :catch_79
    .catchall {:try_start_54 .. :try_end_78} :catchall_b2

    goto :goto_81

    :catch_79
    :try_start_79
    const-string v3, "SecurityPolicy"

    const-string/jumbo v4, "resetCredentialStorage EX: "

    .line 1315
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_79 .. :try_end_81} :catchall_b2

    .line 1318
    :goto_81
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_b1

    .line 1322
    new-instance v3, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v4, "KNOX_AKS"

    const-string v5, "API:resetCredentialStorage"

    invoke-direct {v3, v4, v2, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1323
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "cId"

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string/jumbo v2, "uId"

    .line 1324
    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 1325
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "pN"

    invoke-virtual {v3, p1, p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    invoke-static {v3}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    :cond_b1
    return v1

    :catchall_b2
    move-exception p0

    .line 1318
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1319
    throw p0
.end method

.method public final retrieveAliasAndDeleteCertificate(Ljava/security/cert/Certificate;Ljava/lang/String;II)Z
    .registers 12

    const-string v3, "CACERT_"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 1885
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/security/SecurityPolicy;->retrieveAliasToBeDeleted(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    const-string v4, "USRCERT_"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    .line 1889
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/security/SecurityPolicy;->retrieveAliasToBeDeleted(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 1892
    :cond_18
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromNativeKeystoreAsUser(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final retrieveAliasToBeDeleted(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 11

    .line 1908
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 1910
    :try_start_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1911
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 1912
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 1914
    :cond_14
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificateNamesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    :goto_18
    const/4 p2, 0x4

    if-ne p4, p2, :cond_1d

    const/4 p2, -0x1

    goto :goto_1f

    :cond_1d
    const/16 p2, 0x3f2

    .line 1918
    :goto_1f
    new-instance p4, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p4, p0, p5}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_64

    .line 1920
    :try_start_26
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2a
    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 1921
    invoke-virtual {p4, p5, p3, p2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->get(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 1923
    invoke-static {v3}, Lcom/android/server/enterprise/utils/CertificateUtil;->toCertificates([B)Ljava/util/List;

    move-result-object v3

    .line 1924
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_44

    .line 1925
    invoke-virtual {v4, p1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_56
    .catchall {:try_start_26 .. :try_end_56} :catchall_61

    if-eqz v4, :cond_44

    move-object v2, p5

    goto :goto_2a

    .line 1934
    :cond_5a
    invoke-virtual {p4}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 1936
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_61
    move-exception p0

    move-object v2, p4

    goto :goto_65

    :catchall_64
    move-exception p0

    :goto_65
    if-eqz v2, :cond_6a

    .line 1934
    invoke-virtual {v2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 1936
    :cond_6a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1937
    throw p0
.end method

.method public final retrieveCertificateAliasFromKeyChain(Landroid/security/IKeyChainService;Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 6

    const-string/jumbo p0, "retrieveCertificateAliasFromKeyChain: "

    const-string v0, "SecurityPolicy"

    if-eqz p1, :cond_5d

    const/4 v1, 0x1

    :try_start_8
    new-array v1, v1, [Ljava/security/cert/Certificate;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 1757
    invoke-static {v1}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/security/IKeyChainService;->getCertificateAlias([B)Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_46
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_15} :catch_2e
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_8 .. :try_end_15} :catch_16

    goto :goto_5e

    :catch_16
    move-exception p1

    .line 1763
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    :catch_2e
    move-exception p1

    .line 1761
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    :catch_46
    move-exception p1

    .line 1759
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    :goto_5d
    const/4 p0, 0x0

    :goto_5e
    return-object p0
.end method

.method public final saveDeviceBootMode(Z)Z
    .registers 7

    const/4 v0, 0x0

    .line 1628
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "deviceBootMode"

    const/4 v2, 0x1

    if-eqz p1, :cond_a

    move v3, v2

    goto :goto_b

    :cond_a
    move v3, v0

    :goto_b
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    const-string v1, "SecurityPolicy"

    .line 1629
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device safe mode saved in generic table : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_22

    goto :goto_23

    :cond_22
    move v2, v0

    :goto_23
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_31} :catch_32

    move v0, p0

    :catch_32
    return v0
.end method

.method public final sendIntentToSettings(I)V
    .registers 4

    .line 2041
    new-instance v0, Lcom/android/server/enterprise/utils/CertificateUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    .line 2042
    iget-boolean p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootCompleted:Z

    invoke-virtual {v0, p1, p0}, Lcom/android/server/enterprise/utils/CertificateUtil;->sendIntentToSettings(IZ)V

    return-void
.end method

.method public setDeviceLastAccessDate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 6

    .line 1595
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOnlySecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1596
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isBannerApp(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 1599
    :cond_e
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    const/4 v0, 0x1

    .line 1602
    :try_start_13
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "deviceLastAccessDate"

    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1605
    sget-object p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBannerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_23} :catch_24

    move v1, v0

    :catch_24
    return v1
.end method

.method public setDodBannerVisibleStatus(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 8

    .line 1534
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOnlySecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1535
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isBannerApp(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 1538
    :cond_e
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    const/4 v0, 0x1

    .line 1541
    :try_start_13
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "dodBannerVisible"

    if-eqz p2, :cond_1b

    move v4, v0

    goto :goto_1c

    :cond_1b
    move v4, v1

    .line 1542
    :goto_1c
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1541
    invoke-virtual {v2, v3, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    if-nez p1, :cond_34

    if-eqz p2, :cond_2e

    .line 1545
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->registerDexBlocker()V

    .line 1546
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->setHomeAndRecentKey(Z)V

    goto :goto_34

    .line 1548
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->unRegisterDexBlocker()V

    .line 1549
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->setHomeAndRecentKey(Z)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_34} :catch_35

    :cond_34
    :goto_34
    move v1, v0

    :catch_35
    return v1
.end method

.method public setExternalStorageEncryption(Lcom/samsung/android/knox/ContextInfo;Z)V
    .registers 13

    const-string v0, "SecurityPolicy"

    .line 899
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 900
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 902
    :try_start_9
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    move-result-object p0

    .line 903
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->isEncryptionFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_30

    if-nez p2, :cond_26

    .line 904
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->getRequireStorageCardEncryption()Z

    move-result v3

    if-eqz v3, :cond_26

    const-string p0, "SD Encryption enabled by some other admin cannot decrypt"

    .line 905
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_22} :catch_5f
    .catchall {:try_start_9 .. :try_end_22} :catchall_5d

    .line 933
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_26
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2d

    .line 909
    :try_start_29
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->enableStorageCardEncryptionPolicy()I

    goto :goto_30

    .line 911
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->disableStorageCardEncryptionPolicy()I

    :cond_30
    :goto_30
    if-eqz p2, :cond_65

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 926
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "SecurityPolicy"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Admin "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " has requested encryption of external storage"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 928
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 925
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_5c} :catch_5f
    .catchall {:try_start_29 .. :try_end_5c} :catchall_5d

    goto :goto_65

    :catchall_5d
    move-exception p0

    goto :goto_69

    :catch_5f
    :try_start_5f
    const-string/jumbo p0, "is External Storage Encrypted?"

    .line 931
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_5d

    .line 933
    :cond_65
    :goto_65
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_69
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 934
    throw p0
.end method

.method public final setHomeAndRecentKey(Z)V
    .registers 7

    const-string v0, "SecurityPolicy"

    .line 2446
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2448
    :try_start_6
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v3, :cond_10

    .line 2449
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 2452
    :cond_10
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v3, :cond_24

    if-nez p1, :cond_1e

    const/high16 p1, 0x1200000

    .line 2454
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mToken:Landroid/os/IBinder;

    invoke-interface {v3, p1, v4, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_24

    :cond_1e
    const/4 p1, 0x0

    .line 2456
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mToken:Landroid/os/IBinder;

    invoke-interface {v3, p1, v4, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 2459
    :cond_24
    :goto_24
    iget-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

    if-nez p1, :cond_2f

    const-string/jumbo p0, "mKeyCodeMediator must not be null! This will cause problems on hardware key restriction."

    .line 2460
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_2f
    const/4 v3, 0x3

    .line 2462
    invoke-interface {p1, v3}, Lcom/android/server/enterprise/common/KeyCodeMediator;->update(I)Z

    .line 2463
    iget-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

    const/16 v3, 0x3e9

    invoke-interface {p1, v3}, Lcom/android/server/enterprise/common/KeyCodeMediator;->update(I)Z

    .line 2464
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

    const/16 p1, 0xbb

    invoke-interface {p0, p1}, Lcom/android/server/enterprise/common/KeyCodeMediator;->update(I)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_41} :catch_42

    goto :goto_48

    :catch_42
    const-string/jumbo p0, "setHomeAndRecentKey was failed"

    .line 2467
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    :goto_48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public setInternalStorageEncryption(Lcom/samsung/android/knox/ContextInfo;Z)V
    .registers 13

    const-string v0, "SecurityPolicy"

    .line 849
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 850
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    if-nez v1, :cond_a

    return-void

    .line 852
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 854
    :try_start_e
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    .line 855
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    if-nez p2, :cond_2a

    const/4 v4, 0x0

    .line 856
    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const-string p0, "SD Encryption enabled by some other admin cannot decrypt"

    .line 857
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_26} :catch_aa
    .catchall {:try_start_e .. :try_end_26} :catchall_a8

    .line 888
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2a
    if-nez p2, :cond_3c

    .line 860
    :try_start_2c
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isInternalStorageEncrypted(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string/jumbo p0, "setInternalStorageEncryption : Not encrypted"

    .line 861
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_38} :catch_aa
    .catchall {:try_start_2c .. :try_end_38} :catchall_a8

    .line 888
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_3c
    if-eqz p2, :cond_4e

    .line 864
    :try_start_3e
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isInternalStorageEncrypted(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_4e

    const-string/jumbo p0, "setInternalStorageEncryption : device is already encrypted"

    .line 865
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4a} :catch_aa
    .catchall {:try_start_3e .. :try_end_4a} :catchall_a8

    .line 888
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_4e
    :try_start_4e
    const-string/jumbo v3, "setInternalStorageEncryption : Launching Encrption activity"

    .line 868
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_b0

    .line 871
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isInternalStorageEncryptedbyDefaultKey(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    const/high16 v3, 0x10000000

    if-eqz p2, :cond_6e

    .line 872
    new-instance p2, Landroid/content/Intent;

    const-string v4, "android.app.action.START_CRYPT_INTERSTITIAL"

    invoke-direct {p2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 873
    invoke-virtual {p2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 874
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_7d

    .line 876
    :cond_6e
    new-instance p2, Landroid/content/Intent;

    const-string v4, "android.app.action.START_ENCRYPTION"

    invoke-direct {p2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 877
    invoke-virtual {p2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 878
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_7d
    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 881
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "SecurityPolicy"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Admin "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " has requested encryption of internal storage"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 883
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 880
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_a7} :catch_aa
    .catchall {:try_start_4e .. :try_end_a7} :catchall_a8

    goto :goto_b0

    :catchall_a8
    move-exception p0

    goto :goto_b4

    :catch_aa
    :try_start_aa
    const-string/jumbo p0, "is Internal Storage Encrypted?"

    .line 886
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_aa .. :try_end_b0} :catchall_a8

    .line 888
    :cond_b0
    :goto_b0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_b4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 889
    throw p0
.end method

.method public setMediator(Lcom/android/server/enterprise/common/KeyCodeMediator;)V
    .registers 3

    .line 2078
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

    if-nez v0, :cond_9

    .line 2079
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

    .line 2080
    invoke-interface {p1, p0}, Lcom/android/server/enterprise/common/KeyCodeMediator;->registerCallback(Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;)V

    :cond_9
    return-void
.end method

.method public setRequireDeviceEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Z)V
    .registers 6

    .line 987
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 988
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 991
    :try_start_7
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string p1, "device_policy"

    .line 992
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 993
    invoke-virtual {p0, p2, p3}, Landroid/app/admin/DevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_1a
    .catchall {:try_start_7 .. :try_end_14} :catchall_18

    .line 998
    :goto_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3a

    :catchall_18
    move-exception p0

    goto :goto_3b

    :catch_1a
    move-exception p0

    :try_start_1b
    const-string p1, "SecurityPolicy"

    .line 995
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setRequireDeviceEncryption Ex"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_1b .. :try_end_39} :catchall_18

    goto :goto_14

    :goto_3a
    return-void

    .line 998
    :goto_3b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 999
    throw p0
.end method

.method public setRequireStorageCardEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Z)V
    .registers 7

    .line 1017
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1018
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1021
    :try_start_7
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    .line 1022
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 1023
    iget-boolean p1, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    invoke-virtual {p0, p2, p3, p1}, Landroid/app/admin/DevicePolicyManager;->semSetRequireStorageCardEncryption(Landroid/content/ComponentName;ZZ)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_1c
    .catchall {:try_start_7 .. :try_end_16} :catchall_1a

    .line 1028
    :goto_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3c

    :catchall_1a
    move-exception p0

    goto :goto_3d

    :catch_1c
    move-exception p0

    :try_start_1d
    const-string p1, "SecurityPolicy"

    .line 1025
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setRequireStorageCardEncryption Ex"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_1d .. :try_end_3b} :catchall_1a

    goto :goto_16

    :goto_3c
    return-void

    .line 1028
    :goto_3d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1029
    throw p0
.end method

.method public startBannerService(I)Z
    .registers 7

    .line 495
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    const/4 v1, 0x0

    const-string v2, "SecurityPolicy"

    if-eqz v0, :cond_25

    .line 496
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_2b

    if-eqz p1, :cond_2b

    .line 497
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "startBannerService() emergency mode on and user not owner :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_25
    const-string/jumbo v0, "startBannerService() emergency service is null"

    .line 502
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    if-eqz p1, :cond_39

    .line 506
    sget-object v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBannerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 507
    :cond_39
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.MAIN"

    .line 508
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.LAUNCHER"

    .line 509
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.mdm"

    const-string v4, "com.samsung.android.mdm.DodBanner"

    .line 510
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_5e

    const/4 p0, 0x1

    move v1, p0

    :cond_5e
    if-nez v1, :cond_7d

    .line 514
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "startBannerService() failed. userId = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ret = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    return v1
.end method

.method public stopBannerService(I)Z
    .registers 5

    .line 520
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.mdm"

    const-string v2, "com.samsung.android.mdm.DodBanner"

    .line 521
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_38

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopBannerService() failed. userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ret = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecurityPolicy"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return p0
.end method

.method public systemReady()V
    .registers 2

    const-string p0, "SecurityPolicy"

    const-string/jumbo v0, "systemReady()"

    .line 2006
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final unRegisterDexBlocker()V
    .registers 6

    const-string v0, "SecurityPolicy"

    .line 2424
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2426
    :try_start_6
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "desktopmode"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 2427
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    invoke-virtual {v3, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    const-string p0, "DexBlocker was unregistered"

    .line 2428
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1e} :catch_1f

    goto :goto_24

    :catch_1f
    const-string p0, "DexBlocker was failed"

    .line 2430
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    :goto_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final validateKeystoreParam(I)Z
    .registers 3

    and-int/lit8 p0, p1, 0x7

    const/4 v0, 0x0

    if-nez p0, :cond_6

    goto :goto_c

    :cond_6
    const/4 p0, 0x7

    or-int/2addr p1, p0

    if-eq p1, p0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public final validatePackageName(Ljava/lang/String;)Z
    .registers 7

    .line 2271
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_5c

    const-string p0, "*"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_5c

    :cond_10
    const-string p0, "\\."

    .line 2275
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    move v1, v0

    move v2, v1

    .line 2277
    :goto_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2b

    .line 2278
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_28

    add-int/lit8 v2, v2, 0x1

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 2286
    :cond_2b
    array-length p1, p0

    if-lt v2, p1, :cond_2f

    return v0

    .line 2297
    :cond_2f
    array-length p1, p0

    move v1, v0

    :goto_31
    if-ge v1, p1, :cond_5a

    aget-object v2, p0, v1

    const-string v3, "^[A-Za-z0-9_]+$"

    .line 2298
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_59

    .line 2299
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_56

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-gt v2, v3, :cond_56

    goto :goto_59

    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_59
    :goto_59
    return v0

    :cond_5a
    const/4 p0, 0x1

    return p0

    :cond_5c
    :goto_5c
    return v0
.end method

.method public wipeDevice(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 3

    .line 1380
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/4 p0, 0x1

    return p0
.end method
