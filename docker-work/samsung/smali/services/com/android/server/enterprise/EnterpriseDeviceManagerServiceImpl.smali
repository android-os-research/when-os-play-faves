.class public Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
.super Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
.source "EnterpriseDeviceManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;,
        Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$InternalHandler;,
        Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;,
        Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;
    }
.end annotation


# static fields
.field public static final ACTION_KES_TRIGGER:Ljava/lang/String; = "com.samsung.android.knox.intent.action.KES_TRIGGER"

.field public static final ANDROID_API_LEVEL:Ljava/lang/String; = "PlatformSdkApiLevel"

.field public static final AVRCP_RESTRICTION_INTENT:I = 0x3

.field public static final BULK_ENROLL_DATA_FILE:Ljava/lang/String; = "BulkEnrollmentProfile"

.field public static final CAMERA_RESTRICTION_INTENT:I = 0x1

.field public static final CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DAI_CLIENT_PKG_NAME:Ljava/lang/String; = "com.samsung.android.knox.dai"

.field public static final EAS_PKG_NAME:Ljava/lang/String; = "com.android.exchange"

.field public static final EMAIL_PKG_NAME:Ljava/lang/String; = "com.android.email"

.field public static final EXCLUDED_ADMINS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KCTS_CLIENT:Ljava/lang/String; = "com.samsung.android.knoxcts.test"

.field public static final KC_CLIENT_PKG_NAME:Ljava/lang/String; = "com.sec.knox.kccagent"

.field public static final KG_PKG_NAME:Ljava/lang/String; = "com.samsung.android.kgclient"

.field public static final KNOXAI_FRAMEWORK_NAME:Ljava/lang/String; = "com.samsung.android.app.kfa"

.field public static final KNOX_CAPTURE_PKG_NAME:Ljava/lang/String; = "com.samsung.android.app.smartscan"

.field public static final KPECORE_PKG_NAME:Ljava/lang/String; = "com.samsung.android.knox.kpecore"

.field public static final MIC_RESTRICTION_INTENT:I = 0x2

.field public static final MY_PID:I

.field public static final NON_MDM_ADMINS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERIPHERAL_FRAMEWORK_NAME:Ljava/lang/String; = "com.samsung.android.peripheral.framework"

.field public static final PERMISSION_KNOX_ACTIVATE_DEVICE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS_INTERNAL"

.field public static final PERMISSION_KNOX_PROXY_ADMIN_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

.field public static final PERMISSION_KNOX_SILENT_ACTIVATION_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SILENT_ACTIVATION_INTERNAL"

.field public static final PERMISSION_MARK_DEVICE_ORGANIZATION_OWNED:Ljava/lang/String; = "android.permission.MARK_DEVICE_ORGANIZATION_OWNED"

.field public static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "android.uid.system:1000"

.field public static final TAG:Ljava/lang/String; = "EnterpriseDeviceManagerService"

.field public static final UMC_DATA_PATH:Ljava/lang/String; = "/efs/umc"

.field public static final allowToSkipRuntimePermission:[Ljava/lang/String;

.field public static final allowToUsingDirectPermissionCheckAPI:[Ljava/lang/String;

.field public static mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

.field public static mIsFirmwareUpgrade:Z

.field public static mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field public static mServiceAdditionCondition:Landroid/os/ConditionVariable;


# instance fields
.field public final mAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mAdminMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mAndroidApiLevelUpgraded:Z

.field public mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

.field public mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mDPMS:Landroid/app/admin/IDevicePolicyManager;

.field public mDeferredServicesCreated:Z

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

.field public mInternalHandler:Landroid/os/Handler;

.field public final mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

.field public final mLockDoNoUseDirectly:Ljava/lang/Object;

.field public mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;

.field public final mPMS:Landroid/content/pm/IPackageManager;

.field public mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

.field public mPseudoAdminUid:I

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field public mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

.field public mSystemUIAdapter:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

.field public mUwbManagerAdapter:Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;

.field public mWindowManagerAdapter:Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;


# direct methods
.method public static synthetic $r8$lambda$EoYR_24TnHAfwWxVyQxg2-Q4mps(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->lambda$startDeferredServicesIfNeeded$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$hZf3qqSjpeZ_UBdQrpGlw9NbboU(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->lambda$systemReady$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$w7jxUgmsAOtz5rfvnEihLhUknnw(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->lambda$startDualDARServices$2()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmPersonaManagerAdapter(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcleanGenericTableOnUserRemoved(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->cleanGenericTableOnUserRemoved(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misFirmwareChanged(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isFirmwareChanged()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monStartUser(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->onStartUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterBroadcastReceiver(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->registerBroadcastReceiver()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveActiveAdminDelayed(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;Landroid/content/ComponentName;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremovePseudoAdmin(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removePseudoAdmin()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msystemReady(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->systemReady(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateCurrentUser(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->updateCurrentUser()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetmInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 8

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->NON_MDM_ADMINS:Ljava/util/List;

    const/4 v2, 0x0

    .line 283
    sput-boolean v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mIsFirmwareUpgrade:Z

    const-string v3, "com.samsung.android.app.smartscan"

    const-string v4, "com.samsung.android.knox.dai"

    const-string v5, "com.samsung.android.knox.kpu"

    const-string v6, "com.sec.knox.kccagent"

    const-string v7, "com.samsung.android.knoxcts.test"

    .line 291
    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->allowToSkipRuntimePermission:[Ljava/lang/String;

    const-string v3, "com.samsung.android.knox.kpecore"

    const-string v4, "com.samsung.android.peripheral.framework"

    const-string v5, "com.samsung.android.app.kfa"

    .line 298
    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->allowToUsingDirectPermissionCheckAPI:[Ljava/lang/String;

    const-string v3, "com.samsung.android.email.provider"

    .line 395
    invoke-static {v3, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v2

    const-string v4, "com.android.exchange"

    const-string v5, "com.android.email"

    if-eqz v2, :cond_3d

    .line 396
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 398
    :cond_3d
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_43
    const-string v2, "com.sec.esdk.elm"

    .line 401
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "ro.csc.country_code"

    const-string v6, ""

    .line 402
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "com.samsung.android.kgclient"

    if-eqz v2, :cond_60

    const-string v7, "China"

    .line 403
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 404
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_60
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.nttdocomo.android.wipe"

    .line 415
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.nttdocomo.android.remotelock"

    .line 416
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms"

    .line 417
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    .line 425
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->MY_PID:I

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    const-string v1, "com.samsung.android.knox.permission.KNOX_WIFI"

    .line 457
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    .line 458
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 2320
    new-instance v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;)V
    .registers 6

    .line 2323
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>()V

    .line 284
    new-instance v0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    invoke-direct {v0}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    const/4 v0, -0x1

    .line 286
    iput v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mCurrentUserId:I

    const/16 v1, 0x9

    const/4 v2, 0x1

    .line 288
    invoke-static {v1, v2}, Lcom/android/server/LockGuard;->installNewLock(IZ)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mLockDoNoUseDirectly:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 303
    iput-boolean v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAndroidApiLevelUpgraded:Z

    .line 423
    iput-boolean v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDeferredServicesCreated:Z

    const/4 v1, 0x0

    .line 443
    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 448
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 449
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 451
    iput v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 599
    new-instance v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2324
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 2325
    sput-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 2326
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->setEdmsInstance(Ljava/lang/Object;)V

    .line 2327
    iget-object v0, p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2328
    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getPackageManagerInstance()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPMS:Landroid/content/pm/IPackageManager;

    .line 2329
    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getDpmInstance()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 2332
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->registerAdaptors()V

    .line 2334
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->handleDowngrade()V

    .line 2336
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->registerBroadcastReceiver()V

    .line 2338
    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2342
    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->isFirmwareChanged()Z

    move-result v1

    if-eqz v1, :cond_8a

    const-string v1, "EnterpriseDeviceManagerService"

    const-string/jumbo v3, "handleUpgrade: Checking Upgrade..."

    .line 2343
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    sput-boolean v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mIsFirmwareUpgrade:Z

    .line 2345
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->handleFirmwareUpgrade()V

    .line 2346
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->sendMigrationIntent(Z)V

    const-string/jumbo v1, "ro.build.fingerprint"

    const-string/jumbo v2, "unknown"

    .line 2348
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2349
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 2350
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PlatformSoftwareVersion"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->setDatabaseUpgradeValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2354
    :cond_8a
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->updateDbForAndroidApiLevel()V

    .line 2376
    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getEnterpriseLicenseService()Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object v1

    const-string v2, "enterprise_license_policy"

    invoke-virtual {p1, v2, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addLazySystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2378
    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v1

    const-string v2, "application_policy"

    invoke-virtual {p1, v2, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2380
    new-instance v1, Lcom/android/server/enterprise/profile/ProfilePolicyService;

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/profile/ProfilePolicyService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "profilepolicy"

    invoke-virtual {p1, v2, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2382
    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getWifiPolicy()Lcom/android/server/enterprise/wifi/WifiPolicy;

    move-result-object v1

    const-string/jumbo v2, "wifi_policy"

    invoke-static {v2, v1}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2385
    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getPhoneRestrictionPolicy()Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    move-result-object v1

    const-string/jumbo v2, "phone_restriction_policy"

    .line 2384
    invoke-static {v2, v1}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2387
    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getRemoteInjectionService()Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    move-result-object v1

    const-string/jumbo v2, "remoteinjection"

    invoke-virtual {p1, v2, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addLazySystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2389
    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getRestrictionPolicy()Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    move-result-object v1

    const-string/jumbo v2, "restriction_policy"

    invoke-virtual {p1, v2, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2391
    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getPasswordPolicy()Lcom/android/server/enterprise/security/PasswordPolicy;

    move-result-object v1

    const-string/jumbo v2, "password_policy"

    invoke-virtual {p1, v2, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addLazySystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2393
    new-instance v1, Lcom/android/server/enterprise/EDMProxyService;

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/EDMProxyService;-><init>(Landroid/content/Context;)V

    const-string v2, "edm_proxy"

    invoke-virtual {p1, v2, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->serviceManagerAddService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2399
    invoke-static {v0}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->addService(Landroid/content/Context;)V

    .line 2401
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setMediators()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .registers 1

    .line 2177
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    return-object v0
.end method

.method public static isPackageInstalled(Ljava/lang/String;I)Z
    .registers 9

    const-string v0, "EnterpriseDeviceManagerService"

    .line 3732
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_58

    .line 3734
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    .line 3736
    :try_start_f
    invoke-interface {v1, p0, v5, v6, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 3738
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isPackageInstalled() : package present. application : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2a} :catch_4a
    .catchall {:try_start_f .. :try_end_2a} :catchall_48

    const/4 p0, 0x1

    .line 3747
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 3741
    :cond_2f
    :try_start_2f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isPackageInstalled() : package is not present. application : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_44} :catch_4a
    .catchall {:try_start_2f .. :try_end_44} :catchall_48

    .line 3747
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_48
    move-exception p0

    goto :goto_54

    :catch_4a
    move-exception p0

    :try_start_4b
    const-string p1, "Exception in isPackageInstalled()"

    .line 3745
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_48

    .line 3747
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_58

    :goto_54
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3748
    throw p0

    :cond_58
    :goto_58
    return v2
.end method

.method private synthetic lambda$startDeferredServicesIfNeeded$1()V
    .registers 4

    .line 2814
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->createDeferredServices()V

    .line 2816
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2817
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "edm.intent.action.ACTION_EDM_BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2819
    sget-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method private synthetic lambda$startDualDARServices$2()V
    .registers 4

    .line 2839
    new-instance v0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;-><init>(Landroid/content/Context;)V

    .line 2841
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string/jumbo v2, "knox_adapter_service"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2842
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->invokeSystemReadyIfNeeded(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 2845
    new-instance v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;-><init>(Landroid/content/Context;)V

    .line 2846
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v2, "DualDARPolicy"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2847
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->invokeSystemReadyIfNeeded(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 2849
    sget-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method private synthetic lambda$systemReady$0()V
    .registers 1

    .line 2102
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    invoke-virtual {p0}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->onSystemReady()V

    return-void
.end method

.method private registerAdaptors()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2432
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getSystemUIAdapterInstance()Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mSystemUIAdapter:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 2433
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getPackageManagerAdapterInstance()Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 2434
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getStorageManagerAdapterInstance()Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 2435
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getWindowManagerAdapterInstance()Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mWindowManagerAdapter:Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    .line 2436
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getPersonaManagerAdapterInstance()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 2438
    const-class v0, Lcom/android/server/enterprise/adapter/ISystemUIAdapter;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mSystemUIAdapter:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->registerAdapter(Ljava/lang/Class;Lcom/android/server/enterprise/adapter/IAdapterHandle;)V

    .line 2439
    const-class v0, Lcom/android/server/enterprise/adapter/IPackageManagerAdapter;

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->registerAdapter(Ljava/lang/Class;Lcom/android/server/enterprise/adapter/IAdapterHandle;)V

    .line 2440
    const-class v0, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->registerAdapter(Ljava/lang/Class;Lcom/android/server/enterprise/adapter/IAdapterHandle;)V

    .line 2441
    const-class v0, Lcom/android/server/enterprise/adapter/IWindowManagerAdapter;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mWindowManagerAdapter:Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->registerAdapter(Ljava/lang/Class;Lcom/android/server/enterprise/adapter/IAdapterHandle;)V

    .line 2442
    const-class v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->registerAdapter(Ljava/lang/Class;Lcom/android/server/enterprise/adapter/IAdapterHandle;)V

    .line 2444
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isUwbSupported()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 2445
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mUwbManagerAdapter:Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;

    .line 2446
    const-class p0, Lcom/android/server/enterprise/adapter/IUwbManagerAdapter;

    invoke-static {p0, v0}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->registerAdapter(Ljava/lang/Class;Lcom/android/server/enterprise/adapter/IAdapterHandle;)V

    :cond_5e
    return-void
.end method

.method private static native startRemoteDesktopService()V
.end method


# virtual methods
.method public final activateAdmin(Landroid/content/ComponentName;Z)V
    .registers 16

    .line 1284
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->userHandleGetCallingUserId()I

    move-result v0

    const-string v1, "EnterpriseDeviceManagerService"

    .line 1285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activating admin on user!!!!!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v1

    if-eqz v1, :cond_208

    const-string/jumbo v2, "restriction_policy"

    .line 1291
    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v2, :cond_40

    .line 1292
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->checkAdminActivationEnabled(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    goto :goto_40

    .line 1293
    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Admin cannot be activated"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    :goto_40
    const-string/jumbo v2, "ro.product.first_api_level"

    const/4 v3, 0x0

    .line 1297
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v4, 0x1e

    if-lt v2, v4, :cond_58

    const-string v2, "com.samsung.android.kgclient"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1298
    :cond_58
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->adjustKnoxGuardAdmin()V

    .line 1301
    :cond_5b
    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v2

    if-eqz v2, :cond_70

    sget-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 1302
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->startDeferredServicesIfNeeded()V

    .line 1305
    :cond_70
    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1306
    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    const-string v5, "EnterpriseDeviceManagerService"

    .line 1307
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Component name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    const/4 v7, 0x2

    .line 1316
    :try_start_9f
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_9f .. :try_end_a4} :catch_1fc
    .catchall {:try_start_9f .. :try_end_a4} :catchall_1fa

    if-nez p2, :cond_bc

    .line 1317
    :try_start_a6
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {p0, v4, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v9

    if-nez v9, :cond_b1

    goto :goto_bc

    .line 1318
    :cond_b1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Admin is already added"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_b9
    move-exception p0

    goto/16 :goto_1f8

    :cond_bc
    :goto_bc
    const/4 v9, 0x1

    if-nez p2, :cond_f3

    const-string v10, "EnterpriseDeviceManagerService"

    .line 1321
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Adding admin "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " to lists"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1326
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v2, v4, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addorUpdateAdmin(ILjava/lang/String;ZI)Z

    move-result v4

    goto :goto_f4

    :cond_f3
    move v4, v9

    :goto_f4
    if-eqz v4, :cond_1c7

    .line 1336
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_102
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_118

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1337
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v4, v2}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminAdded(I)V

    goto :goto_102

    .line 1339
    :cond_118
    monitor-exit v8
    :try_end_119
    .catchall {:try_start_a6 .. :try_end_119} :catchall_b9

    move v1, v9

    :goto_11a
    if-gt v1, v7, :cond_175

    :try_start_11c
    const-string v4, "EnterpriseDeviceManagerService"

    .line 1346
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attempt "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to active admin in DPM"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p1, p2, v0}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 1348
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p1, v0}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v4

    if-eqz v4, :cond_15c

    const-string p2, "EnterpriseDeviceManagerService"

    .line 1349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Admin sucessfully activated in DPM for user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v9

    goto :goto_175

    :cond_15c
    const-string v4, "EnterpriseDeviceManagerService"

    .line 1353
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin activation failed for user "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_11a

    :cond_175
    :goto_175
    const-string p2, "EnterpriseDeviceManagerService"

    .line 1356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EDM setActiveAdmin activationStatus -"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " for user - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_19d

    const-string p0, "EnterpriseDeviceManagerService"

    const-string p1, "Admin added to DPM!"

    .line 1363
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_200

    :cond_19d
    const-string p2, "EnterpriseDeviceManagerService"

    const-string v1, "Started removing admin information..."

    .line 1358
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v9, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 1360
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 1361
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "EDM - Admin activation failed for user -"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1c7
    .catch Landroid/os/RemoteException; {:try_start_11c .. :try_end_1c7} :catch_1fc
    .catchall {:try_start_11c .. :try_end_1c7} :catchall_1fa

    :cond_1c7
    :try_start_1c7
    const-string p1, "EnterpriseDeviceManagerService"

    .line 1330
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removing admin "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " from lists"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1332
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to activate admin"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1339
    :goto_1f8
    monitor-exit v8
    :try_end_1f9
    .catchall {:try_start_1c7 .. :try_end_1f9} :catchall_b9

    :try_start_1f9
    throw p0
    :try_end_1fa
    .catch Landroid/os/RemoteException; {:try_start_1f9 .. :try_end_1fa} :catch_1fc
    .catchall {:try_start_1f9 .. :try_end_1fa} :catchall_1fa

    :catchall_1fa
    move-exception p0

    goto :goto_204

    :catch_1fc
    move-exception p0

    .line 1365
    :try_start_1fd
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_200
    .catchall {:try_start_1fd .. :try_end_200} :catchall_1fa

    .line 1367
    :goto_200
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_204
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1368
    throw p0

    .line 1289
    :cond_208
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad admin: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public activateDevicePermissions(Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 3353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.samsung.android.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS_INTERNAL"

    .line 3354
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 3355
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 3357
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3359
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 3365
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_100

    .line 3370
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    if-eqz p0, :cond_f8

    .line 3371
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "EnterpriseDeviceManagerService"

    if-nez v2, :cond_4e

    .line 3373
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "failed due to abnormal admin information: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 3376
    :cond_4e
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3377
    sget-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v2, v0, v5}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 3378
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "failed due to application is installed in device as user:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 3382
    :cond_77
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3384
    sget-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7b

    .line 3385
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "This permission cannot be set on device level from the container: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_a4
    const-string v0, "com.samsung.android.knox.permission.KNOX_SECURITY"

    .line 3390
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    const/4 v0, 0x7

    .line 3392
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    move-result v1

    if-eqz v1, :cond_d0

    const-string v1, "encrypted-storage"

    .line 3393
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add device permission: encrypted-storage, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3395
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3394
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d0
    const/16 v0, 0x14

    .line 3397
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    move-result v1

    if-eqz v1, :cond_f6

    const-string/jumbo v1, "require-storagecard-encryption"

    .line 3398
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3399
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add device permission: require-storagecard-encryption, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3400
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3399
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f6
    const/4 p0, 0x1

    return p0

    .line 3417
    :cond_f8
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No active admin"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3366
    :cond_100
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Admin already present and active"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addAuthorizedUid(II)Z
    .registers 5

    const-string v0, "EnterpriseDeviceManagerService"

    const-string v1, "addAuthorizedUid"

    .line 3495
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3496
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3497
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceUMCSignature()V

    .line 3498
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3499
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "adminUid"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3500
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "authorizedUid"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3501
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "ADMIN_UID_AUTHORIZATION_INFO"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    return p0

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method public addPseudoAdminForParent(I)I
    .registers 11

    const-string v0, "EnterpriseDeviceManagerService"

    .line 4073
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4074
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_12

    .line 4075
    sget v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->MY_PID:I

    if-eq v2, v1, :cond_1c

    :cond_12
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MARK_DEVICE_ORGANIZATION_OWNED"

    .line 4076
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_85

    .line 4082
    :cond_1c
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_74

    .line 4083
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getOrganizationOwnedProfileUserId()I

    move-result v1

    if-eq v1, p1, :cond_2c

    goto :goto_74

    .line 4089
    :cond_2c
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result p1

    .line 4090
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 4093
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 4097
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4098
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v4, v1

    .line 4097
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addorUpdateAdminWithPseudo(ILjava/lang/String;ZIZ)Z

    move-result v2

    :cond_4c
    if-eqz v2, :cond_7e

    .line 4104
    new-instance p1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    const/4 v2, 0x1

    invoke-direct {p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;-><init>(Z)V

    .line 4105
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4106
    iput v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 4107
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "addPseudoAdminForParent() success with Pseudo =  "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_74
    :goto_74
    const-string p0, "addPseudoAdminForParent() returning 0.."

    .line 4084
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_79} :catch_7a

    return v2

    :catch_7a
    move-exception p0

    .line 4111
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7e
    const-string p0, "addPseudoAdminForParent() failed returning -1.."

    .line 4113
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 4077
    :cond_85
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must be a system process or have permission android.permission.MARK_DEVICE_ORGANIZATION_OWNED.."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final adjustKnoxGuardAdmin()V
    .registers 6

    .line 4000
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsKG()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a0

    :cond_e
    const-string/jumbo v0, "ro.csc.country_code"

    const-string v1, ""

    .line 4001
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a0

    const-string v1, "China"

    .line 4002
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a0

    const/4 v0, 0x0

    const-string/jumbo v1, "ro.product.first_api_level"

    .line 4003
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x1e

    const-string v2, "adjustKnoxGuardAdmin kgclient is removed from EXCLUDED_ADMINS by "

    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, "com.samsung.android.kgclient"

    if-lt v0, v1, :cond_55

    .line 4004
    sget-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 4005
    invoke-interface {p0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4006
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 4009
    :cond_55
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isKgTurnedOn()Z

    move-result p0

    if-nez p0, :cond_7f

    .line 4010
    sget-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 4011
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4012
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adjustKnoxGuardAdmin kgclient is added in EXCLUDED_ADMINS by "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 4015
    :cond_7f
    sget-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 4016
    invoke-interface {p0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4017
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a0
    :goto_a0
    return-void
.end method

.method public captureUmcLogs(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)[B
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    const-string v0, "---------------------------------------------------------------\n"

    const-string v1, "EnterpriseDeviceManagerService"

    .line 3651
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "com.samsung.android.knox.permission.KNOX_KES_INTERNAL"

    .line 3652
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3653
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 3655
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_19

    return-object v2

    .line 3659
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3661
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3662
    sget v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->MY_PID:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3664
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v5, 0x0

    .line 3668
    :try_start_36
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_3d

    return-object v2

    .line 3672
    :cond_3d
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_41
    :goto_41
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_89

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v6, :cond_41

    .line 3673
    iget-object v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {p3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 3674
    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3675
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_84} :catch_85

    goto :goto_41

    :catch_85
    move-exception p0

    .line 3679
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_89
    const-string/jumbo p0, "logcat"

    const-string p3, "-d"

    const-string v6, "-v"

    const-string/jumbo v7, "threadtime"

    .line 3682
    filled-new-array {p0, p3, v6, v7}, [Ljava/lang/String;

    move-result-object p0

    .line 3687
    :try_start_97
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    const-string/jumbo p3, "line.separator"

    .line 3690
    invoke-static {p3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 3691
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3695
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3696
    new-instance v8, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v8, v7}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3697
    new-instance v9, Ljava/util/zip/ZipEntry;

    const-string v10, "BELogs.txt"

    invoke-direct {v9, v10}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 3698
    invoke-virtual {v8, v9}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 3699
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v10, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3701
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3702
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3703
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3705
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 3706
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3707
    :cond_e4
    :goto_e4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_117

    const-string p2, " +"

    .line 3708
    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 3710
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e4

    array-length v0, p2

    const/4 v10, 0x2

    if-le v0, v10, :cond_e4

    aget-object p2, p2, v10

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e4

    .line 3711
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3712
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3713
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 3714
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_e4

    .line 3718
    :cond_117
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 3719
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 3720
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 3721
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 3722
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_127} :catch_129

    move-object v2, p0

    goto :goto_131

    :catch_129
    move-exception p0

    .line 3724
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3727
    :goto_131
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2
.end method

.method public final checkAdminExistsInELMDB(Ljava/lang/String;)Z
    .registers 8

    .line 2129
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 p0, 0x0

    :try_start_5
    const-string v2, "enterprise_license_policy"

    .line 2131
    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    if-eqz v2, :cond_2d

    .line 2133
    invoke-virtual {v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getAllLicenseInfo()[Lcom/samsung/android/knox/license/LicenseInfo;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 2135
    array-length v3, v2

    move v4, p0

    :goto_17
    if-ge v4, v3, :cond_2d

    aget-object v5, v2, v4

    .line 2136
    invoke-virtual {v5}, Lcom/samsung/android/knox/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_23} :catch_33
    .catchall {:try_start_5 .. :try_end_23} :catchall_31

    if-eqz v5, :cond_2a

    .line 2145
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_2d
    :goto_2d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4b

    :catchall_31
    move-exception p0

    goto :goto_4c

    :catch_33
    move-exception p1

    :try_start_34
    const-string v2, "EnterpriseDeviceManagerService"

    .line 2143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAdminExistsInELMDB Ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_34 .. :try_end_4a} :catchall_31

    goto :goto_2d

    :goto_4b
    return p0

    .line 2145
    :goto_4c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2146
    throw p0
.end method

.method public final checkCallerIsKG()Z
    .registers 4

    .line 3275
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3279
    :try_start_4
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.kgclient"

    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->userHandleGetCallingUserId()I

    move-result p0

    invoke-virtual {v1, v2, p0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_17

    goto :goto_1e

    :catch_17
    move-exception p0

    .line 3281
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const/4 p0, -0x1

    :goto_1e
    if-ne v0, p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public final checkCallerIsKPECore(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "com.samsung.android.knox.kpecore"

    .line 3265
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3266
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.knox.permission.KNOX_KPECORE_INTERNAL"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1f

    const-string p0, "EnterpriseDeviceManagerService"

    const-string p1, "call from kpecore"

    .line 3267
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public final checkCallerIsUMC()Z
    .registers 4

    .line 3247
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3251
    :try_start_4
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.enterprise.knox.cloudmdm.smdms"

    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->userHandleGetCallingUserId()I

    move-result p0

    invoke-virtual {v1, v2, p0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_17

    goto :goto_1e

    :catch_17
    move-exception p0

    .line 3253
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const/4 p0, -0x1

    :goto_1e
    if-ne v0, p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public final checkContainerOwnerShip(Lcom/samsung/android/knox/ContextInfo;Z)V
    .registers 5

    .line 1196
    iget-boolean v0, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-eqz v0, :cond_5

    return-void

    .line 1200
    :cond_5
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1201
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-interface {v1, v0}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-interface {v0, v1}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    if-eqz p2, :cond_21

    return-void

    .line 1207
    :cond_21
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result p0

    .line 1208
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    if-ne p0, p2, :cond_30

    return-void

    .line 1213
    :cond_30
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Admin doesn\'t own container "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ContextInfo.uid "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkContainerOwnerShipForUMC(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 5

    .line 1219
    iget-boolean v0, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-eqz v0, :cond_5

    return-void

    .line 1222
    :cond_5
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1223
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-interface {v1, v0}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-interface {v1, v2}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_1e

    return-void

    .line 1227
    :cond_1e
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-interface {v1, v2}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1228
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1230
    :cond_2a
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result p0

    .line 1232
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne p0, v1, :cond_35

    return-void

    .line 1233
    :cond_35
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Admin doesn\'t own container id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ContextInfo.uid "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkProxyAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v0, "permissions"

    .line 3308
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 3311
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3312
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "proxyUid"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3313
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PROXY_ADMIN_INFO"

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_62

    .line 3314
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_62

    .line 3315
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_86

    .line 3316
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_86

    const-string p1, ";"

    .line 3317
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3318
    new-instance p1, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3319
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_86

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 3320
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4f

    return v1

    .line 3327
    :cond_62
    :try_start_62
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_66
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_86

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 3328
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-interface {v0, p2, v3}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result p2
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_7c} :catch_7f

    if-nez p2, :cond_66

    return v1

    :catch_7f
    const-string p0, "EnterpriseDeviceManagerService"

    const-string p1, "could not check calling permission"

    .line 3332
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    return v2
.end method

.method public final cleanGenericTableOnUserRemoved(I)V
    .registers 5

    const-string/jumbo v0, "userID"

    .line 650
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 654
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 656
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "generic"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    return-void
.end method

.method public final createDeferredServices()V
    .registers 6

    const-string/jumbo v0, "phone_restriction_policy"

    const-string/jumbo v1, "wifi_policy"

    .line 2465
    iget-boolean v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDeferredServicesCreated:Z

    const-string v3, "EnterpriseDeviceManagerService"

    if-eqz v2, :cond_12

    const-string p0, "createDeferredServices() : Skip to create"

    .line 2466
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    const-string v2, "createDeferredServices() : Adding services ... "

    .line 2469
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    :try_start_17
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->wakeUpLazyServices()V

    .line 2474
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 2475
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 2474
    invoke-virtual {v2, v1, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2478
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 2479
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 2478
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2482
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v1, "device_info"

    new-instance v2, Lcom/android/server/enterprise/device/DeviceInfo;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/device/DeviceInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2484
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string/jumbo v1, "license_log_service"

    new-instance v2, Lcom/android/server/enterprise/license/LicenseLogService;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/license/LicenseLogService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2486
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v1, "auditlog"

    new-instance v2, Lcom/android/server/enterprise/auditlog/AuditLogService;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/auditlog/AuditLogService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2488
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v1, "eas_account_policy"

    new-instance v2, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2490
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v1, "email_account_policy"

    new-instance v2, Lcom/android/server/enterprise/email/EmailAccountPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/email/EmailAccountPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2492
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string/jumbo v1, "location_policy"

    new-instance v2, Lcom/android/server/enterprise/location/LocationPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/location/LocationPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2493
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string/jumbo v1, "misc_policy"

    new-instance v2, Lcom/android/server/enterprise/general/MiscPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/general/MiscPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2494
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string/jumbo v1, "vpn_policy"

    new-instance v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addLazySystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2496
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string/jumbo v1, "security_policy"

    new-instance v2, Lcom/android/server/enterprise/security/SecurityPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2497
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string/jumbo v1, "roaming_policy"

    new-instance v2, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/restriction/RoamingPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2498
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v1, "bluetooth_policy"

    new-instance v2, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2499
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v1, "email_policy"

    new-instance v2, Lcom/android/server/enterprise/email/EmailPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/email/EmailPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2500
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v1, "firewall"

    new-instance v2, Lcom/android/server/enterprise/firewall/Firewall;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/firewall/Firewall;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2501
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v1, "certificate_policy"

    new-instance v2, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2502
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v1, "apn_settings_policy"

    new-instance v2, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2504
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v1, "browser_policy"

    new-instance v2, Lcom/android/server/enterprise/browser/BrowserPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/browser/BrowserPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2506
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v1, "date_time_policy"

    new-instance v2, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/datetime/DateTimePolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2507
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string/jumbo v1, "kioskmode"

    new-instance v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2508
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string/jumbo v1, "ldap_account_policy"

    new-instance v2, Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2509
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string/jumbo v1, "lockscreen_overlay"

    new-instance v2, Lcom/android/server/enterprise/lso/LSOService;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/lso/LSOService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2510
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v1, "geofencing"

    new-instance v2, Lcom/android/server/enterprise/geofencing/GeofenceService;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2511
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v1, "device_account_policy"

    new-instance v2, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2513
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string/jumbo v1, "multi_user_manager_service"

    new-instance v2, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2530
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->createInstance(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 2531
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    .line 2533
    invoke-virtual {v0}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1b7

    .line 2534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThreatDefenseService - knoxSdkVersion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string/jumbo v1, "threat_defense_service"

    new-instance v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2539
    :cond_1b7
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string/jumbo v1, "knoxnap"

    new-instance v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addLazySystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2555
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/plm/ProcessLifecycleManager;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/plm/StartReason;->EDM_SERVICE_READY:Lcom/android/server/enterprise/plm/StartReason;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->start(Lcom/android/server/enterprise/plm/StartReason;)V
    :try_end_1d1
    .catchall {:try_start_17 .. :try_end_1d1} :catchall_1d2

    goto :goto_1ea

    :catchall_1d2
    move-exception v0

    .line 2558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addServices() : Failure creating Policy services"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1ea
    const/4 v0, 0x1

    .line 2562
    iput-boolean v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDeferredServicesCreated:Z

    .line 2563
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setMediators()V

    .line 2564
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->invokeSystemReadyIfNeeded()V

    .line 2565
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->registerDeferredBroadcastReceiver()V

    return-void
.end method

.method public final deviceOwnerExists()Z
    .registers 2

    .line 2107
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 2108
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_19

    const-string p0, "EnterpriseDeviceManagerService"

    const-string v0, "deviceOwnerExists."

    .line 2109
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public disableConstrainedState(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 3443
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedState(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 3755
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_10

    const-string p0, "Permission Denial: can\'t dump Enterprise Device Manager Service"

    .line 3757
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 3760
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "EnterpriseDeviceManagerService Knox Info:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 3761
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->showKnoxVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 3762
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "EnterpriseDeviceManagerService SystemUIAdapter Info:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 3763
    iget p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mCurrentUserId:I

    iget-object p3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getAdapterId()I

    move-result p3

    if-eq p1, p3, :cond_73

    .line 3764
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "mCurrentUserId : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mCurrentUserId:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 3767
    :cond_73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SystemUIAdapter adapterId : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getAdapterId()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 3768
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SystemUIAdapter registered count : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getRegisteredCount()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 3769
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isKnoxStateMonitorRegistered()Z

    move-result p0

    if-nez p0, :cond_e1

    .line 3770
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "SystemUIAdapter is not registed. "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    :cond_e1
    return-void
.end method

.method public enableConstrainedState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 14

    .line 3439
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/utils/ConstrainedState;->enableConstrainedState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public enforceActiveAdminPermission(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 676
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZ)Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 682
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZ)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZ)Lcom/samsung/android/knox/ContextInfo;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZZ)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 896
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 897
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-nez p1, :cond_f

    .line 901
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 905
    :cond_f
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 908
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    if-ne v0, v4, :cond_25

    .line 909
    sget v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->MY_PID:I

    if-eq v1, v5, :cond_2f

    :cond_25
    if-eqz v3, :cond_42

    const-string v5, "android.uid.system:1000"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    :cond_2f
    if-eqz p3, :cond_41

    .line 911
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-interface {p0, p2}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result p0

    if-eqz p0, :cond_41

    .line 912
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p0

    :cond_41
    return-object p1

    .line 917
    :cond_42
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-interface {v5, v1}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isContainerService(I)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 918
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p0

    .line 923
    :cond_50
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isCallerValidKPU(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v3, :cond_69

    .line 926
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsKPECore(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 927
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const p2, 0x186a0

    mul-int/2addr p1, p2

    add-int/2addr p1, v4

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p0

    :cond_69
    if-eqz p4, :cond_91

    .line 931
    iget-object p4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    if-eqz p4, :cond_7a

    goto :goto_91

    .line 934
    :cond_7a
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No active admin owned by uid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 939
    :cond_91
    :goto_91
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    move-result p4

    const/4 v3, 0x1

    if-eqz p4, :cond_c1

    .line 941
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceUMCSignature()V

    if-eqz p3, :cond_a0

    .line 945
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkContainerOwnerShipForUMC(Lcom/samsung/android/knox/ContextInfo;)V

    :cond_a0
    if-eqz p2, :cond_c1

    .line 947
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_c1

    .line 948
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkProxyAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p4

    if-ne p4, v3, :cond_c1

    if-eqz p3, :cond_c0

    .line 949
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-interface {p0, p2}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result p0

    if-eqz p0, :cond_c0

    .line 950
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p0

    :cond_c0
    return-object p1

    :cond_c1
    if-nez v1, :cond_f5

    .line 961
    iget p4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq p4, v0, :cond_f5

    .line 962
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getAuthorizedAdminUid(I)I

    move-result p4

    .line 963
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v4, p4, :cond_f5

    if-eqz p3, :cond_d4

    .line 966
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkContainerOwnerShipForUMC(Lcom/samsung/android/knox/ContextInfo;)V

    :cond_d4
    if-eqz p2, :cond_f5

    .line 969
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_f5

    .line 970
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkProxyAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p4

    if-ne p4, v3, :cond_f5

    if-eqz p3, :cond_f4

    .line 971
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-interface {p0, p2}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result p0

    if-eqz p0, :cond_f4

    .line 972
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p0

    :cond_f4
    return-object p1

    :cond_f5
    if-nez v1, :cond_129

    .line 984
    iget-boolean p4, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-nez p4, :cond_129

    .line 985
    iget p4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq p4, v0, :cond_129

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v4, p4}, Lcom/android/server/enterprise/utils/Utils;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result p4

    if-ne v0, p4, :cond_108

    goto :goto_129

    .line 986
    :cond_108
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ContextInfo UID violation info is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but caller is "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_129
    :goto_129
    if-eqz p5, :cond_15d

    .line 995
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isCallerDeviceOwner()Z

    move-result p4

    if-nez p4, :cond_15d

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isProfileOwnerApp(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p4

    if-nez p4, :cond_15d

    if-nez v1, :cond_15d

    iget-boolean p4, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-eqz p4, :cond_144

    iget p4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget p5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    if-ne p4, p5, :cond_144

    goto :goto_15d

    .line 997
    :cond_144
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "caller is not DO or PO or KPU: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15d
    :goto_15d
    if-eqz p3, :cond_162

    .line 1006
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkContainerOwnerShip(Lcom/samsung/android/knox/ContextInfo;Z)V

    :cond_162
    const/4 p4, 0x0

    const-string p5, "EnterpriseDeviceManagerService"

    if-eqz p2, :cond_189

    .line 1013
    :try_start_167
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_189

    .line 1014
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_171
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_189

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1015
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_183} :catch_187

    if-nez v5, :cond_171

    move v4, v3

    goto :goto_18a

    :catch_187
    move v4, p4

    goto :goto_1a0

    :cond_189
    move v4, p4

    .line 1021
    :goto_18a
    :try_start_18a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "is permission granted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p5, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_19f} :catch_1a0

    goto :goto_1a5

    :catch_1a0
    :goto_1a0
    const-string v5, "could not check calling permission"

    .line 1033
    invoke-static {p5, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :goto_1a5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v4, :cond_1ef

    if-eqz p2, :cond_1d4

    .line 1038
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1d4

    .line 1039
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    :goto_1bd
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-ge v3, p0, :cond_1d4

    const-string p0, " OR "

    .line 1041
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1bd

    .line 1045
    :cond_1d4
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Admin  does not have "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1055
    :cond_1ef
    iget-boolean p2, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-eqz p2, :cond_21e

    iget p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    const/4 v4, -0x1

    if-eq p2, v4, :cond_21e

    .line 1056
    invoke-virtual {p0, v0, p4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceWpcod(IZ)V

    .line 1057
    iget p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setDelegatorAdminUid(Lcom/samsung/android/knox/ContextInfo;I)V

    .line 1058
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enforceActiveAdminPermissionByContext() - return contextInfo with PseudoUid = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    iget p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    invoke-direct {p1, p0, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(IZ)V

    return-object p1

    :cond_21e
    if-eqz p3, :cond_243

    .line 1065
    iget-object p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    iget p3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-interface {p2, p3}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result p2

    if-eqz p2, :cond_243

    if-eqz v1, :cond_23d

    .line 1067
    iget-object p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result p2

    .line 1068
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setDelegatorAdminUid(Lcom/samsung/android/knox/ContextInfo;I)V

    .line 1069
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p0

    .line 1071
    :cond_23d
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p0

    :cond_243
    if-eqz v1, :cond_258

    .line 1073
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isDelegationEnabledForDO(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    if-eqz p2, :cond_258

    .line 1074
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getDeviceOwnerUid()I

    move-result p2

    .line 1075
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setDelegatorAdminUid(Lcom/samsung/android/knox/ContextInfo;I)V

    .line 1076
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p0

    :cond_258
    const-string p0, "enforceActiveAdminDualPermission >>>"

    .line 1080
    invoke-static {p5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public final enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3904
    invoke-static {p1}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    move-result-object p0

    .line 3905
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->enforceCallingOrSelfPermissions(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    if-eqz p2, :cond_3a

    .line 664
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 665
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_3a

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne p1, v0, :cond_3a

    .line 666
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 667
    invoke-virtual {p0, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_3a

    .line 668
    :cond_1f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Component name violation "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    :goto_3a
    return-void
.end method

.method public enforceContainerOwnerShipPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 690
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZ)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public enforceDOPOPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Lcom/samsung/android/knox/ContextInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    if-eqz p2, :cond_9

    .line 1086
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isCallerDeviceOwner()Z

    move-result p2

    if-eqz p2, :cond_9

    return-object p1

    :cond_9
    if-eqz p3, :cond_12

    .line 1088
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isProfileOwnerApp(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    if-eqz p0, :cond_12

    return-object p1

    .line 1091
    :cond_12
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Your application is not DO or PO"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enforceDoPoOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 706
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZ)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public enforceKnoxV2Permission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_13

    .line 746
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 747
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 746
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v0, :cond_40

    .line 748
    :cond_13
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 750
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_30

    goto :goto_40

    .line 752
    :cond_30
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "This API is works only with managedProfile(WPC)"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 755
    :cond_38
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->hasDeviceOwner()Z

    move-result p1

    if-eqz p1, :cond_6a

    :cond_40
    :goto_40
    if-eqz p2, :cond_53

    .line 763
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 764
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    .line 765
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 763
    invoke-virtual {p0, p2, p1, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-eq p0, v0, :cond_53

    return-void

    .line 766
    :cond_53
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Application doesn\'t have this permission:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 767
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 757
    :cond_6a
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "This API is works only with managed device(DO)"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enforceKnoxV2VerifyCaller(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 773
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 774
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const-string v2, "android"

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_50

    .line 775
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 777
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->allowToUsingDirectPermissionCheckAPI:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 778
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_31

    goto :goto_50

    .line 779
    :cond_31
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "This API can be called by platform signed app only, callerUid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",packageName:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 780
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 784
    :cond_50
    :goto_50
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    .line 786
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isKpuPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7b

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->allowToSkipRuntimePermission:[Ljava/lang/String;

    .line 787
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 788
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v2, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_79

    goto :goto_7b

    :cond_79
    const/4 p0, 0x0

    goto :goto_7c

    :cond_7b
    :goto_7b
    const/4 p0, 0x1

    :goto_7c
    return p0
.end method

.method public enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 700
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceOwnerOnlyAndActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Lcom/samsung/android/knox/ContextInfo;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .line 714
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->userHandleGetCallingUserId()I

    move-result v0

    if-nez p1, :cond_11

    .line 718
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    :cond_11
    move-object v3, p1

    .line 722
    iget-boolean p1, v3, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-eqz p1, :cond_20

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p2

    move v6, p3

    .line 723
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZ)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0

    .line 726
    :cond_20
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-interface {p1, v0}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 728
    iget p1, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 730
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->verifyActivePermissions(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p2

    move v6, p3

    .line 734
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZ)Lcom/samsung/android/knox/ContextInfo;

    .line 735
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p0

    .line 731
    :cond_42
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Operation not supported, Device permission not present"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4a
    if-nez v0, :cond_62

    .line 736
    iget p1, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 737
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-nez p1, :cond_62

    iget p1, v3, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    if-gtz p1, :cond_62

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p2

    move v6, p3

    .line 741
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZ)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0

    .line 739
    :cond_62
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Operation supported only on owner space"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enforceOwnerOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 695
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceOwnerOnlyAndActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public enforceOwnerOnlySupportedOperation()V
    .registers 4

    .line 2883
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->userHandleGetCallingUserId()I

    move-result p0

    if-nez p0, :cond_9

    return-void

    .line 2885
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported on user id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", only allowed on owner."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 686
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZ)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceUMCSignature()V
    .registers 4

    .line 3294
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.cloudmdm.smdms"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 3296
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0, v0}, Lcom/android/server/enterprise/utils/Utils;->compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_29

    .line 3299
    :cond_19
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller is not real UMC. Signature Verification failed."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_21

    :catch_21
    const-string p0, "EnterpriseDeviceManagerService"

    const-string/jumbo v0, "package not found"

    .line 3302
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    return-void
.end method

.method public enforceWpcod(IZ)V
    .registers 6

    const-string v0, "EnterpriseDeviceManagerService"

    .line 4118
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne p1, v1, :cond_6e

    .line 4126
    :try_start_8
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {p1}, Landroid/app/admin/IDevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 4129
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getOrganizationOwnedProfileUserId()I

    move-result p1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne p1, v2, :cond_54

    if-nez p2, :cond_22

    const-string p0, "enforceWpcod(), caller is a valid KPU.."

    .line 4136
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4141
    :cond_22
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 4142
    iget-object p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p2

    .line 4143
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isProfileOwnerApp(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isCallerValidKPU(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    if-nez p1, :cond_4e

    if-eqz p2, :cond_46

    .line 4144
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsKPECore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_46

    goto :goto_4e

    .line 4145
    :cond_46
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller is not either organization owned PO or KSP inside org owned profile.."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    :goto_4e
    const-string p0, "enforceWpcod(), caller is a either WPCOD PO or valid KPU.."

    .line 4149
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 4130
    :cond_54
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Organization owned managed profile userId and caller userId does not match.."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4127
    :cond_5c
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Device is not organization owned managed profile.."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_64} :catch_64

    :catch_64
    move-exception p0

    const-string p1, "enforceWpcod(), failed to talk to DPMS.."

    .line 4151
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4152
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_6d
    return-void

    .line 4122
    :cond_6e
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ContextInfo UID voilation info is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but caller is "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1560
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 1563
    :try_start_5
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPMS:Landroid/content/pm/IPackageManager;

    const-wide/32 v4, 0xc8080

    invoke-interface {v3, p1, v4, v5, p2}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object p2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_17
    .catchall {:try_start_5 .. :try_end_e} :catchall_12

    .line 1572
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1b

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1573
    throw p0

    .line 1572
    :catch_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object p2, v2

    :goto_1b
    if-eqz p2, :cond_40

    .line 1598
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1600
    :try_start_21
    new-instance p1, Landroid/content/pm/ResolveInfo;

    invoke-direct {p1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1601
    iput-object p2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1602
    new-instance p2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_2f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21 .. :try_end_2f} :catch_3c
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2f} :catch_38
    .catchall {:try_start_21 .. :try_end_2f} :catchall_33

    .line 1610
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p2

    :catchall_33
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1611
    throw p0

    .line 1610
    :catch_38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catch_3c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    .line 1596
    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown admin: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getActiveAdminComponent()Landroid/content/ComponentName;
    .registers 2

    .line 1249
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    if-eqz p0, :cond_17

    .line 1251
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .registers 5

    .line 1238
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 1239
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1240
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p2, :cond_6

    .line 1241
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Admin found on user "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EnterpriseDeviceManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_49
    const/4 p0, 0x0

    return-object p0
.end method

.method public getActiveAdminPackageName(I)Ljava/lang/String;
    .registers 3

    .line 3909
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 3911
    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    if-eqz p0, :cond_27

    .line 3912
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->isPseudo()Z

    move-result p1

    if-nez p1, :cond_27

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 3913
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    return-object v0
.end method

.method public getActiveAdmins(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 1837
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 1838
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    .line 1837
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 1839
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1840
    :try_start_1a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1841
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    if-eqz v2, :cond_5b

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_5b

    .line 1843
    :cond_2a
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_30
    :goto_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    const/16 v3, -0x2710

    if-eq v3, p1, :cond_51

    const/4 v3, -0x1

    if-eq v3, p1, :cond_51

    .line 1846
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_30

    .line 1847
    :cond_51
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 1850
    :cond_59
    monitor-exit v0

    return-object v1

    .line 1842
    :cond_5b
    :goto_5b
    monitor-exit v0

    return-object v1

    :catchall_5d
    move-exception p0

    .line 1851
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_1a .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public getActiveAdminsInfo(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation

    .line 1855
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 1856
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    .line 1855
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 1857
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/16 v1, -0x2710

    if-ne p1, v1, :cond_27

    .line 1859
    :try_start_1e
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object p1

    .line 1861
    :cond_27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1862
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_32
    :goto_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 1863
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_32

    .line 1864
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 1867
    :cond_50
    monitor-exit v0

    return-object v1

    :catchall_52
    move-exception p0

    .line 1869
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_1e .. :try_end_54} :catchall_52

    throw p0
.end method

.method public getActiveSamsungAuthorizedAdmin(I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .registers 2

    .line 2668
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    if-eqz p0, :cond_15

    .line 2669
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->isAuthorized()Z

    move-result p1

    if-eqz p1, :cond_15

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAdminContextIfCallerInCertWhiteList(Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "EnterpriseDeviceManagerService"

    .line 1109
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1110
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1111
    iget-object v4, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v5, "android"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v3}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v4

    const-string v5, "adminUid"

    const-string/jumbo v7, "packageName"

    const-string/jumbo v8, "signature"

    .line 1114
    filled-new-array {v5, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    .line 1120
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1122
    invoke-static {v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v3

    const-string v11, "#SelectClause#"

    .line 1121
    invoke-virtual {v10, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "CertificateWhiteListTable"

    invoke-virtual {v0, v3, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 1132
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1133
    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1134
    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1135
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    if-eqz v4, :cond_e2

    .line 1138
    :try_start_55
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    if-eqz v13, :cond_e2

    .line 1140
    invoke-virtual {v13, v9, v6}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v2, :cond_e2

    .line 1145
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_80

    .line 1146
    invoke-virtual {v13, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7e

    .line 1148
    array-length v13, v9

    move v14, v6

    move v15, v14

    :goto_70
    if-ge v14, v13, :cond_81

    aget-object v15, v9, v14

    .line 1150
    invoke-static {v4, v15, v10}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7b

    goto :goto_81

    :cond_7b
    add-int/lit8 v14, v14, 0x1

    goto :goto_70

    :cond_7e
    move v15, v6

    goto :goto_81

    :cond_80
    const/4 v15, 0x1

    :cond_81
    :goto_81
    if-eqz v15, :cond_e2

    .line 1161
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_e2

    if-eqz p1, :cond_e2

    .line 1164
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_e2

    .line 1165
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_95
    :goto_95
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_a1} :catch_d8
    .catchall {:try_start_55 .. :try_end_a1} :catchall_d6

    .line 1167
    :try_start_a1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    .line 1169
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1167
    invoke-interface {v13, v10, v14}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_95

    .line 1171
    new-instance v13, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-direct {v13, v14}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_b8} :catch_bc
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_b8} :catch_d8
    .catchall {:try_start_a1 .. :try_end_b8} :catchall_d6

    .line 1186
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v13

    .line 1174
    :catch_bc
    :try_start_bc
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Could not check permission "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " of the admin that has added caller to cert white list"

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_d5} :catch_d8
    .catchall {:try_start_bc .. :try_end_d5} :catchall_d6

    goto :goto_95

    :catchall_d6
    move-exception v0

    goto :goto_de

    :catch_d8
    :try_start_d8
    const-string v3, "Package added to certificate whitelisted not installed"

    .line 1184
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dd
    .catchall {:try_start_d8 .. :try_end_dd} :catchall_d6

    goto :goto_e2

    .line 1186
    :goto_de
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1187
    throw v0

    .line 1186
    :cond_e2
    :goto_e2
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3b

    :cond_e7
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdminRemovable(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 5

    if-nez p2, :cond_5

    .line 1966
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    goto :goto_16

    .line 1968
    :cond_5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1969
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-nez p1, :cond_14

    const/4 p0, 0x1

    return p0

    .line 1990
    :cond_14
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1994
    :goto_16
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->canRemoveAdmin(I)Z

    move-result p0

    return p0
.end method

.method public getAdminUidForAuthorizedUid(I)I
    .registers 4

    const-string v0, "EnterpriseDeviceManagerService"

    const-string v1, "getAdminUidForAuthorizedUid"

    .line 3537
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3538
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 3539
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceUMCSignature()V

    .line 3540
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3541
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "authorizedUid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3542
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "ADMIN_UID_AUTHORIZATION_INFO"

    const-string v1, "adminUid"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 3544
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 3545
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_35
    const/4 p0, -0x1

    return p0
.end method

.method public final getAndroidApiLevelFromDb()I
    .registers 2

    .line 2419
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "PlatformSdkApiLevel"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getDatabaseUpgradeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2421
    :try_start_8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_10} :catch_11

    return p0

    :catch_11
    const-string p0, "EnterpriseDeviceManagerService"

    const-string v0, "No written value"

    .line 2423
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x1e

    return p0
.end method

.method public final getAuthorizedAdminUid(I)I
    .registers 4

    const-string v0, "EnterpriseDeviceManagerService"

    const-string v1, "getAuthorizedAdminUid"

    .line 3552
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3553
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3554
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "authorizedUid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3555
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "ADMIN_UID_AUTHORIZATION_INFO"

    const-string v1, "adminUid"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p0

    if-eqz p0, :cond_2c

    .line 3557
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2c

    .line 3558
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2c
    const/4 p0, -0x1

    return p0
.end method

.method public getAuthorizedUidForAdminUid(I)I
    .registers 4

    const-string v0, "EnterpriseDeviceManagerService"

    const-string v1, "getAuthorizedUidForAdminUid"

    .line 3522
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3523
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 3524
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceUMCSignature()V

    .line 3525
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3526
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "adminUid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3527
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "ADMIN_UID_AUTHORIZATION_INFO"

    const-string v1, "authorizedUid"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 3529
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 3530
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_35
    const/4 p0, -0x1

    return p0
.end method

.method public getConstrainedState()I
    .registers 1

    .line 3451
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedState()I

    move-result p0

    return p0
.end method

.method public final declared-synchronized getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;
    .registers 2

    monitor-enter p0

    .line 3992
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    if-nez v0, :cond_12

    const-string/jumbo v0, "mum_container_policy"

    .line 3994
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3993
    invoke-static {v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 3996
    :cond_12
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getDeviceOwnerUid()I
    .registers 6

    const-string v0, "EnterpriseDeviceManagerService"

    .line 872
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 874
    :try_start_6
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 875
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 877
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 878
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_27} :catch_37
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_27} :catch_2d
    .catchall {:try_start_6 .. :try_end_27} :catchall_2b

    .line 887
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_2b
    move-exception p0

    goto :goto_45

    :catch_2d
    move-exception p0

    .line 884
    :try_start_2e
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "Failed to retrieve DO component on device"

    .line 885
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    :catch_37
    move-exception p0

    .line 881
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p0, "Failed to get application info for DO component."

    .line 882
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_2e .. :try_end_40} :catchall_2b

    .line 887
    :cond_40
    :goto_40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, -0x1

    return p0

    :goto_45
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 888
    throw p0
.end method

.method public getFirmwareUpgrade()Z
    .registers 1

    .line 2181
    sget-boolean p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mIsFirmwareUpgrade:Z

    return p0
.end method

.method public getKPUPackageName()Ljava/lang/String;
    .registers 1

    .line 850
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLockObject()Ljava/lang/Object;
    .registers 2

    const/16 v0, 0x9

    .line 307
    invoke-static {v0}, Lcom/android/server/LockGuard;->guard(I)V

    .line 310
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mLockDoNoUseDirectly:Ljava/lang/Object;

    return-object p0
.end method

.method public getOrganizationOwnedProfileUserId()I
    .registers 7

    .line 4194
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 4195
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4196
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 4198
    :try_start_13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 4199
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v4, v5}, Landroid/app/admin/IDevicePolicyManager;->isProfileOwnerOfOrganizationOwnedDeviceMDM(I)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 4200
    iget p0, v3, Landroid/content/pm/UserInfo;->id:I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_35} :catch_3b
    .catchall {:try_start_13 .. :try_end_35} :catchall_39

    .line 4206
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_39
    move-exception p0

    goto :goto_45

    :catch_3b
    move-exception p0

    .line 4204
    :try_start_3c
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_39

    .line 4206
    :cond_3f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0x2710

    return p0

    :goto_45
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4207
    throw p0
.end method

.method public getPseudoAdminUid()I
    .registers 1

    .line 4157
    iget p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    return p0
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1873
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->userHandleGetCallingUserId()I

    move-result p0

    invoke-interface {v0, p1, p2, p0}, Landroid/app/admin/IDevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    return-void
.end method

.method public getUserStatus(I)I
    .registers 11

    .line 3946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getUserStatus is called for userid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3948
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3949
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const-string v4, "Failed to getUserStatus"

    const/4 v5, -0x1

    if-nez p1, :cond_8f

    .line 3952
    :try_start_24
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 3953
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdmins(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_b9

    .line 3955
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_38
    :goto_38
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_44} :catch_bf
    .catchall {:try_start_24 .. :try_end_44} :catchall_bd

    .line 3957
    :try_start_44
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3958
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 3959
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Valid Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in User 0"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3960
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v6

    if-eqz v6, :cond_b9

    .line 3961
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getStatusInternal(I)I

    move-result v5
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_7a} :catch_7b
    .catchall {:try_start_44 .. :try_end_7a} :catchall_bd

    goto :goto_b9

    :catch_7b
    move-exception v6

    .line 3967
    :try_start_7c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 3972
    :cond_8f
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v6

    if-ne v0, v6, :cond_b9

    .line 3974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Valid Admin for User "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3975
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-eqz v0, :cond_b9

    .line 3976
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getStatusInternal(I)I

    move-result v5
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_b9} :catch_bf
    .catchall {:try_start_7c .. :try_end_b9} :catchall_bd

    .line 3985
    :cond_b9
    :goto_b9
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c7

    :catchall_bd
    move-exception p0

    goto :goto_dd

    :catch_bf
    move-exception p0

    .line 3982
    :try_start_c0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3983
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_c0 .. :try_end_c6} :catchall_bd

    goto :goto_b9

    .line 3987
    :goto_c7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "status "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 3985
    :goto_dd
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3986
    throw p0
.end method

.method public final handleDowngrade()V
    .registers 7

    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "handleDowngrade: Checking Downgrade..."

    .line 2151
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "enterprise.db"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2155
    :try_start_c
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_12} :catch_13

    goto :goto_28

    :catch_13
    move-exception v1

    .line 2159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not open or create databse"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    if-eqz v3, :cond_56

    .line 2163
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    .line 2164
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/16 v3, 0x8

    if-le v1, v3, :cond_56

    const-string v1, "Current Platform Version is older than the previous DB version"

    .line 2167
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Deleting EDM Databases - enterprise.db and dmapprmgr.db"

    .line 2168
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/enterprise.db"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2170
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/dmappmgr.db"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2171
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->sendMigrationIntent(Z)V

    :cond_56
    return-void
.end method

.method public hasAnyActiveAdmin()Z
    .registers 2

    .line 2580
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 2584
    :cond_6
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    if-gtz p0, :cond_d

    return v0

    :cond_d
    const/4 p0, 0x1

    return p0
.end method

.method public final hasCallingOrSelfPermission(Ljava/lang/String;)Z
    .registers 2

    .line 2629
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

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

.method public hasDelegatedPermission(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 8

    .line 802
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 804
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 806
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsKPECore(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    .line 807
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 810
    :try_start_19
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->hasDelegatedPermission(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1f} :catch_25
    .catchall {:try_start_19 .. :try_end_1f} :catchall_23

    .line 814
    :goto_1f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2a

    :catchall_23
    move-exception p0

    goto :goto_2b

    :catch_25
    move-exception p0

    .line 812
    :try_start_26
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_23

    goto :goto_1f

    :goto_2a
    return v1

    .line 814
    :goto_2b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 815
    throw p0

    :cond_2f
    return v1
.end method

.method public final hasFullCrossUsersPermission(I)Z
    .registers 5

    .line 2622
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2623
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_21

    const/16 p1, 0x3e8

    invoke-static {v0, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p1

    if-nez p1, :cond_21

    .line 2624
    invoke-static {v0, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p1

    if-nez p1, :cond_21

    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->hasCallingOrSelfPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_22

    :cond_21
    const/4 v2, 0x1

    :cond_22
    return v2
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1258
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->userHandleGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result p0

    return p0
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x16

    if-ge p2, v0, :cond_b

    .line 1263
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result p0

    return p0

    .line 1265
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1266
    :try_start_10
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 1270
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1268
    :cond_1c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No active admin "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on user "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_3b
    move-exception p0

    .line 1271
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_10 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public final hasKnoxInternalExceptionPermission(Ljava/lang/String;)Z
    .registers 3

    .line 1998
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.knox.permission.KNOX_INTERNAL_EXCEPTION"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .registers 4

    .line 1830
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1831
    :try_start_5
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->userHandleGetCallingUserId()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 1832
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public isAdminRemovable(Landroid/content/ComponentName;)Z
    .registers 3

    .line 2641
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->userHandleGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isAdminRemovableInternal(Landroid/content/ComponentName;I)Z

    move-result p0

    return p0
.end method

.method public isAdminRemovableInternal(Landroid/content/ComponentName;I)Z
    .registers 5

    .line 2645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isAdminRemovableInternal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object p2

    if-eqz p2, :cond_49

    .line 2651
    invoke-virtual {p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2652
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->canRemoveAdmin(I)Z

    move-result p0

    .line 2653
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isAdminRemovableInternal : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 2649
    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad admin: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isCallerDeviceOwner()Z
    .registers 3

    .line 3938
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3939
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 3940
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 3941
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public isCallerValidKPU(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 843
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/utils/KpuHelper;->isCallerValidKpu(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0
.end method

.method public isCameraEnabledNative(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    const-string p0, "EnterpriseDeviceManagerService"

    const-string/jumbo v0, "isCameraEnabledNative"

    .line 3479
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "restriction_policy"

    .line 3480
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    :try_start_14
    const-string v2, "checking for camera in restriction policy"

    .line 3483
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3484
    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    move-exception p0

    .line 3486
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_22
    return v1
.end method

.method public final isDelegationEnabledForDO(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    const-string/jumbo p0, "restriction_policy"

    .line 864
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz p0, :cond_10

    .line 865
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKnoxDelegationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public isEmailAdminPkg(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "com.samsung.android.email.provider"

    .line 4460
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isFirmwareChanged()Z
    .registers 3

    .line 2658
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "PlatformSoftwareVersion"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getDatabaseUpgradeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "ro.build.fingerprint"

    const-string/jumbo v1, "unknown"

    .line 2659
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2660
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x0

    :cond_19
    if-eqz p0, :cond_26

    if-eqz v0, :cond_24

    .line 2661
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_26

    :cond_24
    const/4 p0, 0x0

    return p0

    :cond_26
    :goto_26
    const/4 p0, 0x1

    return p0
.end method

.method public isKPUPlatformSigned(Ljava/lang/String;I)Z
    .registers 3

    .line 857
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPlatformSigned(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isKgTurnedOn()Z
    .registers 4

    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "isKgTurnedOn."

    .line 4025
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4027
    :try_start_8
    new-instance v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;-><init>(Landroid/content/Context;)V

    .line 4028
    invoke-virtual {v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->isKgTurnedOn()Z

    move-result p0

    .line 4029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isKgTurnedOn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_8 .. :try_end_28} :catch_40
    .catchall {:try_start_8 .. :try_end_28} :catchall_29

    return p0

    :catchall_29
    move-exception p0

    .line 4034
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isKgTurnedOn() : Failure getting KGVM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    :catch_40
    const-string p0, "KnoxGuardVaultManager not supported (KnoxGuardVaultException)"

    .line 4032
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_45
    const/4 p0, 0x0

    return p0
.end method

.method public final isKpuPermissionGranted(Ljava/lang/String;)Z
    .registers 3

    .line 792
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.knox.permission.KNOX_KPU_INTERNAL"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_17

    const-string p0, "EnterpriseDeviceManagerService"

    const-string p1, "Caller does not have KPU permission"

    .line 794
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_17
    const/4 p0, 0x1

    return p0
.end method

.method public isMdmAdminPresent()Z
    .registers 1

    .line 2766
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isMdmAdminPresentInternal()Z

    move-result p0

    return p0
.end method

.method public isMdmAdminPresentAsUser(I)Z
    .registers 10

    const-string v0, "EnterpriseDeviceManagerService"

    const/4 v1, 0x1

    .line 2771
    :try_start_3
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object p1

    .line 2772
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2773
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 2774
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    goto :goto_d

    .line 2778
    :cond_32
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v4

    if-eqz v4, :cond_64

    .line 2779
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 2780
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "isMdmAdminPresentAsUser() : MDM Admin Found - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2783
    :cond_64
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getEnterpriseLicenseManager()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v2

    .line 2784
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2785
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_73} :catch_b6

    if-eqz v2, :cond_84

    .line 2788
    :try_start_75
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_7d} :catch_80
    .catchall {:try_start_75 .. :try_end_7d} :catchall_7e

    goto :goto_84

    :catchall_7e
    move-exception p0

    goto :goto_88

    :catch_80
    move-exception v2

    .line 2791
    :try_start_81
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_7e

    .line 2793
    :cond_84
    :goto_84
    :try_start_84
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8c

    :goto_88
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2794
    throw p0

    :goto_8c
    if-eqz v4, :cond_d

    .line 2795
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 2796
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "isMdmAdminPresentAsUser() : MDM Admin Found(2) - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_ae
    const-string/jumbo p0, "isMdmAdminPresentAsUser() : MDM Admin is not present."

    .line 2800
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_b4} :catch_b6

    const/4 p0, 0x0

    return p0

    :catch_b6
    move-exception p0

    const-string/jumbo p1, "isMdmAdminPresentAsUser() : failed. "

    .line 2803
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final isMdmAdminPresentInternal()Z
    .registers 8

    const-string v0, "EnterpriseDeviceManagerService"

    const/4 v1, 0x1

    .line 2729
    :try_start_3
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v2

    .line 2730
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2731
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 2732
    sget-object v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    goto :goto_d

    .line 2736
    :cond_32
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v5

    if-eqz v5, :cond_64

    .line 2737
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {p0, v4, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 2738
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isMdmAdminPresentInternal() : MDM Admin Found - "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2741
    :cond_64
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getEnterpriseLicenseManager()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v3

    .line 2742
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6f} :catch_a2

    if-eqz v3, :cond_7e

    .line 2745
    :try_start_71
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_79} :catch_7a
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_79} :catch_a2

    goto :goto_7e

    :catch_7a
    move-exception v3

    .line 2748
    :try_start_7b
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_7e
    :goto_7e
    if-eqz v5, :cond_d

    .line 2750
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 2751
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isMdmAdminPresentInternal() : MDM Admin Found(2) - "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_9f} :catch_a2

    return v1

    :cond_a0
    const/4 p0, 0x0

    return p0

    :catch_a2
    move-exception p0

    const-string/jumbo v2, "isMdmAdminPresentInternal() : failed. "

    .line 2758
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public isPossibleTransferOwenerShip(Landroid/content/ComponentName;)Z
    .registers 2

    .line 1669
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkAdminExistsInELMDB(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isProfileOwnerApp(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    .line 3921
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3923
    iget-boolean v1, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-eqz v1, :cond_13

    .line 3924
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3925
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-interface {v1, v0}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    goto :goto_19

    .line 3927
    :cond_13
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-interface {v1, v0}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    :goto_19
    if-eqz v1, :cond_2f

    .line 3929
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-interface {v1, v0}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isLegacyContainer(I)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 3930
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result p0

    .line 3931
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne p0, p1, :cond_2f

    const/4 p0, 0x1

    return p0

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method public isRestrictedByConstrainedState(I)Z
    .registers 2

    .line 3447
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/utils/ConstrainedState;->isRestrictedByConstrainedState(I)Z

    move-result p0

    return p0
.end method

.method public isUserSelectable(Ljava/lang/String;)Z
    .registers 9

    const-string/jumbo v0, "isUserSelectable - allow :"

    const-string v1, "CCMUserSelectableTable"

    const-string v2, "alias"

    .line 4369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUserSelectable called for alias: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EnterpriseDeviceManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    if-eqz p1, :cond_a2

    .line 4370
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_29

    goto/16 :goto_a2

    .line 4376
    :cond_29
    :try_start_29
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 4377
    invoke-virtual {v5, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4378
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, v1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v5

    if-eqz v5, :cond_81

    .line 4380
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 4381
    invoke-virtual {v5, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4382
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p1, "isSelectable"

    invoke-virtual {p0, v1, p1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    .line 4383
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_a2

    .line 4384
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_a2

    .line 4385
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 4386
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    move v3, p0

    goto :goto_a2

    :cond_81
    const-string/jumbo p0, "isUserSelectable - uidCount = 0"

    .line 4390
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_87} :catch_88

    goto :goto_a2

    :catch_88
    move-exception p0

    .line 4394
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isUserSelectable - Exception"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    :goto_a2
    return v3
.end method

.method public final isUwbSupported()Z
    .registers 2

    .line 2451
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.uwb"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public keychainMarkedReset(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 7

    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "in keychainMarkedReset"

    .line 4421
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4422
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_1c

    const-string/jumbo p0, "keychainMarkedReset - Cannot clear credentials, not a system app"

    .line 4423
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1c
    if-nez p1, :cond_25

    const-string/jumbo p0, "keychainMarkedReset - Invalid Arguments"

    .line 4428
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_25
    const-string p1, "csr"

    .line 4434
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    .line 4435
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 4436
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CCMCertTable"

    invoke-virtual {v2, v4, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    const/4 p1, 0x0

    .line 4440
    :try_start_3c
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "CCMCertGrantTable"

    invoke-virtual {v2, v3, p1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_43} :catch_44

    goto :goto_5e

    :catch_44
    move-exception v2

    .line 4443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeAllGrants - Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4447
    :goto_5e
    :try_start_5e
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "CCMUserSelectableTable"

    invoke-virtual {p0, v2, p1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_65} :catch_66

    goto :goto_80

    :catch_66
    move-exception p0

    .line 4450
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeAllUserSelectable - Exception"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_80
    return v1
.end method

.method public final loadActiveAdmins()V
    .registers 14

    .line 1677
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    const-string v1, "EnterpriseDeviceManagerService"

    const-string/jumbo v2, "loadActiveAdmins"

    .line 1678
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1680
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1e2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_30c

    .line 1684
    :try_start_2a
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->checkPseudoAdminForUid(I)Z

    move-result v3
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_30} :catch_31
    .catchall {:try_start_2a .. :try_end_30} :catchall_30c

    goto :goto_4d

    :catch_31
    move-exception v6

    :try_start_32
    const-string v7, "EnterpriseDeviceManagerService"

    .line 1686
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mEdmStorageProvider.checkPseudoAdminForUid: error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4d
    if-eqz v3, :cond_60

    .line 1696
    new-instance v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-direct {v3, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;-><init>(Z)V

    .line 1697
    iput v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 1698
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 1703
    :cond_60
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v3
    :try_end_66
    .catchall {:try_start_32 .. :try_end_66} :catchall_30c

    if-nez v3, :cond_69

    goto :goto_17

    .line 1709
    :cond_69
    :try_start_69
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {p0, v3, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v6

    if-eqz v6, :cond_192

    .line 1711
    invoke-virtual {v6}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1712
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_89
    .catch Ljava/lang/RuntimeException; {:try_start_69 .. :try_end_89} :catch_1c5
    .catchall {:try_start_69 .. :try_end_89} :catchall_30c

    if-ne v7, v2, :cond_d4

    .line 1716
    :try_start_8b
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-interface {v7, v3, v8}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v7

    if-nez v7, :cond_17

    .line 1718
    new-instance v7, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v7, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v7, v5, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 1719
    invoke-virtual {v6}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    const-string v4, "EnterpriseDeviceManagerService"

    .line 1721
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin invalid on DPM, removing from EDM:   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", uid: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1721
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_cc} :catch_ce
    .catch Ljava/lang/RuntimeException; {:try_start_8b .. :try_end_cc} :catch_1c5
    .catchall {:try_start_8b .. :try_end_cc} :catchall_30c

    goto/16 :goto_17

    :catch_ce
    move-exception v2

    .line 1726
    :try_start_cf
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_17

    .line 1729
    :cond_d4
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "ADMIN_INFO"

    const-string v10, "adminUid"

    invoke-virtual {v8, v2, v9, v10, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_153

    const-string v8, "EnterpriseDeviceManagerService"

    .line 1732
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", updated with new currentUid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", old storedUid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10a
    .catch Ljava/lang/RuntimeException; {:try_start_cf .. :try_end_10a} :catch_1c5
    .catchall {:try_start_cf .. :try_end_10a} :catchall_30c

    .line 1736
    :try_start_10a
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 1737
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1736
    invoke-interface {v8, v3, v9}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v8

    if-nez v8, :cond_17

    .line 1739
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v8, v5, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 1740
    invoke-virtual {v6}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    const-string v2, "EnterpriseDeviceManagerService"

    .line 1741
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Admin invalid on DPM, removing from EDM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1742
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", uid: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1741
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14b
    .catch Landroid/os/RemoteException; {:try_start_10a .. :try_end_14b} :catch_14d
    .catch Ljava/lang/RuntimeException; {:try_start_10a .. :try_end_14b} :catch_1c5
    .catchall {:try_start_10a .. :try_end_14b} :catchall_30c

    goto/16 :goto_17

    :catch_14d
    move-exception v2

    .line 1746
    :try_start_14e
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_17

    .line 1749
    :cond_153
    invoke-virtual {v6}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v2, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1751
    new-instance v7, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v7, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v7, v5, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 1752
    invoke-virtual {v6}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    const-string v4, "EnterpriseDeviceManagerService"

    .line 1754
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed updating uid, removed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1755
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", uid: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1754
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 1761
    :cond_192
    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v6, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v6, v5, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 1762
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    const-string v4, "EnterpriseDeviceManagerService"

    .line 1764
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin loaded null, removed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1765
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", uid: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1764
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c3
    .catch Ljava/lang/RuntimeException; {:try_start_14e .. :try_end_1c3} :catch_1c5
    .catchall {:try_start_14e .. :try_end_1c3} :catchall_30c

    goto/16 :goto_17

    :catch_1c5
    move-exception v2

    :try_start_1c6
    const-string v3, "EnterpriseDeviceManagerService"

    .line 1769
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occured while loading active admins "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 1774
    :cond_1e2
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 1775
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 1776
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1777
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminsInfo(I)Ljava/util/List;

    move-result-object v6
    :try_end_207
    .catchall {:try_start_1c6 .. :try_end_207} :catchall_30c

    .line 1781
    :try_start_207
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v7, v8}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v7
    :try_end_20f
    .catch Landroid/os/RemoteException; {:try_start_207 .. :try_end_20f} :catch_210
    .catchall {:try_start_207 .. :try_end_20f} :catchall_30c

    goto :goto_22c

    :catch_210
    move-exception v7

    :try_start_211
    const-string v8, "EnterpriseDeviceManagerService"

    .line 1783
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to get active admins from dpm "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v4

    :goto_22c
    if-eqz v7, :cond_1f5

    if-eqz v6, :cond_2a4

    .line 1787
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_237

    goto :goto_2a4

    .line 1801
    :cond_237
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_23b
    :goto_23b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1f5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 1803
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_24b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_263

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 1804
    invoke-virtual {v10}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24b

    move v9, v5

    goto :goto_264

    :cond_263
    move v9, v3

    :goto_264
    if-nez v9, :cond_23b

    .line 1810
    iget v9, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v9

    if-eqz v9, :cond_23b

    const-string v10, "EnterpriseDeviceManagerService"

    .line 1812
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Adding missing admin to EDM : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    invoke-virtual {v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1814
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1816
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v10, v8, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addAdmin(ILjava/lang/String;ZI)Z

    goto :goto_23b

    :cond_2a4
    :goto_2a4
    const-string v6, "EnterpriseDeviceManagerService"

    .line 1788
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adding all admins from DPM for user : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2c0
    :goto_2c0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1790
    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v7, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v8

    if-eqz v8, :cond_2c0

    const-string v9, "EnterpriseDeviceManagerService"

    .line 1792
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Adding missing admin to EDM : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1794
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1795
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1796
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v9, v7, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addAdmin(ILjava/lang/String;ZI)Z

    goto :goto_2c0

    .line 1824
    :cond_30a
    monitor-exit v0

    return-void

    :catchall_30c
    move-exception p0

    monitor-exit v0
    :try_end_30e
    .catchall {:try_start_211 .. :try_end_30e} :catchall_30c

    throw p0
.end method

.method public migrateKnoxPoliciesForWpcod(I)Z
    .registers 6

    const-string v0, "EnterpriseDeviceManagerService"

    .line 4042
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4043
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_48

    .line 4044
    sget v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->MY_PID:I

    if-ne v2, v1, :cond_48

    .line 4050
    :try_start_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "migrateKnoxPoliciesForWpcod() containerId received = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4051
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->addPseudoAdminForParent(I)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_40

    .line 4055
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->resetAPILevelPrivacyPolicies()V

    .line 4058
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->resetClassLevelPrivacyPolicies()V

    const-string/jumbo p0, "migrateKnoxPoliciesForWpcod() complete.."

    .line 4060
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3a} :catch_3c

    const/4 p0, 0x1

    return p0

    :catch_3c
    move-exception p0

    .line 4064
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_40
    const-string/jumbo p0, "migrateKnoxPoliciesForWpcod() returning false.."

    .line 4067
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 4045
    :cond_48
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller is not a system process.."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onContainerCreation(II)V
    .registers 6

    .line 2678
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EnterpriseDeviceManagerService.onContainerCreation("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EnterpriseDeviceManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2f
    :goto_2f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2681
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 2682
    instance-of v2, v1, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v2, :cond_2f

    .line 2683
    check-cast v1, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    .line 2685
    :try_start_45
    invoke-interface {v1, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onContainerCreation(II)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_2f

    :catch_49
    move-exception v1

    const-string v2, "Handled Exception in onContainerCreation"

    .line 2687
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f

    :cond_50
    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 6

    .line 2712
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EnterpriseDeviceManagerService.onContainerRemoved("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EnterpriseDeviceManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2f
    :goto_2f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2715
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 2716
    instance-of v2, v1, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v2, :cond_2f

    .line 2717
    check-cast v1, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    .line 2719
    :try_start_45
    invoke-interface {v1, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onContainerRemoved(II)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_2f

    :catch_49
    move-exception v1

    const-string v2, "Handled Exception in onContainerRemoved"

    .line 2721
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f

    :cond_50
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 6

    .line 2695
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EnterpriseDeviceManagerService.onPreContainerRemoval("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EnterpriseDeviceManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2f
    :goto_2f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2698
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 2699
    instance-of v2, v1, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v2, :cond_2f

    .line 2700
    check-cast v1, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    .line 2702
    :try_start_45
    invoke-interface {v1, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onPreContainerRemoval(II)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_2f

    :catch_49
    move-exception v1

    const-string v2, "Handled Exception in onPreContainerRemoval"

    .line 2704
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f

    :cond_50
    return-void
.end method

.method public final onStartUser(I)V
    .registers 3

    .line 2025
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onStartUser() : userId = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EnterpriseDeviceManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .registers 3

    .line 2594
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->userHandleGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->packageHasActiveAdminsAsUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public packageHasActiveAdminsAsUser(Ljava/lang/String;I)Z
    .registers 8

    .line 2600
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->hasFullCrossUsersPermission(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    const-string p0, "EnterpriseDeviceManagerService"

    const-string/jumbo p1, "packageHasActiveAdminsAsUser caller need INTERACT_ACROSS_USERS_FULL permission"

    .line 2601
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2605
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2606
    :try_start_15
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_1c
    if-ge v3, v2, :cond_7e

    .line 2609
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 2610
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_7b

    const-string p1, "EnterpriseDeviceManagerService"

    .line 2611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " packageHasActiveAdminsAsUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " userID"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_7b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 2617
    :cond_7e
    monitor-exit v0

    return v1

    :catchall_80
    move-exception p0

    .line 2618
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_15 .. :try_end_82} :catchall_80

    throw p0
.end method

.method public readUmcEnrollmentData(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 6

    .line 3614
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.samsung.android.knox.permission.KNOX_KES_INTERNAL"

    .line 3615
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3616
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 3618
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_15

    return-object p1

    .line 3625
    :cond_15
    :try_start_15
    new-instance p0, Ljava/io/File;

    const-string v0, "/efs/umc"

    const-string v1, "BulkEnrollmentProfile"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3626
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2f

    goto :goto_4d

    .line 3629
    :cond_2f
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v1, v0, [B

    .line 3630
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3b} :catch_50
    .catchall {:try_start_15 .. :try_end_3b} :catchall_4e

    .line 3631
    :try_start_3b
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result p0

    .line 3632
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_42} :catch_4b
    .catchall {:try_start_3b .. :try_end_42} :catchall_60

    if-lez p0, :cond_5f

    .line 3636
    :try_start_44
    new-instance p0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Ljava/lang/String;-><init>([BII)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4a} :catch_50
    .catchall {:try_start_44 .. :try_end_4a} :catchall_4e

    return-object p0

    :catch_4b
    move-exception p0

    goto :goto_52

    :cond_4d
    :goto_4d
    return-object p1

    :catchall_4e
    move-exception p0

    goto :goto_62

    :catch_50
    move-exception p0

    move-object v2, p1

    .line 3638
    :goto_52
    :try_start_52
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_60

    if-eqz v2, :cond_5f

    .line 3642
    :try_start_57
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_5f

    :catch_5b
    move-exception p0

    .line 3644
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5f
    :goto_5f
    return-object p1

    :catchall_60
    move-exception p0

    move-object p1, v2

    :goto_62
    if-eqz p1, :cond_6c

    .line 3642
    :try_start_64
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_6c

    :catch_68
    move-exception p1

    .line 3644
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3646
    :cond_6c
    :goto_6c
    throw p0
.end method

.method public reconcileAdmin(Landroid/content/ComponentName;I)V
    .registers 10

    .line 1617
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->MY_PID:I

    if-ne v0, v1, :cond_a1

    .line 1622
    :try_start_8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v0

    if-eqz v0, :cond_a0

    .line 1625
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1626
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1b} :catch_7a

    .line 1627
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75

    .line 1628
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1630
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1631
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1630
    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addorUpdateAdmin(ILjava/lang/String;ZI)Z

    move-result v3

    if-nez v3, :cond_53

    .line 1634
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1635
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    monitor-exit v2

    return-void

    .line 1642
    :cond_53
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    move-result-object p0

    .line 1643
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 1642
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1644
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminAdded(I)V

    goto :goto_5f

    .line 1647
    :cond_75
    monitor-exit v2

    goto :goto_a0

    :catchall_77
    move-exception p0

    monitor-exit v2
    :try_end_79
    .catchall {:try_start_1b .. :try_end_79} :catchall_77

    :try_start_79
    throw p0
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7a} :catch_7a

    :catch_7a
    move-exception p0

    const-string v0, "EnterpriseDeviceManagerService"

    .line 1650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed reconcileAdmin for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "for user id "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a0
    :goto_a0
    return-void

    .line 1618
    :cond_a1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Need to be System Process"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final registerBroadcastReceiver()V
    .registers 3

    .line 2455
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_REMOVED"

    .line 2456
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 2457
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2458
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->deviceOwnerExists()Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "android.app.action.DEVICE_OWNER_CHANGED"

    .line 2459
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2461
    :cond_1a
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final registerDeferredBroadcastReceiver()V
    .registers 5

    .line 2117
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;

    if-nez v0, :cond_18

    .line 2118
    new-instance v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;

    .line 2119
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 2121
    :cond_18
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_24
    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2122
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->hasDeferredBroadcastReceiverToRegister()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2123
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v0}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->registerDeferredBoradcastReceiver()V

    goto :goto_24

    :cond_46
    return-void
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1373
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->userHandleGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public final removeActiveAdmin(Landroid/content/ComponentName;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "failed to remove action admin "

    .line 1377
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeActiveAdmin() : Removing admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", caller : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EnterpriseDeviceManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :try_start_2d
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {p0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_32
    .catch Ljava/lang/SecurityException; {:try_start_2d .. :try_end_32} :catch_63
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_32} :catch_4b
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_32} :catch_33

    goto :goto_7a

    :catch_33
    move-exception p0

    .line 1388
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    :catch_4b
    move-exception p0

    .line 1386
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    :catch_63
    move-exception p0

    .line 1384
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7a
    const-string p0, "Admin removed from DPM!"

    .line 1390
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final removeActiveAdminDelayed(Landroid/content/ComponentName;I)V
    .registers 4

    const/4 v0, 0x0

    .line 1401
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(Landroid/content/ComponentName;IZ)V

    return-void
.end method

.method public final removeActiveAdminDelayed(Landroid/content/ComponentName;IZ)V
    .registers 13

    const-string v0, "EnterpriseDeviceManagerService"

    .line 1405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeActiveAdminDelayed - adminReceiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v0

    if-nez v0, :cond_26

    return-void

    .line 1411
    :cond_26
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1412
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "EnterpriseDeviceManagerService"

    .line 1413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Admin uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", calling uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v2, :cond_5b

    .line 1418
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BIND_DEVICE_ADMIN"

    const-string v4, "Only system or itself can remove an EDM admin"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    :cond_5b
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->canRemoveAdmin(I)Z

    move-result v2

    if-nez v2, :cond_7f

    const-string p0, "EnterpriseDeviceManagerService"

    .line 1426
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Admin "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " cannot be removed!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1429
    :cond_7f
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->cleanUpConstrainedState(I)V

    .line 1431
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1437
    :try_start_88
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->checkPseudoAdminForUid(I)Z

    move-result v4

    if-nez v4, :cond_c1

    .line 1440
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    invoke-virtual {v5, v1}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->onPreAdminRemoval(I)V

    .line 1441
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;
    :try_end_ad
    .catch Ljava/lang/RuntimeException; {:try_start_88 .. :try_end_ad} :catch_20c
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_ad} :catch_1fd
    .catchall {:try_start_88 .. :try_end_ad} :catchall_1fb

    .line 1443
    :try_start_ad
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v6, v1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onPreAdminRemoval(I)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b6} :catch_b7
    .catchall {:try_start_ad .. :try_end_b6} :catchall_1fb

    goto :goto_a1

    :catch_b7
    move-exception v6

    :try_start_b8
    const-string v7, "EnterpriseDeviceManagerService"

    const-string/jumbo v8, "removeActiveAdminDelayed Ex1:"

    .line 1445
    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a1

    .line 1451
    :cond_c1
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_c6
    .catch Ljava/lang/RuntimeException; {:try_start_b8 .. :try_end_c6} :catch_20c
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_c6} :catch_1fd
    .catchall {:try_start_b8 .. :try_end_c6} :catchall_1fb

    :try_start_c6
    const-string v6, "EnterpriseDeviceManagerService"

    .line 1453
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing Admin with uid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-nez v4, :cond_fd

    .line 1459
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeAdminFromDatabase(I)Z
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_f1} :catch_f5
    .catchall {:try_start_c6 .. :try_end_f1} :catchall_f2

    goto :goto_fd

    :catchall_f2
    move-exception p1

    goto/16 :goto_1f9

    :catch_f5
    move-exception v0

    :try_start_f6
    const-string v6, "EnterpriseDeviceManagerService"

    const-string v7, "FATAL: Admin failed to remove lets try during next boot up"

    .line 1465
    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1467
    :cond_fd
    :goto_fd
    monitor-exit v5
    :try_end_fe
    .catchall {:try_start_f6 .. :try_end_fe} :catchall_f2

    if-nez v4, :cond_131

    .line 1473
    :try_start_100
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;
    :try_end_118
    .catch Ljava/lang/RuntimeException; {:try_start_100 .. :try_end_118} :catch_20c
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_118} :catch_1fd
    .catchall {:try_start_100 .. :try_end_118} :catchall_1fb

    .line 1475
    :try_start_118
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v4, v1, p3}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminRemoved(IZ)V
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_121} :catch_122
    .catchall {:try_start_118 .. :try_end_121} :catchall_1fb

    goto :goto_10c

    :catch_122
    move-exception v4

    :try_start_123
    const-string v5, "EnterpriseDeviceManagerService"

    const-string/jumbo v6, "removeActiveAdminDelayed Ex2:"

    .line 1477
    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10c

    .line 1481
    :cond_12c
    iget-object p3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    invoke-virtual {p3, v1}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->onAdminRemoved(I)V

    :cond_131
    if-eqz p1, :cond_201

    const/16 p3, 0x3e8

    if-ne v1, p3, :cond_201

    .line 1489
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_201

    .line 1492
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_147
    :goto_147
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_201

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1493
    invoke-virtual {p0, v4, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v5

    if-eqz v5, :cond_164

    .line 1497
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v5, p3, :cond_164

    goto :goto_147

    .line 1502
    :cond_164
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_147

    .line 1504
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, v4, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->reconcileAdmin(Landroid/content/ComponentName;I)V

    const-string p1, "adminUid"

    const-string/jumbo p3, "proxyUid"

    .line 1508
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    .line 1510
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "adminUid"

    .line 1512
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1513
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "PROXY_ADMIN_INFO"

    .line 1514
    invoke-virtual {v0, v4, p1, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_201

    .line 1519
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_19e
    :goto_19e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_201

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ContentValues;

    const-string v0, "adminUid"

    .line 1520
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v4, "proxyUid"

    .line 1522
    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    if-eqz v0, :cond_19e

    if-eqz p3, :cond_19e

    .line 1526
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_19e

    .line 1527
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1528
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1529
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1527
    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addMUMContainer(II)Z

    const-string v4, "EnterpriseDeviceManagerService"

    .line 1530
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MUMContainer relation rebuilt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1531
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " - "

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1530
    invoke-static {v4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f8
    .catch Ljava/lang/RuntimeException; {:try_start_123 .. :try_end_1f8} :catch_20c
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_1f8} :catch_1fd
    .catchall {:try_start_123 .. :try_end_1f8} :catchall_1fb

    goto :goto_19e

    .line 1467
    :goto_1f9
    :try_start_1f9
    monitor-exit v5
    :try_end_1fa
    .catchall {:try_start_1f9 .. :try_end_1fa} :catchall_f2

    :try_start_1fa
    throw p1
    :try_end_1fb
    .catch Ljava/lang/RuntimeException; {:try_start_1fa .. :try_end_1fb} :catch_20c
    .catch Ljava/lang/Exception; {:try_start_1fa .. :try_end_1fb} :catch_1fd
    .catchall {:try_start_1fa .. :try_end_1fb} :catchall_1fb

    :catchall_1fb
    move-exception p0

    goto :goto_20e

    :catch_1fd
    move-exception p1

    .line 1545
    :try_start_1fe
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_201
    .catchall {:try_start_1fe .. :try_end_201} :catchall_1fb

    .line 1547
    :cond_201
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1552
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string p1, "ADMIN_REMOVED"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->SecContentProviderNotifyPolicyChangesAsUser(Ljava/lang/String;I)V

    return-void

    :catch_20c
    move-exception p0

    .line 1543
    :try_start_20d
    throw p0
    :try_end_20e
    .catchall {:try_start_20d .. :try_end_20e} :catchall_1fb

    .line 1547
    :goto_20e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1548
    throw p0
.end method

.method public removeActiveAdminFromDpm(Landroid/content/ComponentName;I)V
    .registers 5

    .line 1394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from DPM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public removeAuthorizedUid(II)Z
    .registers 6

    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "removeAuthorizedUid"

    .line 3507
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3508
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 3509
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceUMCSignature()V

    .line 3510
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3511
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "adminUid"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3512
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "authorizedUid"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3513
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "ADMIN_UID_AUTHORIZATION_INFO"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    .line 3514
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "removeAuthorizedUid : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-le p0, p1, :cond_49

    return p1

    :cond_49
    const/4 p0, 0x0

    return p0
.end method

.method public final removePseudoAdmin()V
    .registers 4

    .line 4164
    iget v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPseudoAdminUid()I

    move-result v0

    :goto_c
    iput v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    if-ne v0, v1, :cond_11

    return-void

    :cond_11
    const/4 v2, 0x1

    .line 4172
    :try_start_12
    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(IZ)V

    .line 4173
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeAdminFromDatabase(I)Z

    .line 4176
    iput v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 4177
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_27} :catch_28

    goto :goto_44

    :catch_28
    move-exception p0

    .line 4180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removePseudoAdmin exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EnterpriseDeviceManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    return-void
.end method

.method public final resetAPILevelPrivacyPolicies()V
    .registers 11

    const-string v0, "canRemove"

    const-string v1, "ADMIN_INFO"

    const-string v2, "MULTI_USER_MGMT"

    const-string v3, "RESTRICTION"

    const-string v4, "EnterpriseDeviceManagerService"

    const v5, -0xe9e7f2

    .line 4231
    :try_start_d
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    invoke-virtual {v6, v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->resetControlStateBits(II)V

    .line 4234
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->updateApplicationCacheForWpcod()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_18

    goto :goto_32

    :catch_18
    move-exception v5

    .line 4236
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resetAPILevelPrivacyPolicies (Application Group): Exception - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4241
    :goto_32
    :try_start_32
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    const-string v7, "APPLICATION_MISC"

    const-string v8, "appNotificationMode"

    const/4 v9, 0x2

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3e} :catch_3f

    goto :goto_5c

    :catch_3f
    move-exception v5

    .line 4243
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 4244
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resetAPILevelPrivacyPolicies : Failed to reset App Notification Mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5c
    const/4 v5, 0x1

    .line 4250
    :try_start_5d
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    const-string v8, "backupEnabled"

    invoke-virtual {v6, v7, v3, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 4253
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    const-string v8, "clipboardEnabled"

    invoke-virtual {v6, v7, v3, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 4256
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    const-string v8, "factoryresetallowed"

    invoke-virtual {v6, v7, v3, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 4259
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    const-string v8, "allowClipboardShare"

    invoke-virtual {v6, v7, v3, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 4262
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    const-string v8, "allowGoogleAccountsAutoSync"

    invoke-virtual {v6, v7, v3, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 4265
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->updateRestrictionCacheForWpcod()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_8d} :catch_8e

    goto :goto_a8

    :catch_8e
    move-exception v6

    .line 4267
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resetAPILevelPrivacyPolicies (Restriction Group): Exception - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4272
    :goto_a8
    :try_start_a8
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    const-string/jumbo v8, "globalProxy"

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v3, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b3} :catch_b4

    goto :goto_ce

    :catch_b4
    move-exception v3

    .line 4274
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resetAPILevelPrivacyPolicies (Global Proxy): Exception - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4280
    :goto_ce
    :try_start_ce
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    const-string/jumbo v7, "multiUserCreationAllowed"

    invoke-virtual {v3, v6, v2, v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 4283
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    const-string/jumbo v7, "multiUserRemovalAllowed"

    invoke-virtual {v3, v6, v2, v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_e2} :catch_e3

    goto :goto_fd

    :catch_e3
    move-exception v2

    .line 4285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetAPILevelPrivacyPolicies (MultiUser policy Group): Exception - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4291
    :goto_fd
    :try_start_fd
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "bluetoothLogEnabled"

    const-string v6, "false"

    .line 4292
    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4293
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    const-string v7, "BLUETOOTH"

    invoke-virtual {v3, v6, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_112} :catch_113

    goto :goto_12d

    :catch_113
    move-exception v2

    .line 4295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetAPILevelPrivacyPolicies (Bluetooth policy Group): Exception - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4301
    :goto_12d
    :try_start_12d
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    invoke-virtual {v2, v3, v1, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 4304
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4306
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getKPUPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4307
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_142
    :goto_142
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_194

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 4308
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-nez v7, :cond_142

    .line 4309
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_142

    .line 4310
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_174

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 4311
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.samsung.android.knox.permission.KNOX_KPU_INTERNAL"

    invoke-virtual {v8, v9, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_142

    .line 4312
    :cond_174
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, v6, v1, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_179} :catch_17a

    goto :goto_142

    :catch_17a
    move-exception p0

    .line 4317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetAPILevelPrivacyPolicies (EDMPolicy.setAdminRemovable): Exception - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_194
    return-void
.end method

.method public final resetClassLevelPrivacyPolicies()V
    .registers 8

    const-string v0, "GEOFENCING"

    const-string v1, "BROWSER"

    const-string v2, "GEOFENCINGSETTINGS"

    const-string v3, "DomainFilterReportStatus"

    .line 4322
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 4329
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4330
    iget v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "adminUid"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x0

    :goto_1d
    const/4 v3, 0x4

    if-ge v2, v3, :cond_52

    .line 4332
    aget-object v3, v0, v2

    .line 4334
    :try_start_22
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_28

    goto :goto_4f

    :catch_28
    move-exception v4

    .line 4336
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 4337
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetClassLevelPrivacyPolicies : Failed to reset table "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EnterpriseDeviceManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_52
    return-void
.end method

.method public sendIntent(I)V
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_12

    const/4 p0, 0x2

    if-eq p1, p0, :cond_e

    const/4 p0, 0x3

    if-eq p1, p0, :cond_a

    return-void

    :cond_a
    const p0, 0x1040261

    goto :goto_15

    :cond_e
    const p0, 0x10407b5

    goto :goto_15

    :cond_12
    const p0, 0x1040291

    .line 3475
    :goto_15
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    return-void
.end method

.method public final sendMigrationIntent(Z)V
    .registers 2

    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1279
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->activateAdmin(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public setActiveAdminSilent(Landroid/content/ComponentName;)V
    .registers 5

    .line 2892
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_SILENT_ACTIVATION_INTERNAL"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 2893
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    .line 2892
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2895
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->activateAdmin(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public final setAdminRemovable(IZ)V
    .registers 5

    .line 4186
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "ADMIN_INFO"

    const-string v1, "canRemove"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p0

    .line 4189
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    return-void
.end method

.method public setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z
    .registers 16

    .line 1884
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.samsung.android.knox.permission.KNOX_ENTERPRISE_DEVICE_ADMIN"

    .line 1885
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1886
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1888
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    const-string v0, "EnterpriseDeviceManagerService"

    const/4 v1, 0x0

    if-nez p3, :cond_1a

    .line 1891
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    goto :goto_2e

    .line 1893
    :cond_1a
    sget-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v2, p3, v1, v6}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-nez v2, :cond_28

    const-string p0, "Can\'t found packageName"

    .line 1896
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_28
    if-eqz v2, :cond_2d

    .line 1915
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_2e

    :cond_2d
    const/4 v2, -0x1

    .line 1917
    :goto_2e
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_40

    const-string p0, "Admin is not active"

    .line 1918
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1922
    :cond_40
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v2, v3, :cond_56

    .line 1923
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->hasKnoxInternalExceptionPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isCallerValidKPU(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-nez v3, :cond_56

    const-string p0, "Samsung internal services cannot be controlled by other admin"

    .line 1924
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1929
    :cond_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAdminRemovable : callingUid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "ADMIN_INFO"

    const-string v1, "canRemove"

    invoke-virtual {p0, v2, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_f5

    .line 1934
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    const-string/jumbo v0, "removable"

    const-string/jumbo v1, "not removable"

    const-string v2, "Admin "

    if-nez p3, :cond_b5

    const/4 p3, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 1938
    :try_start_88
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v9, "EnterpriseDeviceManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has set itself as "

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_a3

    goto :goto_a4

    :cond_a3
    move-object v0, v1

    .line 1940
    :goto_a4
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move v0, p3

    move v1, v3

    move v2, v4

    move v3, v5

    move-object v4, v9

    move-object v5, p1

    .line 1937
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_ec

    :cond_b5
    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 1944
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "EnterpriseDeviceManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has set "

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as "

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_db

    goto :goto_dc

    :cond_db
    move-object v0, v1

    .line 1946
    :goto_dc
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move v0, v3

    move v1, v4

    move v2, v5

    move v3, v9

    move-object v4, v10

    move-object v5, p1

    .line 1943
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_ec
    .catchall {:try_start_88 .. :try_end_ec} :catchall_f0

    .line 1950
    :goto_ec
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_f5

    :catchall_f0
    move-exception p0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1951
    throw p0

    :cond_f5
    :goto_f5
    return p0
.end method

.method public setB2BMode(Z)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final setDelegatorAdminUid(Lcom/samsung/android/knox/ContextInfo;I)V
    .registers 4

    .line 829
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string/jumbo v0, "mCallerUid"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    .line 830
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 831
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception p0

    .line 833
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_17
    return-void
.end method

.method public final setMediators()V
    .registers 4

    .line 2569
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 2570
    instance-of v2, v1, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;

    if-eqz v2, :cond_c

    .line 2571
    check-cast v1, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    invoke-interface {v1, v2}, Lcom/android/server/enterprise/common/KeyCodeCallback;->setMediator(Lcom/android/server/enterprise/common/KeyCodeMediator;)V

    goto :goto_c

    :cond_24
    return-void
.end method

.method public setUserSelectable(ILjava/lang/String;Z)V
    .registers 7

    const-string v0, "alias"

    if-eqz p2, :cond_5c

    .line 4400
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5c

    .line 4401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In setGrant - uid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",alias:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",value:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "EnterpriseDeviceManagerService"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-ne p3, p1, :cond_34

    const/4 p1, 0x2

    .line 4406
    :cond_34
    :try_start_34
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 4407
    invoke-virtual {p3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "isSelectable"

    .line 4408
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4410
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 4411
    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4413
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p2, "CCMUserSelectableTable"

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_55} :catch_56

    goto :goto_5c

    :catch_56
    const-string/jumbo p0, "setUserSelectable() failed"

    .line 4415
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    :goto_5c
    return-void
.end method

.method public final showKnoxVersion()Ljava/lang/String;
    .registers 8

    const-string v0, "No Policy Version"

    const-string/jumbo v1, "ro.config.timaversion"

    const-string/jumbo v2, "true"

    .line 3778
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3780
    :try_start_d
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-interface {v4}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->getKnoxContainerVersionString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4d

    .line 3781
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4d

    .line 3782
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 3783
    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    .line 3784
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "Knox "

    .line 3785
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v5, :cond_38

    .line 3787
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46

    :cond_38
    const/16 v5, 0x2e

    .line 3789
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, 0x0

    .line 3790
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3791
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3793
    :goto_46
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3796
    :cond_4d
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getEnterpriseSdkVerInternal()Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    move-result-object v4

    .line 3797
    invoke-virtual {v4}, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6c

    .line 3798
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6c

    const-string v5, "Standard SDK "

    .line 3799
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3800
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3801
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3805
    :cond_6c
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8b

    .line 3806
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8b

    const-string v5, "Premium SDK "

    .line 3807
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3808
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3809
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3813
    :cond_8b
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getSdkVersion()Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    move-result-object v4

    .line 3814
    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->getInternalSdkVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_ae

    .line 3815
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_ae

    const-string v5, "Customization SDK "

    .line 3816
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3817
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3818
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3822
    :cond_ae
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-interface {v4}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->getKnoxContainerVersionString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_cb

    .line 3823
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_cb

    const-string v5, "Container  "

    .line 3824
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3825
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3826
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_cb
    const-string/jumbo v4, "net.knoxisl.version"

    const/4 v5, 0x0

    .line 3829
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_ea

    .line 3830
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_ea

    const-string v6, "IM "

    .line 3831
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3832
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3833
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ea
    const-string/jumbo v4, "net.knoxscep.version"

    .line 3837
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_108

    .line 3838
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_108

    const-string v6, "CEP "

    .line 3839
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3840
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3841
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_108
    const-string/jumbo v4, "sys.enterprise.billing.version"

    .line 3845
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_126

    .line 3847
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_126

    const-string v6, "Enterprise Billing "

    .line 3848
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3849
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3850
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_126
    const-string v4, ""

    .line 3854
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d2

    const-string v4, "3.0"

    .line 3858
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3857
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1bf

    .line 3861
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    const/16 v0, 0x10e

    invoke-interface {p0, v0}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isKnoxVersionSupported(I)Z

    move-result p0

    if-eqz p0, :cond_14b

    const-string p0, "3.3"

    goto :goto_14d

    :cond_14b
    const-string p0, "3.2"

    :goto_14d
    const-string/jumbo v0, "ro.config.dmverity"

    .line 3865
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "ro.config.rkp"

    .line 3867
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16b

    add-int/lit8 v0, v0, 0x2

    :cond_16b
    const-string/jumbo v1, "ro.config.kap"

    .line 3869
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17a

    add-int/lit8 v0, v0, 0x4

    :cond_17a
    const-string/jumbo v1, "ro.config.kap_default_on"

    .line 3871
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_189

    add-int/lit8 v0, v0, 0x8

    :cond_189
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1a6

    .line 3874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".00"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3875
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1c3

    .line 3877
    :cond_1a6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3878
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1c3

    .line 3880
    :cond_1bf
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1c3
    const-string v0, "TIMA "

    .line 3883
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3884
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3885
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d2
    const-string/jumbo p0, "net.knoxvpn.version"

    .line 3889
    invoke-static {p0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1fc

    .line 3890
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1fc

    const-string v0, "VPN "

    .line 3891
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3892
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3893
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1f0} :catch_1f1

    goto :goto_1fc

    :catch_1f1
    move-exception p0

    const-string v0, "EnterpriseDeviceManagerService"

    const-string v1, "Failed to get Knox Version "

    .line 3896
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3897
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3899
    :cond_1fc
    :goto_1fc
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public startDeferredServicesIfNeeded()V
    .registers 3

    .line 2811
    iget-boolean v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDeferredServicesCreated:Z

    if-nez v0, :cond_15

    .line 2812
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_15

    .line 2813
    new-instance v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 2821
    sget-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    :cond_15
    return-void
.end method

.method public startDualDARServices()V
    .registers 3

    .line 2828
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x1482

    if-ne v0, v1, :cond_43

    const-string v0, "EnterpriseDeviceManagerService"

    const-string v1, "Start DualDAR Services"

    .line 2831
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    iget-boolean v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDeferredServicesCreated:Z

    if-nez v1, :cond_30

    .line 2834
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInternalHandler:Landroid/os/Handler;

    if-eqz v1, :cond_42

    const-string v1, "Add DualDAR services and request to be ready"

    .line 2835
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInternalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 2851
    sget-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    goto :goto_42

    :cond_30
    const-string p0, "Deferred services have already created. set initial state DualDAR"

    .line 2854
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    :try_start_35
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->setInitialState()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_42

    :catch_39
    move-exception p0

    const-string v1, "DualDAR stateMachine initiate failed!"

    .line 2858
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_42
    :goto_42
    return-void

    .line 2829
    :cond_43
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only KnoxCore app can start DualDAR services"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public systemReady()V
    .registers 6

    const-string v0, "Failed to start remote desktop service."

    const-string v1, "EnterpriseDeviceManagerService"

    const-string/jumbo v2, "systemReady()"

    .line 2051
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "mConstrainedState move to system ready "

    .line 2053
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getConstrainedState()Lcom/android/server/enterprise/utils/ConstrainedState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    const-string/jumbo v2, "ro.product.first_api_level"

    const/4 v3, 0x0

    .line 2056
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_27

    .line 2057
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->adjustKnoxGuardAdmin()V

    .line 2060
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->deviceOwnerExists()Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isMdmAdminPresentInternal()Z

    move-result v2

    if-nez v2, :cond_3e

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    if-eqz v2, :cond_41

    .line 2061
    invoke-virtual {v2}, Lcom/android/server/enterprise/utils/ConstrainedState;->checkConstrainedState()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_41

    .line 2062
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->createDeferredServices()V

    .line 2066
    :cond_41
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/plm/ProcessLifecycleManager;

    move-result-object v2

    sget-object v3, Lcom/android/server/enterprise/plm/StartReason;->EDM_SYSTEM_READY:Lcom/android/server/enterprise/plm/StartReason;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->start(Lcom/android/server/enterprise/plm/StartReason;)V

    .line 2068
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->init(Landroid/content/Context;)V

    .line 2069
    new-instance v2, Lcom/android/server/enterprise/email/AccountsReceiver;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/email/AccountsReceiver;-><init>(Landroid/content/Context;)V

    .line 2070
    new-instance v2, Landroid/os/HandlerThread;

    const/16 v3, 0xa

    const-string v4, "InternalHandlerThread"

    invoke-direct {v2, v4, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2072
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 2073
    new-instance v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$InternalHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$InternalHandler;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInternalHandler:Landroid/os/Handler;

    .line 2077
    new-instance v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$2;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2089
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->loadActiveAdmins()V

    .line 2092
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->invokeSystemReadyIfNeeded()V

    .line 2094
    :try_start_7f
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->startRemoteDesktopService()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_88
    .catch Ljava/lang/Error; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_8c

    :catch_83
    move-exception v2

    .line 2098
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8c

    :catch_88
    move-exception v2

    .line 2096
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2101
    :goto_8c
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_98

    .line 2102
    new-instance v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_98
    return-void
.end method

.method public final systemReady(I)V
    .registers 4

    .line 2007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "systemReady() : mCurrentPhase = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1e0

    if-eq p1, v0, :cond_24

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_20

    goto :goto_28

    .line 2013
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->systemReady()V

    goto :goto_28

    :cond_24
    const/4 v0, 0x0

    .line 2010
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->onStartUser(I)V

    :goto_28
    const-string/jumbo p0, "restriction_policy"

    .line 2018
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz p0, :cond_36

    .line 2020
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->systemReady(I)V

    :cond_36
    return-void
.end method

.method public transferOwnerShip(Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .registers 6

    .line 1658
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->reconcileAdmin(Landroid/content/ComponentName;I)V

    const/4 v0, 0x1

    .line 1659
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(Landroid/content/ComponentName;IZ)V

    .line 1661
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 1662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "adminName"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    iget-object p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "ADMIN_INFO"

    const-string v1, "adminUid"

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p1

    .line 1665
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addMUMContainer(II)Z

    return-void
.end method

.method public final updateApplicationCacheForWpcod()V
    .registers 5

    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "updateApplicationCacheForWpcod() called"

    .line 4355
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_8
    const-string v1, "application_policy"

    .line 4357
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v1, :cond_3e

    .line 4359
    iget p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    int-to-long v2, p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateApplicationCacheForWpcod(J)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_20} :catch_21

    goto :goto_3e

    :catch_21
    move-exception p0

    .line 4361
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateApplicationCacheForWpcod error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    :goto_3e
    return-void
.end method

.method public final updateCurrentUser()V
    .registers 6

    const-string v0, "EnterpriseDeviceManagerService"

    .line 2030
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2032
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_10
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    .line 2036
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1b

    :catchall_e
    move-exception p0

    goto :goto_4d

    :catch_10
    move-exception v3

    :try_start_11
    const-string/jumbo v4, "updateCurrentUser() : cannot get current userId. "

    .line 2034
    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_e

    .line 2036
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, 0x0

    .line 2038
    :goto_1b
    iget v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mCurrentUserId:I

    if-eq v1, v3, :cond_4c

    .line 2040
    iput v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mCurrentUserId:I

    .line 2041
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCurrentUser() : User changed ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mCurrentUserId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mSystemUIAdapter:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    iget p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mCurrentUserId:I

    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->updateSystemUIMonitor(I)V

    :cond_4c
    return-void

    .line 2036
    :goto_4d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2037
    throw p0
.end method

.method public final updateDbForAndroidApiLevel()V
    .registers 5

    .line 2407
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2408
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getAndroidApiLevelFromDb()I

    move-result v1

    const-string v2, "EnterpriseDeviceManagerService"

    if-ge v1, v0, :cond_2d

    .line 2409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android API Level is just changed to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 2410
    iput-boolean v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAndroidApiLevelUpgraded:Z

    .line 2411
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2412
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlatformSdkApiLevel"

    .line 2411
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->setDatabaseUpgradeValue(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_41

    .line 2414
    :cond_2d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android API Level is "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_41
    return-void
.end method

.method public final updateRestrictionCacheForWpcod()V
    .registers 4

    const-string p0, "EnterpriseDeviceManagerService"

    const-string/jumbo v0, "updateRestrictionCacheForWpcod() called.."

    .line 4343
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_8
    const-string/jumbo v0, "restriction_policy"

    .line 4345
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v0, :cond_34

    .line 4347
    invoke-virtual {v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCacheForWpcod()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_17

    goto :goto_34

    :catch_17
    move-exception v0

    .line 4349
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRestrictionCacheForWpcod error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    :goto_34
    return-void
.end method

.method public final verifyActivePermissions(ILjava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 3425
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    if-eqz p0, :cond_32

    .line 3426
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->isProxy()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 3428
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object p0

    .line 3429
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p0, :cond_1c

    .line 3430
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public writeUmcEnrollmentData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 8

    const-string v0, "/efs/umc"

    .line 3567
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "com.samsung.android.knox.permission.KNOX_KES_INTERNAL"

    .line 3568
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3569
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 3571
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_17

    return p1

    :cond_17
    const/4 p0, 0x0

    .line 3577
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3579
    :try_start_1c
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3580
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2a

    .line 3581
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 3584
    :cond_2a
    new-instance v3, Ljava/io/File;

    const-string v4, "BulkEnrollmentProfile"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3585
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 3586
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3a
    if-eqz p2, :cond_5b

    .line 3589
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 3590
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_47} :catch_62
    .catchall {:try_start_1c .. :try_end_47} :catchall_60

    .line 3591
    :try_start_47
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 3592
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 3593
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_54} :catch_58
    .catchall {:try_start_47 .. :try_end_54} :catchall_55

    goto :goto_5b

    :catchall_55
    move-exception p1

    move-object p0, v0

    goto :goto_74

    :catch_58
    move-exception p2

    move-object p0, v0

    goto :goto_63

    :cond_5b
    :goto_5b
    const/4 p0, 0x1

    .line 3608
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_60
    move-exception p1

    goto :goto_74

    :catch_62
    move-exception p2

    .line 3599
    :goto_63
    :try_start_63
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_60

    if-eqz p0, :cond_70

    .line 3603
    :try_start_68
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_70

    :catch_6c
    move-exception p0

    .line 3605
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3608
    :cond_70
    :goto_70
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_74
    if-eqz p0, :cond_7e

    .line 3603
    :try_start_76
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_7e

    :catch_7a
    move-exception p0

    .line 3605
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3608
    :cond_7e
    :goto_7e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3609
    throw p1
.end method
