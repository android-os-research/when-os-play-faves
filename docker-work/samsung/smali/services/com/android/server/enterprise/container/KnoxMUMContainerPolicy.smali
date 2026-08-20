.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.super Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;
.source "KnoxMUMContainerPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerLicenseObserver;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$Injector;
    }
.end annotation


# static fields
.field public static final ACTION_CONTAINER_ADMIN_CHANGED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CONTAINER_ADMIN_CHANGED"

.field public static final ADMIN_ALL:I = 0x0

.field public static final CREATION_PARAMS:Ljava/lang/String; = "creation_params"

.field public static final DEBUG:Z

.field public static final FLAG_BASE:I = 0x1

.field public static final FLAG_MIGRATION:I = 0x100

.field public static final FOTA_DEBUG:Z = false

.field public static FOTA_DEBUG_TIME:J = 0x0L

.field public static final INTENT_B2B_PERSONA_CREATED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.created.b2b"

.field public static final INTENT_B2B_PERSONA_REMOVED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.removed.b2b"

.field public static final INTENT_CONTAINER_ADMIN_CHANGED_ACTION:Ljava/lang/String; = "enterprise.container.admin.changed"

.field public static final INTENT_CONTAINER_STATE_CHANGED:Ljava/lang/String; = "com.samsung.enterprise.container_state_changed"

.field public static final INTENT_CONTAINER_UNLOCKED:Ljava/lang/String; = "enterprise.container.unlocked"

.field public static final INTENT_KNOX_SETUPWIZARD_DIED:Ljava/lang/String; = "com.sec.knox.died.SETUP_WIZARD"

.field public static final INTENT_KNOX_SETUPWIZARD_KILL:Ljava/lang/String; = "com.sec.knox.kill.SETUP_WIZARD"

.field public static final INTENT_PERSONA_MDM_LOCKED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.mdmlocked"

.field public static final INTENT_PERSONA_MDM_UNLOCKED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.mdmunlocked"

.field public static final INTENT_VALIDATE_LICENSE_KEY_STATUS_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.licensekey.status"

.field public static final KEY_INVOCATION_RESULT_INT:Ljava/lang/String; = "invocation_result"

.field public static final LWC_FOLDERHEADERICON_HEIGHT:I = 0x11

.field public static final LWC_FOLDERHEADERICON_WIDTH:I = 0x5a

.field public static final MAX_FAILED_ATTEMPT_DEFAULT_FOR_SecureFolder:I = 0x14

.field public static final MDM_BASIC_CONTAINER_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_APP_MGMT"

.field public static final MDM_ENTERPRISE_APP_SEPARATION_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_APP_SEPARATION"

.field public static final MDM_ENTERPRISE_CONTAINER_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CONTAINER"

.field public static final METHOD_REMOVE_SHORTCUT:Ljava/lang/String; = "remove_shortcut"

.field public static final REMOVE_SHORTCUT_CONTENT_URI:Landroid/net/Uri;

.field public static final RESULT_FAILURE:I = -0x2

.field public static final SEAMS_RESOURCE_TYPE_SDCARD:I = 0x0

.field public static final SECURE_FOLDER_SETUP_WIZARD_CLIENT_NAME:Ljava/lang/String; = "com.samsung.knox.securefolder"

.field public static final SETUP_WIZARD_CLIENT_NAME:Ljava/lang/String; = "com.android.managedprovisioning"

.field public static TAG:Ljava/lang/String; = "KnoxMUMContainerPolicy"

.field public static TYPE_FILE_VER_PATH:Ljava/lang/String; = "/data/system/container/ver/"

.field public static final USERX_APPLICATION_DIR:Ljava/lang/String; = "/data/user/"

.field public static final VALID_KLMS_LICENSE_CODE:I = 0x5a

.field public static final isEngMode:Z

.field public static final isUserMode:Z

.field public static mContext:Landroid/content/Context;

.field public static mDefaultPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mSetupCallback:Lcom/samsung/android/knox/IEnterpriseContainerCallback;

.field public static mbadgePolicylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final BADGE_FILE_NAME:Ljava/lang/String;

.field public final CUSTOM_BASE_DIR:Ljava/lang/String;

.field public final CUSTOM_RES_DATA_PATH:Ljava/lang/String;

.field public final DEFAULT_KNOX_ICON_PATH:Ljava/lang/String;

.field public final KNOX_NFC_DISCOVERED_PACKAGE:Ljava/lang/String;

.field public final NAME_ICON_FILE_NAME:Ljava/lang/String;

.field public final NFC_DATA:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;

.field public final NFC_FILTERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field public final NFC_MIME:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;

.field public final PROFILE_ICON_FILE_NAME:Ljava/lang/String;

.field public final SECURE_FOLDER_NFC_DISCOVERED_PACKAGE:Ljava/lang/String;

.field public contentObserver:Landroid/database/ContentObserver;

.field public isPrivateModeUser:Z

.field public mActivityManager:Landroid/app/ActivityManager;

.field public mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

.field public mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

.field public mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

.field public mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

.field public mDpm:Landroid/app/admin/DevicePolicyManager;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mFirmwareVersion:Ljava/lang/String;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$Injector;

.field public final mLocalService:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;

.field public mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mParamsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/ContainerCreationParams;",
            ">;"
        }
    .end annotation
.end field

.field public mPersona:Lcom/samsung/android/knox/SemPersonaManager;

.field public mPrivateLockType:I

.field public mProvisioningLock:Ljava/lang/Object;

.field public mProvisioningObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

.field public mRIdGenerator:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public mRestart:Z

.field public mSEAMS:Lcom/android/server/SEAMService;

.field public mSdpManager:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

.field public mSetupCallbackLock:Ljava/lang/Object;

.field public mShortcutService:Landroid/content/pm/IShortcutService;

.field public mTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation
.end field

.field public mUms:Landroid/os/UserManager;

.field public rcpManagerService:Lcom/samsung/android/knox/ISemRemoteContentManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActivityManager(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/app/ActivityManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentProvisioningState(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEdmStorageProvider(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProvisioningLock(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProvisioningObserver(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRestart(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mRestart:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSetupCallbackLock(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallbackLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmProvisioningObserver(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRestart(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mRestart:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearIdentityAndStartActivityAsUser(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->clearIdentityAndStartActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfilterTypeByContainerId(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDarManagerService(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/knox/dar/DarManagerService;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDarManagerService()Lcom/android/server/knox/dar/DarManagerService;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDevicePolicyService(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/app/admin/DevicePolicyManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSecureFolderId(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSecureFolderId()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserManagerService(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/UserManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misDualDarLicenseLockedCase(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isDualDarLicenseLockedCase()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyDOPremiumActivation(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->notifyDOPremiumActivation()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyLicenseStatus(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->notifyLicenseStatus(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mprovisioningFinished(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->provisioningFinished(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendContainerAdminLockIntent(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerAdminLockIntent(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendContainerStateChangeIntent(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerStateChangeIntent(Ljava/lang/String;IIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendIntentBroadcastForContainer(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendIntentBroadcastForContainer(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowSecureFolder(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->showSecureFolder(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmSetupCallback()Lcom/samsung/android/knox/IEnterpriseContainerCallback;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/samsung/android/knox/IEnterpriseContainerCallback;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfputmSetupCallback(Lcom/samsung/android/knox/IEnterpriseContainerCallback;)V
    .registers 1

    sput-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/samsung/android/knox/IEnterpriseContainerCallback;

    return-void
.end method

.method public static bridge synthetic -$$Nest$smtranslateStatus(Lcom/samsung/android/knox/SemPersonaState;)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->translateStatus(Lcom/samsung/android/knox/SemPersonaState;)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.build.type"

    .line 299
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    .line 330
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isEngMode:Z

    const-string/jumbo v1, "user"

    .line 331
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isUserMode:Z

    const/4 v0, 0x0

    .line 334
    sput-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/samsung/android/knox/IEnterpriseContainerCallback;

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mbadgePolicylist:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 354
    sput-wide v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->FOTA_DEBUG_TIME:J

    const-string v0, "content://com.sec.android.app.launcher.settings/settings"

    .line 4695
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->REMOVE_SHORTCUT_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 408
    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$Injector;)V
    .registers 9

    .line 411
    invoke-direct {p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;-><init>()V

    const-string v0, "/system/container/resources/knox_icon.png"

    .line 315
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEFAULT_KNOX_ICON_PATH:Ljava/lang/String;

    const-string v0, "/data/misc/container3.0/"

    .line 316
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->CUSTOM_RES_DATA_PATH:Ljava/lang/String;

    const-string/jumbo v0, "profileIcon.png"

    .line 317
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->PROFILE_ICON_FILE_NAME:Ljava/lang/String;

    const-string v0, "badgeIcon.png"

    .line 318
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->BADGE_FILE_NAME:Ljava/lang/String;

    const-string/jumbo v0, "nameIcon.png"

    .line 319
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->NAME_ICON_FILE_NAME:Ljava/lang/String;

    const-string v0, "/data/misc/container2.0/"

    .line 320
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->CUSTOM_BASE_DIR:Ljava/lang/String;

    .line 335
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallbackLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 337
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 338
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    .line 342
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 343
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mUms:Landroid/os/UserManager;

    .line 344
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 345
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mRIdGenerator:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

    .line 346
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    .line 348
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    .line 352
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mActivityManager:Landroid/app/ActivityManager;

    .line 353
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mFirmwareVersion:Ljava/lang/String;

    const/4 v1, -0x1

    .line 368
    iput v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPrivateLockType:I

    const/4 v1, 0x0

    .line 369
    iput-boolean v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isPrivateModeUser:Z

    .line 374
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSEAMS:Lcom/android/server/SEAMService;

    .line 434
    new-instance v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1078
    new-instance v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->contentObserver:Landroid/database/ContentObserver;

    .line 1306
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningLock:Ljava/lang/Object;

    .line 1307
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    .line 1308
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 3743
    new-instance v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;

    invoke-direct {v3, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;-><init>(I)V

    const-string v4, "android.nfc.action.NDEF_DISCOVERED"

    .line 3745
    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;

    move-result-object v3

    const-string v5, "*/*"

    .line 3746
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;

    move-result-object v3

    .line 3747
    invoke-virtual {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->build()Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->NFC_MIME:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;

    .line 3748
    new-instance v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;

    invoke-direct {v5, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;-><init>(I)V

    .line 3750
    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;

    move-result-object v4

    const-string/jumbo v5, "http"

    .line 3751
    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;

    move-result-object v4

    const-string/jumbo v5, "https"

    .line 3752
    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;

    move-result-object v4

    const-string/jumbo v5, "tel"

    .line 3753
    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;

    move-result-object v4

    const-string/jumbo v6, "mailto"

    .line 3754
    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;

    move-result-object v4

    const-string v6, "geo"

    .line 3755
    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;

    move-result-object v4

    .line 3756
    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;

    move-result-object v4

    const-string/jumbo v5, "voicemail"

    .line 3757
    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;

    move-result-object v4

    const-string/jumbo v5, "sip"

    .line 3758
    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;

    move-result-object v4

    const-string/jumbo v5, "sms"

    .line 3759
    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;

    move-result-object v4

    const-string/jumbo v5, "smsto"

    .line 3760
    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;

    move-result-object v4

    const-string/jumbo v5, "mms"

    .line 3761
    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;

    move-result-object v4

    const-string/jumbo v5, "mmsto"

    .line 3762
    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;

    move-result-object v4

    const-string v5, "file"

    .line 3763
    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;

    move-result-object v4

    .line 3764
    invoke-virtual {v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->build()Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->NFC_DATA:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;

    aput-object v3, v5, v1

    const/4 v3, 0x1

    aput-object v4, v5, v3

    .line 3765
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->NFC_FILTERS:Ljava/util/List;

    const-string v3, "com.samsung.android.knox.nfc.discovered"

    .line 3769
    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->KNOX_NFC_DISCOVERED_PACKAGE:Ljava/lang/String;

    const-string v3, "com.samsung.android.securefolder.nfc.discovered"

    .line 3770
    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->SECURE_FOLDER_NFC_DISCOVERED_PACKAGE:Ljava/lang/String;

    .line 412
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mInjector:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$Injector;

    .line 413
    iget-object v3, p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    sput-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 414
    invoke-virtual {p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$Injector;->getEDMStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 415
    iput-boolean v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mRestart:Z

    .line 416
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 419
    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 420
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 426
    new-instance p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

    invoke-direct {p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mRIdGenerator:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

    .line 427
    new-instance p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    invoke-direct {p1, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    .line 428
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mHandler:Landroid/os/Handler;

    .line 429
    new-instance p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;

    invoke-direct {p1, p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService-IA;)V

    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mLocalService:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;

    .line 430
    const-class p0, Lcom/android/server/pm/KnoxMUMContainerPolicyInternal;

    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public static checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 5

    .line 462
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "KnoxMUMContainerPolicy"

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_55

    .line 464
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security Exception Occurred while pid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] with uid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] trying to access methodName ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] in ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] service"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 465
    sget-boolean p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz p0, :cond_54

    .line 466
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 467
    :cond_54
    throw v0

    :cond_55
    const/4 p0, 0x0

    return p0
.end method

.method public static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 4248
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x22

    if-le v0, v1, :cond_1c

    const/4 v3, 0x0

    .line 4249
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_1c

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1c

    return-object p0

    .line 4252
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFutureOrThrow(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 4853
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    :catchall_5
    move-exception p0

    .line 4855
    instance-of v0, p0, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_e

    .line 4856
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 4858
    :cond_e
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_1f

    .line 4861
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_19

    .line 4862
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 4864
    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 4859
    :cond_1f
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public static isNoteVzwProject()Z
    .registers 2

    const-string/jumbo v0, "ro.product.name"

    .line 4525
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "trltevzw"

    .line 4527
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5b

    const-string/jumbo v1, "treltevzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5b

    const-string/jumbo v1, "trhltevzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5b

    const-string/jumbo v1, "tbltevzw"

    .line 4528
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5b

    const-string/jumbo v1, "tbeltevzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5b

    const-string/jumbo v1, "tre3gvzw"

    .line 4529
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5b

    const-string/jumbo v1, "trhpltevzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5b

    const-string/jumbo v1, "nobleltevzw"

    .line 4530
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5b

    const-string/jumbo v1, "lt03ltevzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_59

    goto :goto_5b

    :cond_59
    const/4 v0, 0x0

    goto :goto_5c

    :cond_5b
    :goto_5b
    const/4 v0, 0x1

    :goto_5c
    return v0
.end method

.method public static isSystemApp(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 4412
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "packageName=null"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 4416
    :cond_c
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 4418
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "packageManager=null"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 4422
    :cond_1d
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 4424
    :try_start_21
    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_2f

    .line 4426
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "ApplicationInfo=null"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 4429
    :cond_2f
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_31} :catch_37

    const/4 v1, 0x1

    and-int/2addr p0, v1

    if-eqz p0, :cond_4e

    move v0, v1

    goto :goto_4e

    :catch_37
    move-exception p0

    .line 4433
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package is not installed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    :goto_4e
    return v0
.end method

.method public static readOMCSalesCode()Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    const-string/jumbo v1, "persist.omc.sales_code"

    .line 3902
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_28

    .line 3903
    :try_start_9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    if-nez v1, :cond_31

    :cond_11
    const-string/jumbo v2, "ro.csc.sales_code"

    .line 3904
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3905
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    if-nez v1, :cond_31

    :cond_20
    const-string/jumbo v2, "ril.sales_code"

    .line 3906
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_27} :catch_29

    goto :goto_31

    :catch_28
    move-object v1, v0

    .line 3910
    :catch_29
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "readOMCSalesCode failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :goto_31
    if-nez v1, :cond_34

    return-object v0

    :cond_34
    return-object v1
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 4259
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1f

    const/4 v2, 0x0

    .line 4260
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1f

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1f

    .line 4261
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1f
    return-object p0
.end method

.method public static translateStatus(Lcom/samsung/android/knox/SemPersonaState;)I
    .registers 3

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 798
    :cond_4
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$6;->$SwitchMap$com$samsung$android$knox$SemPersonaState:[I

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_1c

    return v0

    :pswitch_10
    const/16 p0, 0x5e

    return p0

    :pswitch_13
    const/16 p0, 0x5d

    return p0

    :pswitch_16
    const/16 p0, 0x5b

    return p0

    :pswitch_19
    const/16 p0, 0x5f

    return p0

    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_16
        :pswitch_16
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public addConfigurationType(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 8

    .line 2724
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 2725
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "Activate Container permission"

    .line 2724
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceCallingCheckPermission(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    if-eqz p1, :cond_1d

    .line 2727
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-lez v0, :cond_1d

    goto :goto_21

    .line 2730
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    :goto_21
    const/4 v1, 0x0

    if-eqz p2, :cond_9d

    .line 2733
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_9d

    .line 2736
    :cond_2b
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    if-nez p2, :cond_34

    return v1

    .line 2743
    :cond_34
    :try_start_34
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parameter name :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConfigurationTypeByName value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getConfigurationTypeByName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->processConfigurationType(Lcom/samsung/android/knox/container/KnoxConfigurationType;)Z

    move-result v2

    if-nez v2, :cond_73

    return v1

    .line 2748
    :cond_73
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getConfigurationTypeByName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_9d

    .line 2749
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->addConfigurationTypeToList(ILcom/samsung/android/knox/container/KnoxConfigurationType;)Z

    move-result p0
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_81} :catch_82

    return p0

    :catch_82
    move-exception p0

    .line 2752
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IOException : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9d
    :goto_9d
    return v1
.end method

.method public final addConfigurationTypeToList(ILcom/samsung/android/knox/container/KnoxConfigurationType;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2758
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->processNewTypeObject(ILcom/samsung/android/knox/container/KnoxConfigurationType;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    .line 2760
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public final addContainerOwnerRelationship(II)Z
    .registers 5

    .line 2137
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Add Container owner relationship."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    :try_start_7
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addMUMContainer(II)Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 2142
    sget-boolean p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isEngMode:Z

    if-eqz p0, :cond_49

    .line 2143
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Container Added to DB: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 2153
    :cond_2a
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to add container to DB: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_40} :catch_41

    goto :goto_49

    :catch_41
    move-exception p0

    .line 2156
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at addContainerToDB "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_49
    :goto_49
    const/4 p0, 0x1

    return p0
.end method

.method public final addCrossProfileIntentFilter(ILjava/lang/String;)V
    .registers 12

    .line 3772
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3774
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->NFC_FILTERS:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;

    .line 3775
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 3777
    iget-object v4, v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;->filter:Landroid/content/IntentFilter;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v5, p2

    move v7, p1

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_25} :catch_2c
    .catchall {:try_start_4 .. :try_end_25} :catchall_2a

    goto :goto_a

    .line 3783
    :cond_26
    :goto_26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_44

    :catchall_2a
    move-exception p0

    goto :goto_45

    :catch_2c
    move-exception p0

    .line 3781
    :try_start_2d
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCrossProfileIntentFilter RemoteException: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_2d .. :try_end_43} :catchall_2a

    goto :goto_26

    :goto_44
    return-void

    .line 3783
    :goto_45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3784
    throw p0
.end method

.method public addHomeShortcutToPersonal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/16 v0, 0x10e

    .line 4869
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 4870
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Only above Knox version 2.7 can support"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 4874
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 4875
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4874
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 4877
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->addShortcutToPersonal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public addNetworkSSID(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 6

    .line 4140
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4141
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNetworkSSID - ssid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4142
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_22

    return v0

    .line 4147
    :cond_22
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 4149
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSSID(I)Ljava/util/Set;

    move-result-object v1

    .line 4150
    invoke-static {p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4152
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_37

    .line 4153
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->saveBlockedList(ILjava/util/Set;)Z

    move-result p0

    return p0

    .line 4155
    :cond_37
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "addNetworkSSID failed : already exist"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public addPackageToExternalStorageBlackList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I
    .registers 12

    const-string v0, "Package Info: "

    .line 5638
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPackageToExternalStorageBlackList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_15

    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_18

    :cond_15
    const-string/jumbo v3, "null"

    :goto_18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-nez p2, :cond_26

    return v1

    .line 5640
    :cond_26
    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    .line 5641
    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 5642
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    if-eqz v2, :cond_10c

    if-eqz p2, :cond_10c

    :try_start_45
    const-string v5, ""

    .line 5647
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4b} :catch_fd
    .catchall {:try_start_45 .. :try_end_4b} :catchall_fb

    if-nez v5, :cond_10c

    .line 5649
    :try_start_4d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const-wide/16 v6, 0x40

    .line 5650
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-interface {v5, p2, v6, v7, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_59} :catch_ed
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_59} :catch_df
    .catchall {:try_start_4d .. :try_end_59} :catchall_fb

    .line 5658
    :try_start_59
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    if-eqz v5, :cond_90

    .line 5660
    sget-boolean v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v7, :cond_8e

    .line 5661
    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e
    const/4 v0, 0x1

    goto :goto_91

    :cond_90
    move v0, v6

    :goto_91
    if-eqz v0, :cond_96

    .line 5667
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    goto :goto_97

    :cond_96
    const/4 v7, 0x0

    :goto_97
    invoke-virtual {p0, v2, p2, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->addPackageToExternalStorageSBABlackListInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[Landroid/content/pm/Signature;)Z

    move-result v2

    if-eqz v2, :cond_10c

    if-eqz v0, :cond_db

    .line 5673
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 5674
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v2

    if-nez v2, :cond_b2

    .line 5675
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "addPackageToExternalStorageSBABlackList : SEAMS service cannot be null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_ae} :catch_fd
    .catchall {:try_start_59 .. :try_end_ae} :catchall_fb

    .line 5696
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_b2
    if-eqz v0, :cond_d0

    .line 5678
    :try_start_b4
    array-length v2, v0

    if-nez v2, :cond_b8

    goto :goto_d0

    .line 5683
    :cond_b8
    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    move v5, v6

    .line 5684
    :goto_bc
    array-length v7, v0

    if-ge v5, v7, :cond_ca

    .line 5685
    aget-object v7, v0, v5

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_bc

    .line 5687
    :cond_ca
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->notifyContainerServiceForPolicyUpdate(ILjava/lang/String;)V

    goto :goto_db

    .line 5679
    :cond_d0
    :goto_d0
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "addPackageToExternalStorageSBABlackList : package signature cannot be null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_d7} :catch_fd
    .catchall {:try_start_b4 .. :try_end_d7} :catchall_fb

    .line 5696
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_db
    :goto_db
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :catch_df
    move-exception p0

    .line 5655
    :try_start_e0
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e9} :catch_fd
    .catchall {:try_start_e0 .. :try_end_e9} :catchall_fb

    .line 5696
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catch_ed
    move-exception p0

    .line 5652
    :try_start_ee
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f7} :catch_fd
    .catchall {:try_start_ee .. :try_end_f7} :catchall_fb

    .line 5696
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_fb
    move-exception p0

    goto :goto_108

    :catch_fd
    move-exception p0

    .line 5694
    :try_start_fe
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_107
    .catchall {:try_start_fe .. :try_end_107} :catchall_fb

    goto :goto_10c

    .line 5696
    :goto_108
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5697
    throw p0

    .line 5696
    :cond_10c
    :goto_10c
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5698
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "addPackageToExternalStorageSBABlackList policy failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final addPackageToExternalStorageSBABlackListInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[Landroid/content/pm/Signature;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p3, :cond_1f

    .line 5605
    array-length v1, p3

    if-lez v1, :cond_1f

    .line 5606
    array-length v1, p3

    new-array v1, v1, [Ljava/lang/String;

    move v2, v0

    .line 5607
    :goto_a
    array-length v3, p3

    if-ge v2, v3, :cond_18

    .line 5608
    aget-object v3, p3, v2

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_18
    const-string p3, ","

    .line 5610
    invoke-static {p3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_21

    :cond_1f
    const-string p3, ""

    .line 5613
    :goto_21
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 5614
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "adminUid"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "packageName"

    .line 5615
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5617
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p2, "KnoxExternalStorageSBABlacklist"

    invoke-virtual {p1, p2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p1

    const-string/jumbo v2, "signatures"

    if-lez p1, :cond_53

    .line 5620
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 5621
    invoke-virtual {p1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5622
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p0

    goto :goto_5c

    .line 5625
    :cond_53
    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5626
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    :goto_5c
    if-eqz p0, :cond_67

    .line 5629
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "addPackageToExternalStorageSBABlackListInternal policy passed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_67
    return v0
.end method

.method public addPackageToExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I
    .registers 7

    .line 5715
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPackageToExternalStorageWhiteList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    :cond_13
    const-string/jumbo v2, "null"

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5716
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, -0x1

    .line 5718
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object p0

    if-nez p0, :cond_42

    .line 5720
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Application PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 5724
    :cond_42
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x2

    .line 5726
    :try_start_47
    invoke-interface {p0, p1, v3, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackageToWhiteList(Lcom/samsung/android/knox/ContextInfo;ILcom/samsung/android/knox/AppIdentity;)I

    move-result v0
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4b} :catch_51
    .catchall {:try_start_47 .. :try_end_4b} :catchall_4f

    .line 5730
    :goto_4b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5a

    :catchall_4f
    move-exception p0

    goto :goto_5b

    :catch_51
    move-exception p0

    .line 5728
    :try_start_52
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at ContainerConfigurationPolicy API addPackageToExternalStorageWhiteList "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_4f

    goto :goto_4b

    :goto_5a
    return v0

    .line 5730
    :goto_5b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5731
    throw p0
.end method

.method public addPackageToInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I
    .registers 7

    .line 5515
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPackageToInstallWhiteList is called for package - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    :cond_13
    const-string/jumbo v2, "null"

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5516
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, -0x1

    .line 5518
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object p0

    if-nez p0, :cond_42

    .line 5520
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Application PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_42
    if-eqz p2, :cond_60

    .line 5524
    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4b

    goto :goto_60

    .line 5529
    :cond_4b
    :try_start_4b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x1

    .line 5530
    invoke-interface {p0, p1, v3, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackageToWhiteList(Lcom/samsung/android/knox/ContextInfo;ILcom/samsung/android/knox/AppIdentity;)I

    move-result v0

    .line 5531
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_57} :catch_58

    goto :goto_60

    :catch_58
    move-exception p0

    .line 5533
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at ContainerConfigurationPolicy API addPackageToInstallWhiteList "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_60
    :goto_60
    return v0
.end method

.method public final addPseudoAdminForWpcod(I)I
    .registers 7

    .line 6219
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6222
    :try_start_4
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_4a
    .catchall {:try_start_4 .. :try_end_8} :catchall_48

    const-string v2, "addPseudoAdminForWpcod: containerId-"

    if-eqz p0, :cond_2e

    .line 6224
    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getOrganizationOwnedProfileUserId()I

    move-result v3

    if-ne v3, p1, :cond_2e

    .line 6225
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6226
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->addPseudoAdminForParent(I)I

    move-result p0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2a} :catch_4a
    .catchall {:try_start_c .. :try_end_2a} :catchall_48

    .line 6233
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 6228
    :cond_2e
    :try_start_2e
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not WP-C"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_47} :catch_4a
    .catchall {:try_start_2e .. :try_end_47} :catchall_48

    goto :goto_68

    :catchall_48
    move-exception p0

    goto :goto_6d

    :catch_4a
    move-exception p0

    .line 6230
    :try_start_4b
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPseudoAdminForWpcod: exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6231
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_68
    .catchall {:try_start_4b .. :try_end_68} :catchall_48

    .line 6233
    :goto_68
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, -0x1

    return p0

    :goto_6d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6234
    throw p0
.end method

.method public addSecureKeyPad(ILjava/lang/String;)Z
    .registers 8

    const-string v0, "addSecureKeyPad"

    .line 5269
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 5270
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSecureKeyPad called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5272
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSecureKeyPad(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 5274
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 5275
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "entry exists: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_3f
    const/4 v0, 0x0

    .line 5280
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v1

    .line 5281
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v1, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 5282
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 5284
    :try_start_4f
    invoke-virtual {p0, v2, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setFeatureAccessIME(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_53} :catch_59
    .catchall {:try_start_4f .. :try_end_53} :catchall_57

    .line 5288
    :goto_53
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5e

    :catchall_57
    move-exception p0

    goto :goto_75

    :catch_59
    move-exception p0

    .line 5286
    :try_start_5a
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_57

    goto :goto_53

    .line 5290
    :goto_5e
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addSecureKeyPad return value:  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 5288
    :goto_75
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5289
    throw p0
.end method

.method public final addShortcutToPersonal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v6, "The current launcher doesn\'t support shortcuts."

    .line 4741
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    .line 4742
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " addShortcutToPersonal:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4744
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v4, v1, v7, v3}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_33

    .line 4746
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "contextAsUser is null. given package may not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 4750
    :cond_33
    iget-object v5, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mShortcutService:Landroid/content/pm/IShortcutService;

    if-nez v5, :cond_47

    const-string/jumbo v5, "shortcut"

    .line 4752
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 4751
    invoke-static {v5}, Landroid/content/pm/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mShortcutService:Landroid/content/pm/IShortcutService;

    if-nez v5, :cond_47

    return v7

    .line 4758
    :cond_47
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    const/4 v10, 0x1

    .line 4762
    :try_start_4c
    iget-object v5, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mShortcutService:Landroid/content/pm/IShortcutService;

    invoke-interface {v5, v7, v10}, Landroid/content/pm/IShortcutService;->isRequestPinItemSupported(II)Z

    move-result v5

    if-eqz v5, :cond_171

    if-eqz v2, :cond_62

    .line 4771
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_62

    .line 4772
    new-instance v11, Landroid/content/ComponentName;

    invoke-direct {v11, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    :cond_62
    const/4 v11, 0x0

    .line 4774
    :goto_63
    new-instance v2, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-nez v11, :cond_8c

    const-string v12, "android.intent.category.LAUNCHER"

    .line 4777
    invoke-virtual {v2, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4778
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4779
    iget-object v12, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v2, v7, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_9b

    .line 4781
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v1, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9b

    .line 4783
    :cond_8c
    invoke-virtual {v2, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4784
    iget-object v12, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v2, v7, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    :cond_9b
    :goto_9b
    if-eqz v2, :cond_171

    .line 4789
    iget-object v12, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 4790
    iget-object v13, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v13}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 4792
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 4793
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 4794
    invoke-virtual {v13, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4796
    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " label:"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",pkgName:"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",userid"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4797
    new-instance v5, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-direct {v5, v4, v1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4798
    invoke-virtual {v5, v12}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v5

    .line 4799
    invoke-virtual {v5, v13}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v5

    .line 4800
    invoke-virtual {v5, v11}, Landroid/content/pm/ShortcutInfo$Builder;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v5

    .line 4801
    invoke-virtual {v5, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    .line 4803
    new-instance v5, Landroid/os/PersistableBundle;

    invoke-direct {v5}, Landroid/os/PersistableBundle;-><init>()V

    const-string v11, "do_not_show_popup"

    const-string v12, "com.android.server.enterprise.application.ApplicationPolicy"

    .line 4804
    invoke-virtual {v5, v11, v12}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "add_to_shortcut_personal"

    .line 4805
    invoke-virtual {v5, v11, v10}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4806
    invoke-virtual {v2, v5}, Landroid/content/pm/ShortcutInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 4807
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v2
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_117} :catch_178
    .catchall {:try_start_4c .. :try_end_117} :catchall_176

    .line 4812
    :try_start_117
    new-instance v5, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v5}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 4813
    iget-object v11, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mShortcutService:Landroid/content/pm/IShortcutService;

    invoke-interface {v11, v1, v2, v3, v5}, Landroid/content/pm/IShortcutService;->createShortcutResultIntent(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;ILcom/android/internal/infra/AndroidFuture;)V

    .line 4814
    invoke-static {v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getFutureOrThrow(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;
    :try_end_127
    .catch Landroid/os/RemoteException; {:try_start_117 .. :try_end_127} :catch_134
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_127} :catch_178
    .catchall {:try_start_117 .. :try_end_127} :catchall_176

    if-nez v3, :cond_136

    .line 4816
    :try_start_129
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12e
    .catch Landroid/os/RemoteException; {:try_start_129 .. :try_end_12e} :catch_132
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_12e} :catch_178
    .catchall {:try_start_129 .. :try_end_12e} :catchall_176

    .line 4845
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :catch_132
    move-object v5, v3

    goto :goto_135

    :catch_134
    const/4 v5, 0x0

    :goto_135
    move-object v3, v5

    :cond_136
    const/high16 v5, 0x4000000

    .line 4823
    :try_start_138
    invoke-static {v4, v7, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 4824
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "<<<--->>> before calling requestPinShortcut"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_143} :catch_178
    .catchall {:try_start_138 .. :try_end_143} :catchall_176

    .line 4827
    :try_start_143
    new-instance v11, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v11}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 4828
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mShortcutService:Landroid/content/pm/IShortcutService;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v1, p2

    move-object v5, v11

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IShortcutService;->requestPinShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;ILcom/android/internal/infra/AndroidFuture;)V

    .line 4829
    invoke-static {v11}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getFutureOrThrow(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_171

    .line 4831
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_166
    .catch Landroid/os/RemoteException; {:try_start_143 .. :try_end_166} :catch_16a
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_166} :catch_178
    .catchall {:try_start_143 .. :try_end_166} :catchall_176

    .line 4845
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    .line 4835
    :catch_16a
    :try_start_16a
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Shortcut with the same ID exists and is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_171} :catch_178
    .catchall {:try_start_16a .. :try_end_171} :catchall_176

    .line 4845
    :cond_171
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v10

    goto :goto_199

    :catchall_176
    move-exception v0

    goto :goto_19a

    :catch_178
    move-exception v0

    .line 4841
    :try_start_179
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred while adding home shortcut "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4842
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_196
    .catchall {:try_start_179 .. :try_end_196} :catchall_176

    .line 4845
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_199
    return v7

    :goto_19a
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4846
    throw v0
.end method

.method public allowLayoutSwitching(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 8

    .line 5833
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    .line 5835
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 5836
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_1c
    const-string v4, "LAYOUT_SWITCH"

    .line 5839
    invoke-virtual {p0, v0, v4, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setFeatureAccessPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v1

    .line 5840
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "allowLayoutSwitching status - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", personaId - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_40} :catch_43
    .catchall {:try_start_1c .. :try_end_40} :catchall_41

    goto :goto_47

    :catchall_41
    move-exception p0

    goto :goto_4b

    :catch_43
    move-exception p0

    .line 5842
    :try_start_44
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_41

    .line 5844
    :goto_47
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_4b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5845
    throw p0

    :cond_4f
    return v1
.end method

.method public bitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .registers 4

    .line 5147
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5148
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 5149
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public cancelCreateContainer(Lcom/samsung/android/knox/container/ContainerCreationParams;)Z
    .registers 6

    const-string v0, "cancelCreateContainer"

    .line 2084
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2085
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelCreateContainer ->  :  adminParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2088
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    const/4 v1, 0x0

    if-nez v0, :cond_25

    monitor-exit p1

    return v1

    .line 2090
    :cond_25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "state"

    const/16 v3, 0xc

    .line 2091
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2092
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->update(Landroid/os/Bundle;)Z

    .line 2093
    monitor-exit p1

    return v1

    :catchall_39
    move-exception p0

    monitor-exit p1
    :try_end_3b
    .catchall {:try_start_1e .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public checkProvisioningPreCondition(Ljava/lang/String;I)I
    .registers 4

    const/4 v0, 0x1

    .line 1736
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkProvisioningPreCondition(Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public final checkProvisioningPreCondition(Ljava/lang/String;IZ)I
    .registers 11

    .line 1740
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_d

    const-string v0, "checkProvisioningPreCondition"

    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1741
    :cond_d
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkProvisioningPreCondition called type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    invoke-static {p1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getConfigurationTypeByName(Ljava/lang/String;)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_62

    const-string/jumbo v2, "secure-folder"

    .line 1746
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    const-string v2, "2"

    .line 1747
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    const/16 v4, -0x270f

    if-ne v2, v3, :cond_4e

    .line 1748
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Cannot create Legacy container on PEACE products"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_4e
    const-string v2, "2"

    .line 1750
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_62

    instance-of v2, v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    if-eqz v2, :cond_62

    .line 1752
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Cannot create COM container on PEACE products"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 1757
    :cond_62
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const/4 v3, 0x0

    .line 1758
    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 1761
    instance-of v4, v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    const/16 v5, -0x3f6

    if-eqz v4, :cond_86

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_86

    .line 1762
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Cannot create COM container on DeskTopMode(DEX)"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 1767
    :cond_86
    :try_start_86
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v6, "desktopmode"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v4, :cond_ab

    .line 1769
    invoke-virtual {v4}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v4

    .line 1770
    instance-of v0, v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    if-eqz v0, :cond_ab

    iget v0, v4, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_ab

    .line 1771
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Cannot create COM container on DeskTopMode(Dual mode)"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_a6} :catch_a7

    return v5

    :catch_a7
    move-exception v0

    .line 1776
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1779
    :cond_ab
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p2, v2}, Lcom/android/server/pm/PersonaServiceHelper;->canAddMoreManagedProfiles(Landroid/content/Context;ZILjava/util/List;)Z

    move-result p3

    if-nez p3, :cond_bd

    .line 1780
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Cannot add more profiles"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3fd

    return p0

    .line 1784
    :cond_bd
    iget-object p3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1785
    :try_start_c0
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    if-eqz p0, :cond_cf

    iget p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->state:I

    if-le p0, v1, :cond_cf

    .line 1786
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Another provisioning is ongoing."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    :cond_cf
    monitor-exit p3
    :try_end_d0
    .catchall {:try_start_c0 .. :try_end_d0} :catchall_ef

    .line 1790
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkProvisioningPreCondition allowed:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " flags:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catchall_ef
    move-exception p0

    .line 1788
    :try_start_f0
    monitor-exit p3
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    throw p0
.end method

.method public final clearCrossProfileIntentFilters(ILjava/lang/String;)V
    .registers 6

    .line 3788
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    .line 3790
    :try_start_4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    .line 3792
    invoke-interface {v0, v1, p2}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_14
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 3797
    :cond_e
    :goto_e
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2c

    :catchall_12
    move-exception p2

    goto :goto_2d

    :catch_14
    move-exception p2

    .line 3795
    :try_start_15
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearCrossProfileIntentFilters RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_12

    goto :goto_e

    :goto_2c
    return-void

    .line 3797
    :goto_2d
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3798
    throw p2
.end method

.method public final clearIdentityAndStartActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 6

    .line 6209
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_19

    if-eqz p2, :cond_19

    if-nez p3, :cond_9

    goto :goto_19

    .line 6210
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6212
    :try_start_d
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_14

    .line 6214
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6215
    throw p0

    :cond_19
    :goto_19
    return-void
.end method

.method public clearNetworkSSID(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 4227
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4228
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearNetworkSSID - admin UID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4230
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "adminUid"

    .line 4232
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 4233
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 4235
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "ContainerOnly_wifiAP"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public clearPackagesFromExternalStorageBlackList(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 2

    .line 5564
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "clearPackagesFromExternalStorageBlackList is not available."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public clearPackagesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 5

    .line 5811
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 5813
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_22

    .line 5815
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Application PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 5820
    :cond_22
    :try_start_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5821
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearPackagesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 5822
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2d} :catch_2e

    goto :goto_36

    :catch_2e
    move-exception p0

    .line 5824
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed at ContainerConfigurationPolicy API clearPackagesFromExternalStorageWhiteList "

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_36
    return v0
.end method

.method public final convertStringCommaDelimitedToList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1d

    .line 6191
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_1d

    .line 6193
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\s*,\\s*"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 6194
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 6192
    :cond_1d
    :goto_1d
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public createContainer(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/CreationParams;I)I
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, -0x402

    if-nez p2, :cond_11

    .line 1890
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "provisioning failed. no creation param"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1894
    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/CreationParams;->getConfigurationName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getConfigurationTypeByName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2dd

    .line 1895
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_24

    goto/16 :goto_2dd

    :cond_24
    const/4 v5, 0x0

    .line 1900
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 1902
    instance-of v6, v3, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;

    const/16 v7, -0x3f6

    if-eqz v6, :cond_40

    .line 1903
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    move-result-object v8

    const-string/jumbo v9, "no_add_managed_profile"

    sget-object v10, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v8, v9, v10}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 1904
    :cond_40
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 1905
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "createContainer fails when Device Owner is enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1907
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v7

    .line 1913
    :cond_5b
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v9, Ljava/util/ArrayList;

    const-string v10, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    .line 1914
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v10, "Activate Container permission"

    .line 1913
    invoke-virtual {v0, v8, v9, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceCallingCheckPermission(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 1917
    iget-object v8, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mRIdGenerator:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

    invoke-virtual {v8}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;->getNextContainerRequestId()I

    move-result v8

    .line 1918
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/CreationParams;->getAdminPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1919
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/CreationParams;->getConfigurationName()Ljava/lang/String;

    move-result-object v10

    .line 1920
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/CreationParams;->getPasswordResetToken()Ljava/lang/String;

    move-result-object v11

    if-eqz v1, :cond_8a

    .line 1923
    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-lez v1, :cond_8a

    goto :goto_8e

    .line 1926
    :cond_8a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1928
    :goto_8e
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1929
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1933
    :try_start_96
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    if-eqz v15, :cond_a7

    .line 1934
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Only primary profile (user 0) can activate PO/DO"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catchall {:try_start_96 .. :try_end_a3} :catchall_2d8

    .line 1994
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    .line 1938
    :cond_a7
    :try_start_a7
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_ab
    .catchall {:try_start_a7 .. :try_end_ab} :catchall_2d8

    if-nez v7, :cond_b3

    const/16 v0, -0x400

    .line 1994
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_b3
    const/4 v7, 0x1

    if-eqz v9, :cond_f6

    .line 1946
    :try_start_b6
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v15
    :try_end_ba
    .catchall {:try_start_b6 .. :try_end_ba} :catchall_2d8

    if-eqz v15, :cond_bd

    goto :goto_f6

    .line 1955
    :cond_bd
    :try_start_bd
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "admin : "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", callingUid - "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v4, v9, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_e9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_bd .. :try_end_e9} :catch_eb
    .catchall {:try_start_bd .. :try_end_e9} :catchall_2d8

    move v2, v5

    goto :goto_10f

    :catch_eb
    move-exception v0

    .line 1958
    :try_start_ec
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1959
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_f2
    .catchall {:try_start_ec .. :try_end_f2} :catchall_2d8

    .line 1994
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 1948
    :cond_f6
    :goto_f6
    :try_start_f6
    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v2, :cond_106

    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mActivityManager:Landroid/app/ActivityManager;

    .line 1949
    :cond_106
    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v2, :cond_10e

    .line 1950
    invoke-virtual {v2, v12}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v9

    :cond_10e
    move v2, v7

    :goto_10f
    const v4, 0x10000060

    .line 1965
    instance-of v12, v3, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;

    if-eqz v12, :cond_119

    const v4, 0x10020060

    .line 1967
    :cond_119
    invoke-virtual {v0, v10, v4, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkProvisioningPreCondition(Ljava/lang/String;IZ)I

    move-result v4

    if-eqz v4, :cond_13a

    .line 1969
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provisioning not allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_136
    .catchall {:try_start_f6 .. :try_end_136} :catchall_2d8

    .line 1994
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 1973
    :cond_13a
    :try_start_13a
    instance-of v3, v3, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    if-eqz v3, :cond_158

    if-nez v2, :cond_149

    .line 1976
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_143
    .catchall {:try_start_13a .. :try_end_143} :catchall_2d8

    const/16 v0, -0x3ff

    .line 1994
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    .line 1981
    :cond_149
    :try_start_149
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isContainerOnlyModeAllowed()Z

    move-result v3

    if-nez v3, :cond_158

    .line 1982
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_152
    .catchall {:try_start_149 .. :try_end_152} :catchall_2d8

    const/16 v0, -0x3fd

    .line 1994
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    .line 1987
    :cond_158
    :try_start_158
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "adminUid : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x5

    const/16 v16, 0x1

    const/16 v17, 0x1

    .line 1989
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    const-string v19, "KnoxMUMContainerPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Admin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has successfully requested to create container."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    .line 1988
    invoke-static/range {v15 .. v21}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_194
    .catchall {:try_start_158 .. :try_end_194} :catchall_2d8

    .line 1994
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v6, :cond_1fc

    .line 1998
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Start to check secure folder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "type"

    .line 2001
    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "requestId"

    .line 2002
    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "isCLType"

    .line 2003
    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "pwdRstToken"

    .line 2004
    invoke-virtual {v2, v3, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "creatorUid"

    .line 2005
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "state"

    .line 2006
    invoke-virtual {v2, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "adminPackageName"

    .line 2007
    invoke-virtual {v2, v1, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState-IA;)V

    iput-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 2009
    iget-object v4, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2010
    :try_start_1d8
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->start(Landroid/os/Bundle;)Z

    .line 2011
    monitor-exit v4
    :try_end_1de
    .catchall {:try_start_1d8 .. :try_end_1de} :catchall_1f9

    .line 2013
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.knox.action.CREATE_SECURE_FOLDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.containercore"

    .line 2014
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2015
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto/16 :goto_2d7

    :catchall_1f9
    move-exception v0

    .line 2011
    :try_start_1fa
    monitor-exit v4
    :try_end_1fb
    .catchall {:try_start_1fa .. :try_end_1fb} :catchall_1f9

    throw v0

    :cond_1fc
    const/4 v3, 0x0

    .line 2017
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_20b

    .line 2021
    invoke-virtual {v0, v9}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->findAdminComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    goto :goto_20c

    :cond_20b
    move-object v6, v3

    :goto_20c
    if-eqz v6, :cond_214

    const-string v7, "android.app.extra.PROVISIONING_DEVICE_ADMIN_COMPONENT_NAME"

    .line 2024
    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_219

    :cond_214
    const-string v6, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME"

    .line 2028
    invoke-virtual {v4, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_219
    const-string v6, "com.samsung.knox.container.configType"

    .line 2032
    invoke-virtual {v4, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.samsung.knox.container.requestId"

    .line 2033
    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "com.samsung.knox.container.isCLType"

    .line 2034
    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "com.samsung.knox.container.pwdRstToken"

    .line 2035
    invoke-virtual {v4, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.knox.container.adminUid"

    .line 2036
    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2041
    :try_start_232
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v9, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_23c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_232 .. :try_end_23c} :catch_23d

    goto :goto_259

    .line 2044
    :catch_23d
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' is not found"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    :goto_259
    if-eqz v1, :cond_283

    .line 2047
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v2, :cond_283

    .line 2048
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.app.extra.PROVISIONING_LOGO_URI"

    .line 2050
    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_283
    const-string v1, "android.app.extra.PROVISIONING_MAIN_COLOR"

    const-string v2, "#3D6DCC"

    .line 2053
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 2052
    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x34020000

    .line 2054
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2055
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2d0

    .line 2056
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->clearIdentityAndStartActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2057
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createContainer: intent from User:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with requestid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d7

    .line 2060
    :cond_2d0
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Device provisioning is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d7
    return v8

    :catchall_2d8
    move-exception v0

    .line 1994
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1995
    throw v0

    .line 1896
    :cond_2dd
    :goto_2dd
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Invalid Knox Configuration Type!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x406

    return v0
.end method

.method public createContainerInternal(Lcom/samsung/android/knox/container/ContainerCreationParams;)I
    .registers 6

    const-string v0, "createContainerInternal"

    .line 1245
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1247
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getContainerId()I

    move-result v0

    .line 1248
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getAdminUid()I

    move-result p1

    .line 1250
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createContainerInternal ::  uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", containerId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_59

    .line 1251
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->addContainerOwnerRelationship(II)Z

    move-result v1

    if-nez v1, :cond_59

    .line 1252
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createContainerInternal: failed to addContainerOwnerRelationship(uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "containerId: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3f6

    return p0

    :cond_59
    const-string p1, "device_policy"

    .line 1258
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 1257
    invoke-static {p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object p1

    if-eqz p1, :cond_73

    .line 1260
    :try_start_65
    invoke-interface {p1}, Landroid/app/admin/IDevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_73

    .line 1261
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->addPseudoAdminForWpcod(I)I
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_6e} :catch_6f

    goto :goto_73

    :catch_6f
    move-exception p0

    .line 1264
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_73
    :goto_73
    const/4 p0, 0x0

    return p0
.end method

.method public createContainerMarkSuccess(Lcom/samsung/android/knox/container/ContainerCreationParams;)Z
    .registers 5

    const-string v0, "createContainerMarkSuccess"

    .line 2068
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2069
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createContainerMarkSuccess ->  : param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    monitor-enter v0

    .line 2072
    :try_start_1e
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->matchCreationParams(Lcom/samsung/android/knox/container/ContainerCreationParams;)Lcom/samsung/android/knox/container/ContainerCreationParams;

    move-result-object p0

    if-eqz p0, :cond_2b

    const/4 p1, 0x2

    .line 2075
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setRequestState(I)V

    const/4 p0, 0x1

    .line 2076
    monitor-exit v0

    return p0

    .line 2078
    :cond_2b
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public createContainerWithCallback(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/CreationParams;ILcom/samsung/android/knox/IEnterpriseContainerCallback;)I
    .registers 5

    .line 1883
    sput-object p4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/samsung/android/knox/IEnterpriseContainerCallback;

    .line 1884
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->createContainer(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/CreationParams;I)I

    move-result p0

    return p0
.end method

.method public final deactivateCoreAppAsAdmin(Landroid/content/Context;)V
    .registers 5

    .line 474
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxAdminReceiver()Landroid/content/ComponentName;

    move-result-object p1

    .line 475
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->setAdminRemovable(ZLjava/lang/String;)Z

    .line 476
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    return-void
.end method

.method public deleteHomeShortcutFromPersonal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/16 v0, 0x10e

    .line 4883
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 4884
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Only above Knox version 2.7 can support"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 4888
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4890
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeShortcutFromPersonal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public doSelfUninstall()V
    .registers 6

    .line 3488
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 3489
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "Activate Container permission"

    .line 3488
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceCallingCheckPermission(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 3492
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3493
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3497
    :try_start_1e
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 3499
    new-instance v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

    invoke-direct {v4, p0, v3, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;I)V

    .line 3514
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_30} :catch_31

    goto :goto_4c

    :catch_31
    move-exception p0

    .line 3516
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail doSelfUninstall "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    :goto_4c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    .line 5134
    instance-of p0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_b

    .line 5135
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 5138
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 5139
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5140
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5141
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 4440
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_10

    const-string p0, "Permission Denial: can\'t dump KnoxContainerManager"

    .line 4441
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 4445
    :cond_10
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mUms:Landroid/os/UserManager;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_22

    .line 4447
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "persona list is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4450
    :cond_22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/UserInfo;

    .line 4451
    iget p3, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p3, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->dumpConfigurationForPersona(ILjava/io/PrintWriter;)V

    goto :goto_26

    :cond_38
    return-void
.end method

.method public final dumpAsString()V
    .registers 2

    .line 1301
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/container/ContainerCreationParams;

    .line 1302
    invoke-virtual {v0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->describeContents()I

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final dumpConfigurationForPersona(ILjava/io/PrintWriter;)V
    .registers 5

    .line 4456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Persona:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4457
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object p1

    if-eqz p1, :cond_3a3

    .line 4459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Object dump :{ mName :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVersion :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPasswordMinimumNonLetters :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumNonLetters()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPasswordMinimumLetters : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumLetters()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPasswordMinimumNumeric : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumNumeric()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPasswordMinimumUpperCase : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumUpperCase()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPasswordMinimumLowerCase : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumLowerCase()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPasswordMinimumSymbols : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumSymbols()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPasswordQuality : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMaximumFailedPasswordsForWipe : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumFailedPasswordsForWipe()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mManagedType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getManagedType()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMaximumTimeToLock : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumTimeToLock()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCustomBadgeIcon : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCustomHomeScreenWallpaper : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEC : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isCustomizedContainerEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNameIcon : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerNameIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mECName  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mECIcon : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mECBadge : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerBadge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCustomLockScreenWallpaper : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCustomStatusLabel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCustomStatusIcon : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAppInstallationList : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mForbiddenStrings : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getForbiddenStrings()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mProtectedList : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGoogleAppsList : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMaximumCharacterOccurences : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumCharacterOccurences()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMaximumCharacterSequenceLength : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumCharacterSequenceLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMaximumNumericSequenceLength : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumNumericSequenceLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPasswordMinimumLength : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSimplePasswordEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getSimplePasswordEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMultifactorAuthEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isMultifactorAuthenticationEnforced()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPasswordPattern : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getRequiredPwdPatternRestrictions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAllowMultiwindowMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isMultiwindowModeAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAllowTaskManager : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isTaskManagerAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAllowUSBDebugging : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isUSBDebuggingAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    const-string v0, " RCP Data sync settings : "

    .line 4498
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4499
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->dumpRCPSettings(Ljava/io/PrintWriter;Ljava/util/HashMap;)V

    const-string v0, " RCP Allow User change Data sync settings : "

    .line 4500
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4501
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAllowChangeDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->dumpRCPSettings(Ljava/io/PrintWriter;Ljava/util/HashMap;)V

    const-string v0, " RCP Notification sync settings : "

    .line 4502
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4503
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getNotificationSyncPolicy()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->dumpRCPSettings(Ljava/io/PrintWriter;Ljava/util/HashMap;)V

    const-string p0, "\n"

    .line 4504
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    :cond_3a3
    return-void
.end method

.method public final dumpRCPSettings(Ljava/io/PrintWriter;Ljava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .line 4509
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_7d

    .line 4510
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 4511
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 4513
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_77

    .line 4515
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 4516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_41

    :cond_77
    const-string v0, " }"

    .line 4519
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_10

    :cond_7d
    return-void
.end method

.method public enableBluetooth(Lcom/samsung/android/knox/ContextInfo;ZLandroid/os/Bundle;)Z
    .registers 13

    .line 3584
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_f

    .line 3587
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "enableBluetooth: bluetooth adapter is null! BT not supported on this device!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3590
    :cond_f
    new-instance p3, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p3

    if-eqz p3, :cond_a6

    .line 3592
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3593
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.bluetooth"

    const-string v3, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3595
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_33
    const-string v5, "Bluetooth"

    .line 3598
    invoke-virtual {p0, p3, v5, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setFeatureAccessPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result p3
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_39} :catch_99
    .catchall {:try_start_33 .. :try_end_39} :catchall_97

    .line 3599
    :try_start_39
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enableBluetooth status - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3600
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    if-eqz v5, :cond_8b

    const-wide/16 v6, 0x40

    .line 3602
    invoke-interface {v5, v2, v6, v7, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-nez v6, :cond_80

    .line 3603
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_5f} :catch_94
    .catchall {:try_start_39 .. :try_end_5f} :catchall_97

    if-eqz v6, :cond_80

    .line 3605
    :try_start_61
    invoke-virtual {p0, v2, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->installPackage(Ljava/lang/String;I)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_65
    .catchall {:try_start_61 .. :try_end_64} :catchall_97

    goto :goto_80

    :catch_65
    move-exception v2

    .line 3607
    :try_start_66
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception occured in installing bluetooth package inside container: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_80
    :goto_80
    if-eqz p2, :cond_87

    const/4 p2, 0x1

    .line 3611
    invoke-interface {v5, v1, p2, v0, p1}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    goto :goto_8b

    :cond_87
    const/4 p2, 0x2

    .line 3613
    invoke-interface {v5, v1, p2, v0, p1}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    :cond_8b
    :goto_8b
    if-eqz p3, :cond_90

    .line 3617
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->restartBluetooth()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_90} :catch_94
    .catchall {:try_start_66 .. :try_end_90} :catchall_97

    .line 3621
    :cond_90
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a1

    :catch_94
    move-exception p0

    move v0, p3

    goto :goto_9a

    :catchall_97
    move-exception p0

    goto :goto_a2

    :catch_99
    move-exception p0

    .line 3619
    :goto_9a
    :try_start_9a
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_97

    .line 3621
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move p3, v0

    :goto_a1
    return p3

    :goto_a2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3622
    throw p0

    :cond_a6
    return v0
.end method

.method public enableExternalStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 9

    .line 3524
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3527
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 3529
    :try_start_18
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isExternalStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq p2, v3, :cond_2f

    const-string v3, "ExternalStorage"

    .line 3530
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setFeatureAccessPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_30

    const-string/jumbo v3, "knox.container.proxy.POLICY_SDCARD_POLICY_CHANGED"

    .line 3531
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, v3, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->notifyContainerServiceForPolicyUpdate(Ljava/lang/String;I)V

    :cond_2f
    move v2, v4

    :cond_30
    const/16 v3, 0x80

    if-eqz p2, :cond_3e

    .line 3540
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object p0

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/PersonaManagerService;->setAttributes(II)Z

    goto :goto_52

    .line 3542
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object p0

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/PersonaManagerService;->clearAttributes(II)Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_47} :catch_4a
    .catchall {:try_start_18 .. :try_end_47} :catchall_48

    goto :goto_52

    :catchall_48
    move-exception p0

    goto :goto_56

    :catch_4a
    move-exception p0

    .line 3545
    :try_start_4b
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Fail enableExternalStorage "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_48

    .line 3547
    :goto_52
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_56
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3548
    throw p0
.end method

.method public enableNFC(Lcom/samsung/android/knox/ContextInfo;ZLandroid/os/Bundle;)Z
    .registers 9

    .line 3671
    new-instance p3, Ljava/util/ArrayList;

    const-string v0, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_80

    .line 3673
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3674
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_1c
    const-string v3, "NFC"

    .line 3677
    invoke-virtual {p0, p3, v3, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setFeatureAccessPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0

    .line 3678
    sget-object p3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableNFC status - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_38} :catch_3b
    .catchall {:try_start_1c .. :try_end_38} :catchall_39

    goto :goto_3f

    :catchall_39
    move-exception p0

    goto :goto_7c

    :catch_3b
    move-exception p3

    .line 3680
    :try_start_3c
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_39

    .line 3682
    :goto_3f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v0, :cond_7b

    .line 3686
    sget-object p3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcast NFC policy change event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "com.samsung.android.knox.nfc.policy"

    .line 3687
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->notifyPeripheralPolicyUpdate(Ljava/lang/String;IZ)V

    .line 3688
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isSecureFolder(I)Z

    move-result p3

    if-eqz p3, :cond_70

    const-string p3, "com.samsung.android.securefolder.nfc.discovered"

    goto :goto_72

    :cond_70
    const-string p3, "com.samsung.android.knox.nfc.discovered"

    :goto_72
    if-eqz p2, :cond_78

    .line 3690
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->addCrossProfileIntentFilter(ILjava/lang/String;)V

    goto :goto_7b

    .line 3692
    :cond_78
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->clearCrossProfileIntentFilters(ILjava/lang/String;)V

    :cond_7b
    :goto_7b
    return v0

    .line 3682
    :goto_7c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3683
    throw p0

    :cond_80
    return v0
.end method

.method public enableUsbAccess(Lcom/samsung/android/knox/ContextInfo;ZLandroid/os/Bundle;)Z
    .registers 7

    .line 3807
    new-instance p3, Ljava/util/ArrayList;

    const-string v0, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_47

    .line 3809
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3810
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_1c
    const-string p1, "USB"

    .line 3813
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setFeatureAccessPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0

    .line 3814
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enableUsbAccess status - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_38} :catch_3b
    .catchall {:try_start_1c .. :try_end_38} :catchall_39

    goto :goto_3f

    :catchall_39
    move-exception p0

    goto :goto_43

    :catch_3b
    move-exception p0

    .line 3816
    :try_start_3c
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_39

    .line 3818
    :goto_3f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :goto_43
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3819
    throw p0

    :cond_47
    return v0
.end method

.method public final enforceCallingCheckPermission(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
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

    const/4 p0, 0x0

    if-eqz p2, :cond_22

    .line 1192
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_22

    .line 1193
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_d
    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1194
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    or-int/lit8 p0, p0, 0x1

    goto :goto_d

    :cond_22
    if-eqz p0, :cond_25

    return-void

    .line 1199
    :cond_25
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .registers 3
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

    .line 1181
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceContainerOwnerShipPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public enforceMultifactorAuthentication(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 6

    .line 3437
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "enforceMultifactorAuthentication is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3438
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    const-string/jumbo p1, "password_policy"

    .line 3441
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    check-cast p1, Lcom/android/server/enterprise/security/PasswordPolicy;

    const/4 v0, 0x0

    if-eqz p1, :cond_3a

    .line 3444
    :try_start_26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3445
    invoke-virtual {p1, p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setMultifactorAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 3446
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_31} :catch_32

    goto :goto_3a

    :catch_32
    move-exception p0

    .line 3449
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at ContainerConfigurationPolicy API enforceMultifactorAuthentication "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3452
    :cond_3a
    :goto_3a
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enforceMultifactorAuthentication result - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .registers 3
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

    .line 1177
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 1205
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_WIFI"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1206
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1205
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final filterType(ILjava/lang/String;)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .registers 5

    .line 1136
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 1137
    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v1

    if-ne v1, p1, :cond_6

    return-object v0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public final filterType(I)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .line 1145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1146
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 1147
    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v2

    if-ne v2, p1, :cond_b

    .line 1148
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_21
    return-object v0
.end method

.method public final filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .registers 5

    .line 1155
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 1156
    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v1

    .line 1157
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1158
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1a

    return-object v0

    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findAdminComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 7

    .line 1228
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 1231
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1232
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1233
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-object v0

    :cond_3b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findMatchingComponent(II)Landroid/content/ComponentName;
    .registers 12

    .line 2181
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adminPackageUid parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    new-instance v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 2183
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x8080

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c2

    .line 2187
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3c

    goto/16 :goto_c2

    .line 2191
    :cond_3c
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_c1

    .line 2192
    array-length v2, p2

    if-lez v2, :cond_c1

    const/4 v2, 0x0

    .line 2193
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_50
    if-ge v2, v3, :cond_c1

    .line 2195
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 2196
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2197
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_be

    .line 2200
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "packageName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v6

    if-eqz v6, :cond_8b

    const-string v6, "com.samsung.android.knox.containeragent"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8b

    .line 2202
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Skipping containerAgent3 for secure folder case"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_be

    .line 2205
    :cond_8b
    invoke-virtual {p0, p2, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->matchPackages([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 2207
    :try_start_91
    new-instance v5, Landroid/app/admin/DeviceAdminInfo;

    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 2208
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin match returning component: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p0
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_b6} :catch_b7

    return-object p0

    .line 2211
    :catch_b7
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Exception throw during creating  DeviceAdminInfo "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_be
    :goto_be
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    :cond_c1
    return-object v1

    .line 2188
    :cond_c2
    :goto_c2
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "No admins found."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public forceResetPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)I
    .registers 14

    const/4 v0, -0x2

    if-nez p1, :cond_4

    return v0

    .line 2486
    :cond_4
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceResetPassword: containerId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 2507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset Password requested for container "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "cxtInfo"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v4, "resetPwdKey"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v4, "timeout"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    .line 2508
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 2510
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    if-eqz v1, :cond_143

    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSdpManager()Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    move-result-object v1

    if-nez v1, :cond_76

    goto/16 :goto_143

    .line 2513
    :cond_76
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2514
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSdpManager()Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    move-result-object v2

    .line 2516
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2517
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2519
    :try_start_82
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_86} :catch_12c
    .catchall {:try_start_82 .. :try_end_86} :catchall_12a

    if-nez v6, :cond_8f

    .line 2575
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->destroy()V

    .line 2576
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    .line 2523
    :cond_8f
    :try_start_8f
    invoke-virtual {v2, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->cancelLegacyResetTimeout(I)V

    .line 2524
    invoke-virtual {v2, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->clearLegacyResetStatus(I)V

    const-string v6, "Prepare escrow token"

    .line 2526
    invoke-static {v6}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2527
    invoke-virtual {v2, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getTokenHandle(I)J

    move-result-wide v6

    if-eqz p2, :cond_a5

    .line 2529
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    goto :goto_a9

    .line 2530
    :cond_a5
    invoke-virtual {v2, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getResetToken(I)[B

    move-result-object p2

    :goto_a9
    const-string v8, "Verify token with token handle"

    .line 2532
    invoke-static {v8}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    const/4 v9, -0x1

    if-eqz v8, :cond_124

    if-nez p2, :cond_b8

    goto :goto_124

    .line 2538
    :cond_b8
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object p0

    invoke-interface {p0, p2, v6, v7, p1}, Lcom/android/internal/widget/ILockSettings;->verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 2539
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result p0

    if-nez p0, :cond_d2

    const-string p0, "Reset password failed (Invalid legacy token)"

    .line 2540
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_cb} :catch_12c
    .catchall {:try_start_8f .. :try_end_cb} :catchall_12a

    .line 2575
    :goto_cb
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->destroy()V

    .line 2576
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    .line 2544
    :cond_d2
    :try_start_d2
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    if-ne v1, p0, :cond_d7

    goto :goto_cb

    :cond_d7
    const-string p0, "Reset password start"

    .line 2548
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 2550
    invoke-virtual {v2, p2, p1, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onLegacyResetCredentialRequested([BII)V

    .line 2552
    invoke-static {p2}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    .line 2554
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p2, "android.intent.extra.user_handle"

    .line 2555
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "knox.container.proxy.COMMAND_RESET_PASSWORD"

    .line 2556
    invoke-static {p2, p0}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const/16 p2, 0x63

    if-eqz p0, :cond_fd

    const-string p2, "android.intent.extra.RETURN_RESULT"

    .line 2560
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 2562
    :cond_fd
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Reset password result: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    if-nez p2, :cond_11d

    .line 2565
    invoke-virtual {v2, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handleLegacyResetPassword(I)V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_116} :catch_12c
    .catchall {:try_start_d2 .. :try_end_116} :catchall_12a

    .line 2575
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->destroy()V

    .line 2576
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 2568
    :cond_11d
    :try_start_11d
    invoke-virtual {v2, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->cancelLegacyResetTimeout(I)V

    .line 2569
    invoke-virtual {v2, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->clearLegacyResetStatus(I)V

    goto :goto_135

    :cond_124
    :goto_124
    const-string p0, "Reset password failed (Legacy token not found)"

    .line 2534
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_129} :catch_12c
    .catchall {:try_start_11d .. :try_end_129} :catchall_12a

    goto :goto_cb

    :catchall_12a
    move-exception p0

    goto :goto_13c

    :catch_12c
    move-exception p0

    .line 2572
    :try_start_12d
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "Unexpected exception while force reset password"

    .line 2573
    invoke-static {p1, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_135
    .catchall {:try_start_12d .. :try_end_135} :catchall_12a

    .line 2575
    :goto_135
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->destroy()V

    .line 2576
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    .line 2575
    :goto_13c
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->destroy()V

    .line 2576
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2577
    throw p0

    :cond_143
    :goto_143
    return v0
.end method

.method public final getAdminComponentName(II)Landroid/content/ComponentName;
    .registers 13

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_c8

    .line 4326
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4328
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v3

    .line 4330
    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_a5

    .line 4332
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 4333
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 4334
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current admin loop :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_1a

    if-eqz v2, :cond_1a

    const/4 v6, 0x0

    .line 4338
    :try_start_45
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6
    :try_end_49
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_45 .. :try_end_49} :catch_4a

    goto :goto_62

    .line 4340
    :catch_4a
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getting app info failed. package Name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v0

    .line 4343
    :goto_62
    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adminAppInfo Uid :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_73

    iget v9, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_74

    :cond_73
    move v9, v1

    :goto_74
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_1a

    .line 4344
    iget v7, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v7, p2, :cond_1a

    .line 4345
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Admin found :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    :cond_a5
    if-nez v0, :cond_c8

    .line 4356
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->findMatchingComponent(II)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_c8

    .line 4358
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "packageName : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4359
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4358
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c8
    return-object v0
.end method

.method public final getAdminId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .registers 6

    .line 4291
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0

    .line 4292
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User Id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4293
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object p1

    const/4 v0, 0x0

    .line 4294
    invoke-virtual {p1, p2, v0, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_91

    .line 4297
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object p0

    const/16 p1, -0x2710

    .line 4299
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminsInfo(I)Ljava/util/List;

    move-result-object p0

    .line 4300
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_35
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 4301
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "packages Info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4302
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 4303
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4304
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Admin id : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab

    :cond_8f
    const/4 p0, -0x1

    goto :goto_ab

    .line 4309
    :cond_91
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "App Info : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4310
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_ab
    return p0
.end method

.method public getAppSeparationConfig()Landroid/os/Bundle;
    .registers 8

    const-string v0, "AppSeparationTable"

    const/4 v1, 0x0

    .line 6059
    :try_start_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 6061
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v3

    if-nez v3, :cond_18

    .line 6063
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v0, "getAppSeparationConfig(): no record. Return null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 6067
    :cond_18
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "APP_SEPARATION_OUTSIDE"

    .line 6068
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "AppSeparationOutside"

    invoke-virtual {v5, v0, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v6, 0x0

    :goto_2c
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "APP_SEPARATION_APP_LIST"

    .line 6069
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "AppSeparationApplist"

    invoke-virtual {v5, v0, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->convertStringCommaDelimitedToList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_40} :catch_41

    return-object v3

    :catch_41
    move-exception p0

    .line 6072
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppSeparationConfig() exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;
    .registers 2

    .line 5454
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    if-nez v0, :cond_10

    const-string v0, "application_policy"

    .line 5456
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 5455
    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 5459
    :cond_10
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    return-object p0
.end method

.method public getConfigurationType(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1b

    .line 3300
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-lez v0, :cond_1b

    .line 3302
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 3303
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    goto :goto_1f

    .line 3306
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    :goto_1f
    const/4 v0, 0x0

    .line 3311
    :try_start_20
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3312
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_54

    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_54

    if-ne p2, v1, :cond_45

    new-array p1, v4, [Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 3314
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object p0

    aput-object p0, p1, v3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3316
    :cond_45
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Caller inside persona ? : false throw exception"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3317
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No priviledge on containerId "

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3320
    :cond_54
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object p0

    const/16 p2, 0x3e8

    if-eq p1, p2, :cond_70

    const/16 p2, 0x1482

    if-eq p1, p2, :cond_70

    if-eqz p0, :cond_6f

    .line 3324
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result p2

    if-eq p2, p1, :cond_70

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result p1

    if-nez p1, :cond_6f

    goto :goto_70

    :cond_6f
    return-object v0

    :cond_70
    :goto_70
    new-array p1, v4, [Lcom/samsung/android/knox/container/KnoxConfigurationType;

    aput-object p0, p1, v3

    .line 3325
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_78} :catch_79

    return-object p0

    :catch_79
    move-exception p0

    .line 3331
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getConfigurationTypeByName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1b

    .line 2612
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-lez v0, :cond_1b

    .line 2613
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 2614
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    goto :goto_1f

    .line 2616
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 2619
    :goto_1f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2620
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 2622
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 2624
    :try_start_32
    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_36} :catch_3d
    .catchall {:try_start_32 .. :try_end_36} :catchall_3a

    .line 2629
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_45

    :catchall_3a
    move-exception p0

    goto/16 :goto_c1

    :catch_3d
    move-exception v0

    .line 2627
    :try_start_3e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3a

    .line 2629
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v0, v4

    .line 2632
    :goto_45
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 2633
    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 2634
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfigurationTypeByName type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " adminUid "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2635
    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " callingUid "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2634
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "com.samsung.android.knox.containercore"

    .line 2636
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p2, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_b7

    const-string p0, "com.android.managedprovisioning"

    .line 2637
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b7

    const/16 p0, 0x3e8

    if-eq p1, p0, :cond_b7

    .line 2639
    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result p0

    if-eqz p0, :cond_b7

    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result p0

    if-ne p0, p1, :cond_ae

    goto :goto_b7

    :cond_ae
    new-array p0, v2, [Lcom/samsung/android/knox/container/KnoxConfigurationType;

    aput-object v1, p0, p2

    .line 2642
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_b7
    :goto_b7
    new-array p0, v2, [Lcom/samsung/android/knox/container/KnoxConfigurationType;

    aput-object v1, p0, p2

    .line 2640
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_c0
    return-object v4

    .line 2629
    :goto_c1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2630
    throw p0
.end method

.method public getConfigurationTypes(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1b

    .line 3367
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-lez v0, :cond_1b

    .line 3368
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 3369
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    goto :goto_1f

    .line 3371
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    :goto_1f
    const/4 v0, 0x0

    .line 3374
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxConfigurationType: input uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3c
    :goto_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_93

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 3376
    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v2

    if-eq v2, p1, :cond_54

    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v2

    if-nez v2, :cond_3c

    .line 3377
    :cond_54
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KnoxConfigurationType: name, uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_81

    .line 3379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3381
    :cond_81
    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "secure-folder"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    goto :goto_3c

    .line 3384
    :cond_8f
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_93
    return-object v0
.end method

.method public getContainerCreationParams(I)Lcom/samsung/android/knox/container/ContainerCreationParams;
    .registers 3

    const-string v0, "getContainerCreationParams"

    .line 3356
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3357
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getCreationParams(I)Lcom/samsung/android/knox/container/ContainerCreationParams;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 3359
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->clone()Lcom/samsung/android/knox/container/ContainerCreationParams;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getContainers(I)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, " "

    .line 2305
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContainers: admin uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2308
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 2311
    :try_start_22
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    move-result-object v5

    if-eqz v5, :cond_31

    .line 2312
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    :cond_31
    if-eqz v4, :cond_82

    .line 2314
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_37
    :goto_37
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_82

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 2315
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-nez v6, :cond_4a

    goto :goto_37

    .line 2316
    :cond_4a
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v6

    .line 2317
    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persona found with id , creator uid, passed uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v6, :cond_37

    .line 2319
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_81} :catch_88
    .catchall {:try_start_22 .. :try_end_81} :catchall_86

    goto :goto_37

    .line 2326
    :cond_82
    :goto_82
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a4

    :catchall_86
    move-exception p0

    goto :goto_a5

    :catch_88
    move-exception p0

    .line 2324
    :try_start_89
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContainers exception: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catchall {:try_start_89 .. :try_end_a3} :catchall_86

    goto :goto_82

    :goto_a4
    return-object v1

    .line 2326
    :goto_a5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2327
    throw p0
.end method

.method public getContainers(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1b

    .line 2334
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-lez v0, :cond_1b

    .line 2335
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 2336
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    goto :goto_1f

    .line 2338
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 2340
    :goto_1f
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getContainers(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getCreationParams(I)Lcom/samsung/android/knox/container/ContainerCreationParams;
    .registers 7

    .line 1285
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    monitor-enter v0

    .line 1286
    :try_start_3
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_38

    .line 1287
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/container/ContainerCreationParams;

    .line 1288
    invoke-virtual {v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getConfigurationType()Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 1289
    invoke-virtual {v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getConfigurationType()Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v3

    .line 1290
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move-object v2, v1

    goto :goto_12

    .line 1296
    :cond_38
    monitor-exit v0

    return-object v2

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public getCustomResource(ILjava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 2651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/misc/container3.0/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "custom-container-icon"

    .line 2652
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "custom-name-icon"

    const-string v5, "custom-badge-icon"

    if-eqz v2, :cond_36

    .line 2653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "profileIcon.png"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_68

    .line 2654
    :cond_36
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 2655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "badgeIcon.png"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_68

    .line 2656
    :cond_4e
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 2657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "nameIcon.png"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_68

    :cond_67
    move-object v0, v3

    .line 2662
    :goto_68
    sget-boolean v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v2, :cond_82

    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PATH = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    if-eqz v0, :cond_90

    .line 2664
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2665
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_90

    return-object v0

    .line 2670
    :cond_90
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object p0

    if-eqz p0, :cond_d7

    .line 2671
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isCustomizedContainerEnabled()Z

    move-result p1

    if-eqz p1, :cond_d7

    .line 2672
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    .line 2673
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerIcon()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2674
    :cond_a7
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b2

    .line 2675
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerBadge()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2676
    :cond_b2
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bd

    .line 2677
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerNameIcon()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_bd
    const-string p1, "custom-lock-screen-wallpaper"

    .line 2678
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ca

    .line 2679
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_ca
    const-string p1, "custom-home-screen-wallpaper"

    .line 2680
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d7

    .line 2681
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d7
    return-object v3
.end method

.method public final getDarManagerService()Lcom/android/server/knox/dar/DarManagerService;
    .registers 2

    .line 2584
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    if-nez v0, :cond_e

    const-string v0, "dar"

    .line 2585
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/dar/DarManagerService;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    .line 2587
    :cond_e
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    return-object p0
.end method

.method public getDefaultConfigurationTypes()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    const-string v0, "getDefaultConfigurationTypes"

    .line 3339
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3341
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_c
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 3342
    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v2

    if-nez v2, :cond_c

    .line 3343
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KnoxConfigurationType: name, uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_4b

    .line 3345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3347
    :cond_4b
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_4f
    return-object v0
.end method

.method public final getDefaultLauncher(I)Ljava/lang/String;
    .registers 8

    .line 4996
    new-instance v1, Landroid/content/Intent;

    const-string p0, "android.intent.action.MAIN"

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p0, "android.intent.category.HOME"

    .line 4997
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4998
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v2, 0x0

    const-wide/32 v3, 0x10000

    move v5, p1

    .line 5000
    :try_start_15
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_56

    .line 5001
    iget-object p1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p1, :cond_56

    .line 5002
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5003
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getDefaultLauncher currentLauncher -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_51} :catch_52

    return-object p0

    :catch_52
    move-exception p0

    .line 5007
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_56
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDefaultTypeObj(Z)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .registers 5

    .line 2767
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDefaultConfigurationTypes()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_26

    .line 2768
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_26

    .line 2772
    :cond_e
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 2773
    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isUserManaged()Z

    move-result v2

    if-ne v2, p1, :cond_12

    move-object v0, v1

    goto :goto_12

    :cond_26
    :goto_26
    return-object v0
.end method

.method public final getDeviceFirmwareVersion()Ljava/lang/String;
    .registers 5

    .line 4073
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mFirmwareVersion:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string/jumbo v0, "ro.build.PDA"

    const-string v1, "Unknown"

    .line 4076
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4077
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1. pdaVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4078
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4079
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2. pdaVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4083
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;
    .registers 3

    .line 855
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_10

    .line 856
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 858
    :cond_10
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 1167
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 1168
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 1170
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public final getEnabledLaunchers(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 4967
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4969
    :try_start_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 4970
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4972
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const v2, 0x10040

    .line 4973
    invoke-virtual {v1, v0, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_88

    .line 4975
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_24
    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 4976
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_24

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_24

    .line 4977
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEnabledLaunchers: packageName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and  name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4978
    new-instance v1, Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4979
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_70} :catch_71

    goto :goto_24

    :catch_71
    move-exception p1

    .line 4984
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in getEnabledLaunchers "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_88
    return-object p0
.end method

.method public getEnforceAuthForContainer(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 3394
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "getEnforceAuthForContainer failed > returning true"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public getFIDOInfo(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;
    .registers 8

    const-string v0, "KnoxFIDOSettingTable"

    .line 5204
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "getFIDOInfo()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5205
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 5206
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v1, 0x0

    .line 5208
    :try_start_1e
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "cid"

    .line 5209
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5211
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p1, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p1

    if-nez p1, :cond_3e

    .line 5213
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "getFIDOInfo(): no record. Return null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 5217
    :cond_3e
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "fido_request_uri"

    .line 5218
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "request"

    invoke-virtual {v4, v0, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "fido_response_uri"

    .line 5219
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "respond"

    invoke-virtual {p0, v0, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_5f} :catch_60

    return-object p1

    :catch_60
    move-exception p0

    .line 5222
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFIDOInfo() exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final getFeatureAccessIME(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 7

    const-string v0, "featureValue"

    .line 5410
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 5412
    :try_start_6
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFeatureAccessIME combinedUid-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5413
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "adminUid"

    .line 5414
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "featureType"

    const-string v3, "KEYPAD"

    .line 5415
    invoke-virtual {v2, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5416
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "KnoxFeatureAccess"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_8f

    .line 5418
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8f

    .line 5419
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_49
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 5420
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5421
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFeatureAccessIME value- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_49

    .line 5422
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_75} :catch_78

    if-lez v1, :cond_49

    return-object p1

    :catch_78
    move-exception p0

    .line 5428
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFeatureAccessIME exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFeatureAccessPermission(ILjava/lang/String;)Z
    .registers 8

    const-string v0, "featureValue"

    .line 4004
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 4007
    :try_start_7
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v3

    .line 4008
    invoke-static {p1, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    .line 4009
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "adminUid"

    .line 4010
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "featureType"

    .line 4011
    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4012
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "KnoxFeatureAccess"

    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_56

    .line 4014
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_56

    .line 4015
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_38
    :goto_38
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 4016
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 4017
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_38

    .line 4018
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    move v2, p1

    goto :goto_38

    :cond_56
    const-string p0, "LAYOUT_SWITCH"

    .line 4023
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string p0, "Bluetooth"

    .line 4027
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_74

    const-string p0, "USB"

    .line 4028
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_74

    const-string p0, "NFC"

    .line 4029
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_72} :catch_76

    if-eqz p0, :cond_8d

    :cond_74
    const/4 v2, 0x1

    goto :goto_8d

    :catch_76
    move-exception p0

    .line 4034
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFeatureAccessPermission exception "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8d
    :goto_8d
    return v2
.end method

.method public getHibernationTimeout(Lcom/samsung/android/knox/ContextInfo;)J
    .registers 9

    .line 4102
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    const-wide/16 v0, 0x1388

    if-eqz p1, :cond_9d

    const-string/jumbo v2, "propertyValue"

    .line 4104
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    .line 4107
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 4108
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "cid"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "propertyName"

    const-string v6, "HibernationTimeout"

    .line 4109
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4110
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result p1

    .line 4111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v5, "adminUid"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4112
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "CONTAINER_POLICY"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_95

    .line 4114
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_95

    .line 4115
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "time=- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4116
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_92

    const-string p1, "0"

    .line 4117
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8d

    goto :goto_92

    .line 4120
    :cond_8d
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_92
    :goto_92
    const-wide/16 p0, 0x0

    return-wide p0

    .line 4123
    :cond_95
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "getHibernationTimeout failed to get value from DB > returning default value"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    .line 4127
    :cond_9d
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "getHibernationTimeout failed > returning default value."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public getKnoxCustomBadgePolicy()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1223
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mbadgePolicylist:Ljava/util/List;

    return-object p0
.end method

.method public final getLauncherRefreshIntent(I)Landroid/content/Intent;
    .registers 3

    .line 5990
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.container.MANAGED_PROFILE_REFRESH"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.knox.container.userid"

    .line 5991
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.samsung.sec.knox.EXTRA_PERSONA_ID"

    const/4 v0, 0x0

    .line 5992
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public final getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .registers 2

    .line 2592
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_11

    const-string/jumbo v0, "lock_settings"

    .line 2594
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2593
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 2596
    :cond_11
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object p0
.end method

.method public getNetworkSSID(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4203
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4204
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkSSID - adminUid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4206
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4207
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSSID(I)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 4208
    invoke-static {p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_3f
    return-object v0
.end method

.method public getOwnContainers()[Lcom/samsung/android/knox/container/EnterpriseContainerObject;
    .registers 13

    const-string v0, " "

    .line 2346
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2349
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 2352
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    move-result-object v5

    if-eqz v5, :cond_1b

    .line 2353
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    goto :goto_1c

    :cond_1b
    move-object v5, v4

    :goto_1c
    if-eqz v5, :cond_87

    .line 2355
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_23} :catch_8e
    .catchall {:try_start_b .. :try_end_23} :catchall_8c

    .line 2357
    :try_start_23
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_27
    :goto_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_88

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2358
    iget-object v8, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v8

    .line 2359
    sget-boolean v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v9, :cond_63

    .line 2360
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Persona found with id , creator uid, passed uid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    if-ne v8, v1, :cond_27

    .line 2362
    new-instance v8, Lcom/samsung/android/knox/container/EnterpriseContainerObject;

    invoke-direct {v8}, Lcom/samsung/android/knox/container/EnterpriseContainerObject;-><init>()V

    .line 2363
    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->setContainerId(I)V

    .line 2364
    invoke-virtual {v8, v1}, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->setContainerAdmin(I)V

    .line 2365
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    move-result-object v9

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 2366
    iget-object v7, v7, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->setContainerName(Ljava/lang/String;)V

    .line 2367
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_84} :catch_85
    .catchall {:try_start_23 .. :try_end_84} :catchall_8c

    goto :goto_27

    :catch_85
    move-exception p0

    goto :goto_90

    :cond_87
    move-object v6, v4

    .line 2374
    :cond_88
    :goto_88
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_ac

    :catchall_8c
    move-exception p0

    goto :goto_c2

    :catch_8e
    move-exception p0

    move-object v6, v4

    .line 2372
    :goto_90
    :try_start_90
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getOwnContainers exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catchall {:try_start_90 .. :try_end_ab} :catchall_8c

    goto :goto_88

    :goto_ac
    if-eqz v6, :cond_c1

    .line 2376
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c1

    .line 2377
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/samsung/android/knox/container/EnterpriseContainerObject;

    invoke-interface {v6, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, [Lcom/samsung/android/knox/container/EnterpriseContainerObject;

    :cond_c1
    return-object v4

    .line 2374
    :goto_c2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2375
    throw p0
.end method

.method public getPackageNameFromPID(I)Ljava/lang/String;
    .registers 4

    .line 1210
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 1212
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1213
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v1, p1, :cond_c

    .line 1214
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    :cond_1f
    const-string p0, ""

    return-object p0
.end method

.method public getPackageSignaturesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .registers 6

    .line 5788
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getPackageSignaturesFromExternalStorageWhiteList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5789
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 5791
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_2a

    .line 5793
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Application PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 5798
    :cond_2a
    :try_start_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5799
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackageSignaturesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 5800
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_35} :catch_36

    goto :goto_3e

    :catch_36
    move-exception p0

    .line 5802
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at ContainerConfigurationPolicy API getPackageSignaturesFromExternalStorageWhiteList "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3e
    return-object v0
.end method

.method public getPackagesFromExternalStorageBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5570
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getPackagesFromExternalStorageBlackList "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5571
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_87

    const-string/jumbo v1, "packageName"

    .line 5573
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 5575
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 5576
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v4, "adminUid"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5577
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "KnoxExternalStorageSBABlacklist"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_87

    .line 5579
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_87

    .line 5580
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5581
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4e
    :goto_4e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 5582
    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4e

    .line 5584
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 5587
    :cond_64
    sget-boolean p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz p0, :cond_7f

    .line 5588
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPackagesFromExternalStorageSBABlackList SUCCESS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5589
    :cond_7f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_86

    move-object v0, p1

    :cond_86
    return-object v0

    .line 5592
    :cond_87
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "getPackagesFromExternalStorageSBABlackList policy returning null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getPackagesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5765
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getPackagesFromExternalStorageWhiteList "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5766
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 5768
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_2a

    .line 5770
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Application PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 5775
    :cond_2a
    :try_start_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x2

    .line 5776
    invoke-interface {p0, p1, v3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v0

    .line 5777
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_36} :catch_37

    goto :goto_3f

    :catch_37
    move-exception p0

    .line 5779
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed at ContainerConfigurationPolicy API getPackagesFromExternalStorageWhiteList "

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3f
    return-object v0
.end method

.method public getPackagesFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5541
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getPackagesFromInstallWhiteList is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5542
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 5544
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_2a

    .line 5546
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Application PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 5551
    :cond_2a
    :try_start_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x1

    .line 5552
    invoke-interface {p0, p1, v3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v0

    .line 5553
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_36} :catch_37

    goto :goto_3f

    :catch_37
    move-exception p0

    .line 5555
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed at ContainerConfigurationPolicy API getPackagesFromInstallWhiteList "

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3f
    return-object v0
.end method

.method public getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getProvisioningState()Landroid/os/Bundle;
    .registers 3

    const-string/jumbo v0, "getProvisioningState"

    .line 1723
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1724
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1725
    :try_start_9
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    if-nez p0, :cond_1c

    .line 1726
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "no ongoing provisioning"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    monitor-exit v0

    return-object p0

    .line 1730
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_22
    move-exception p0

    .line 1731
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final getResolveInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ResolveInfo;
    .registers 4

    .line 4373
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 4374
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4375
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 4376
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 4378
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const/16 v0, 0x80

    .line 4377
    invoke-virtual {p1, p0, v0, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 4379
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_28

    const/4 p1, 0x0

    .line 4380
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    .line 4381
    :goto_29
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "getResolveInfo "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final getSDSAminUid()I
    .registers 5

    const/4 p0, 0x0

    .line 5045
    :try_start_1
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 5047
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 5049
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getSDSAminUid() : KnoxContainerManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 5052
    :cond_1c
    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v0

    .line 5053
    invoke-virtual {v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getMySinglePackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 5055
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_31

    :cond_30
    return p0

    :catch_31
    move-exception v0

    .line 5059
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in getSDSAminUid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final getSEAMSService()Lcom/android/server/SEAMService;
    .registers 2

    .line 454
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSEAMS:Lcom/android/server/SEAMService;

    if-nez v0, :cond_e

    const-string v0, "SEAMService"

    .line 455
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/SEAMService;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSEAMS:Lcom/android/server/SEAMService;

    .line 457
    :cond_e
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSEAMS:Lcom/android/server/SEAMService;

    return-object p0
.end method

.method public final getSSID(I)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4214
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "ContainerOnly_wifiAP"

    const-string/jumbo v1, "wifiSSIDforKNOX"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4216
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_2a

    .line 4217
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2a

    const-string v0, ","

    .line 4218
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 4219
    array-length v0, p0

    const/4 v1, 0x0

    :goto_20
    if-ge v1, v0, :cond_2a

    aget-object v2, p0, v1

    .line 4220
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_2a
    return-object p1
.end method

.method public final getSdpManager()Lcom/android/server/knox/dar/sdp/SdpManagerImpl;
    .registers 2

    .line 2600
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSdpManager:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    if-nez v0, :cond_12

    .line 2601
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDarManagerService()Lcom/android/server/knox/dar/DarManagerService;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2602
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    invoke-virtual {v0}, Lcom/android/server/knox/dar/DarManagerService;->getSdpManager()Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSdpManager:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    .line 2605
    :cond_12
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSdpManager:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    return-object p0
.end method

.method public final getSecureFolderId()I
    .registers 3

    .line 1095
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const/4 v0, 0x1

    .line 1096
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 1097
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    .line 1098
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 1099
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1100
    iget p0, v0, Landroid/content/pm/UserInfo;->id:I

    return p0

    :cond_31
    const/4 p0, -0x1

    return p0
.end method

.method public getSecureKeyPad(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "getSecureKeyPad"

    .line 5360
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 5361
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSecureKeyPad called: userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5362
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 5363
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 5364
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 p1, 0x0

    .line 5367
    :try_start_2d
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getFeatureAccessIME(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object p0

    .line 5368
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSecureKeyPad: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_5b

    .line 5370
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    goto :goto_7b

    .line 5372
    :cond_5b
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no entry found for container : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_74} :catch_77
    .catchall {:try_start_2d .. :try_end_74} :catchall_75

    goto :goto_7b

    :catchall_75
    move-exception p0

    goto :goto_7f

    :catch_77
    move-exception p0

    .line 5375
    :try_start_78
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_75

    .line 5377
    :goto_7b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :goto_7f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5378
    throw p0
.end method

.method public final getService()Lcom/samsung/android/knox/SemPersonaManager;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStatus(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 6

    .line 2384
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 2386
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2388
    :try_start_16
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getStatusInternal(I)I

    move-result p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1c} :catch_22
    .catchall {:try_start_16 .. :try_end_1c} :catchall_20

    .line 2392
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_20
    move-exception p0

    goto :goto_43

    :catch_22
    move-exception p0

    .line 2390
    :try_start_23
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getStatus exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_23 .. :try_end_3e} :catchall_20

    .line 2392
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, -0x1

    return p0

    :goto_43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2393
    throw p0
.end method

.method public getStatusInternal(I)I
    .registers 8

    .line 2399
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2400
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getStatusInternal callerUid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_21

    return v1

    .line 2405
    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    move-result-object v0

    .line 2406
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 2407
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getStatusInternal of user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_86

    .line 2409
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_45} :catch_6a

    .line 2410
    :try_start_45
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    if-eqz p0, :cond_51

    iget p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    if-ne p0, p1, :cond_51

    const/16 p0, 0x5d

    .line 2411
    monitor-exit v3

    return p0

    .line 2413
    :cond_51
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result p0

    if-eqz p0, :cond_5b

    const/16 p0, 0x5f

    .line 2414
    monitor-exit v3

    return p0

    .line 2415
    :cond_5b
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result p0

    if-eqz p0, :cond_65

    const/16 p0, 0x5b

    .line 2416
    monitor-exit v3

    return p0

    .line 2419
    :cond_65
    monitor-exit v3

    goto :goto_86

    :catchall_67
    move-exception p0

    monitor-exit v3
    :try_end_69
    .catchall {:try_start_45 .. :try_end_69} :catchall_67

    :try_start_69
    throw p0
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6a} :catch_6a

    :catch_6a
    move-exception p0

    .line 2422
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getStatusInternal exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    :goto_86
    return v1
.end method

.method public final getUserManagerService()Landroid/os/UserManager;
    .registers 3

    .line 848
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mUms:Landroid/os/UserManager;

    if-nez v0, :cond_11

    .line 849
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mUms:Landroid/os/UserManager;

    .line 851
    :cond_11
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mUms:Landroid/os/UserManager;

    return-object p0
.end method

.method public final getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    goto :goto_f

    .line 4573
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
    move-exception p1

    .line 4575
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method public final installPackage(Ljava/lang/String;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 6020
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 6022
    :try_start_6
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 6024
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    .line 3632
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3633
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_9
    const-string v3, "Bluetooth"

    .line 3636
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getFeatureAccessPermission(ILjava/lang/String;)Z

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_15
    .catchall {:try_start_9 .. :try_end_f} :catchall_13

    .line 3640
    :goto_f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1a

    :catchall_13
    move-exception p0

    goto :goto_1b

    :catch_15
    move-exception p0

    .line 3638
    :try_start_16
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_13

    goto :goto_f

    :goto_1a
    return v0

    .line 3640
    :goto_1b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3641
    throw p0

    :cond_1f
    return v0
.end method

.method public isBluetoothEnabledBeforeFOTA(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    .line 3653
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3654
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_9
    const-string v3, "Bluetooth"

    .line 3657
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getFeatureAccessPermission(ILjava/lang/String;)Z

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_15
    .catchall {:try_start_9 .. :try_end_f} :catchall_13

    .line 3661
    :goto_f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1a

    :catchall_13
    move-exception p0

    goto :goto_1b

    :catch_15
    move-exception p0

    .line 3659
    :try_start_16
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_13

    goto :goto_f

    :goto_1a
    return v0

    .line 3661
    :goto_1b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3662
    throw p0

    :cond_1f
    return v0
.end method

.method public isContactsSharingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_58

    .line 3878
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3879
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 3880
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caller_id_to_show_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_34

    move v0, p1

    :cond_34
    return v0

    .line 3882
    :cond_35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3885
    :try_start_39
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    if-eqz v3, :cond_48

    .line 3886
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getBluetoothContactSharingEnabledForKnox(I)Z

    move-result p0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_47} :catch_4e
    .catchall {:try_start_39 .. :try_end_47} :catchall_4c

    move v0, p0

    .line 3891
    :cond_48
    :goto_48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_53

    :catchall_4c
    move-exception p0

    goto :goto_54

    :catch_4e
    move-exception p0

    .line 3889
    :try_start_4f
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_4c

    goto :goto_48

    :goto_53
    return v0

    .line 3891
    :goto_54
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3892
    throw p0

    :cond_58
    return v0
.end method

.method public final isContainerOnlyModeAllowed()Z
    .registers 3

    .line 5434
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 5435
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "isContainerOnlyModeAllowed return false, reason: the device is managed by any device owner. "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5438
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 5439
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Lcom/android/server/pm/PersonaManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object p0

    .line 5440
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 5441
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 5442
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "isContainerOnlyModeAllowed return false, reason: managed profile exists on the device. "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_47
    const/4 p0, 0x1

    return p0

    :cond_49
    return v1
.end method

.method public final isDualDarLicenseLockedCase()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isEmergencyModeSupported()Z
    .registers 7

    .line 5065
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5066
    :try_start_3
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    const/4 v2, 0x0

    if-nez v1, :cond_42

    .line 5067
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_42

    .line 5071
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    move v1, v2

    .line 5072
    :goto_18
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3f

    .line 5073
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 5074
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 5075
    iget v3, v3, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v4, v3, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_3a

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_3c

    .line 5077
    :cond_3a
    monitor-exit v0

    return v2

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 5081
    :cond_3f
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 5068
    :cond_42
    :goto_42
    monitor-exit v0

    return v2

    :catchall_44
    move-exception p0

    .line 5081
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw p0
.end method

.method public isExternalStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    if-eqz p1, :cond_26

    .line 3556
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3558
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3559
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_e
    const-string v2, "ExternalStorage"

    .line 3561
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getFeatureAccessPermission(ILjava/lang/String;)Z

    move-result p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_1a
    .catchall {:try_start_e .. :try_end_14} :catchall_18

    .line 3565
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_18
    move-exception p0

    goto :goto_22

    :catch_1a
    move-exception p0

    .line 3563
    :try_start_1b
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_18

    .line 3565
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_26

    :goto_22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3566
    throw p0

    :cond_26
    :goto_26
    const/4 p0, 0x1

    return p0
.end method

.method public final isInternalError(I)Z
    .registers 2

    const/16 p0, -0x402

    if-gt p1, p0, :cond_a

    const/16 p0, -0x40a

    if-lt p1, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final isKPUPlatformSigned(Ljava/lang/String;)Z
    .registers 3

    .line 6199
    :try_start_0
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_10

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :catch_10
    move-exception p0

    .line 6202
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public isLayoutSwitchingAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p1, :cond_36

    .line 5857
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 5858
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isLayoutSwitchingAllowed API is called for personaId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5859
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_20
    const-string v3, "LAYOUT_SWITCH"

    .line 5862
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getFeatureAccessPermission(ILjava/lang/String;)Z

    move-result v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_26} :catch_2c
    .catchall {:try_start_20 .. :try_end_26} :catchall_2a

    .line 5866
    :goto_26
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_31

    :catchall_2a
    move-exception p0

    goto :goto_32

    :catch_2c
    move-exception p0

    .line 5864
    :try_start_2d
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_2a

    goto :goto_26

    :goto_31
    return v0

    .line 5866
    :goto_32
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5867
    throw p0

    :cond_36
    return v0
.end method

.method public isMultifactorAuthenticationEnforced(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 3417
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "isMultifactorAuthenticationEnforced is called...."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "password_policy"

    .line 3420
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/security/PasswordPolicy;

    const/4 v0, 0x0

    if-eqz p0, :cond_28

    .line 3423
    :try_start_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3424
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isMultifactorAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 3425
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_28

    :catch_20
    move-exception p0

    .line 3428
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed at ContainerConfigurationPolicy API isMultifactorAuthenticationEnabled "

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3431
    :cond_28
    :goto_28
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isMultifactorAuthenticationEnabled result - "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isNFCEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_4c

    .line 3949
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3950
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3952
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    move-result-object v3

    .line 3953
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 3957
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v3
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_1a

    if-eqz v3, :cond_36

    return v0

    :catch_1a
    move-exception v3

    .line 3962
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isNFCEnabled exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :try_start_36
    const-string v3, "NFC"

    .line 3967
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getFeatureAccessPermission(ILjava/lang/String;)Z

    move-result v0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3c} :catch_42
    .catchall {:try_start_36 .. :try_end_3c} :catchall_40

    .line 3971
    :goto_3c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_47

    :catchall_40
    move-exception p0

    goto :goto_48

    :catch_42
    move-exception p0

    .line 3969
    :try_start_43
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_40

    goto :goto_3c

    :goto_47
    return v0

    .line 3971
    :goto_48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3972
    throw p0

    :cond_4c
    return v0
.end method

.method public isPackageAllowedToAccessExternalSdcard(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 3

    .line 4897
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "isPackageAllowedToAccessExternalSdcard"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isPackageInInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 6

    .line 5493
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPackageInInstallWhiteList is called for pkgName - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5494
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 5496
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_39

    .line 5498
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Application PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 5503
    :cond_39
    :try_start_39
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5504
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageInApprovedInstallerWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 5505
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_44} :catch_45

    goto :goto_4d

    :catch_45
    move-exception p0

    .line 5507
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at ContainerConfigurationPolicy API isPackageInInstallWhiteList "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4d
    return v0
.end method

.method public isResetContainerOnRebootEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 3467
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 3468
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3470
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3472
    :try_start_1c
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isResetPersonaOnRebootEnabled personaId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3473
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    move-result-object v3

    if-eqz v3, :cond_59

    .line 3474
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_59

    .line 3475
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result p0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_47} :catch_51
    .catchall {:try_start_1c .. :try_end_47} :catchall_4f

    const/16 p1, 0x40

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_59

    const/4 p0, 0x1

    move v0, p0

    goto :goto_59

    :catchall_4f
    move-exception p0

    goto :goto_5d

    :catch_51
    move-exception p0

    .line 3480
    :try_start_52
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at KnoxMUMContainerPolicy API isResetContainerOnRebootEnabled "

    invoke-static {p1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_4f

    .line 3482
    :cond_59
    :goto_59
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :goto_5d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3483
    throw p0
.end method

.method public final isSecureFolder(I)Z
    .registers 2

    const/16 p0, 0x96

    if-lt p1, p0, :cond_a

    const/16 p0, 0xa0

    if-gt p1, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isSettingsOptionEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 9

    .line 4613
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isSettingsOptionEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p2, :cond_a6

    .line 4615
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    goto/16 :goto_a6

    :cond_13
    :try_start_13
    const-string/jumbo v1, "option_callerinfo"

    .line 4622
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 4623
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 4625
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_22} :catch_89

    .line 4627
    :try_start_22
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 4628
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 4629
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Target container is superlocked. return false for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_46} :catch_50
    .catchall {:try_start_22 .. :try_end_46} :catchall_4e

    .line 4635
    :try_start_46
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_4a
    :goto_4a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4d} :catch_89

    goto :goto_55

    :catchall_4e
    move-exception p0

    goto :goto_85

    :catch_50
    move-exception p2

    .line 4633
    :try_start_51
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_4e

    goto :goto_4a

    .line 4638
    :goto_55
    :try_start_55
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    move-result-object p2

    if-eqz p2, :cond_a5

    .line 4639
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p2}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileCallerIdDisabled(Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_6c

    const/4 p0, 0x1

    goto :goto_6d

    :cond_6c
    move p0, v0

    .line 4640
    :goto_6d
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isSettingsOptionEnabled(): Return result: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 4635
    :goto_85
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4636
    throw p0
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_89} :catch_89

    :catch_89
    move-exception p0

    .line 4645
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isSettingsOptionEnabled() exception: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    return v0

    .line 4616
    :cond_a6
    :goto_a6
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Error from isSettingsOptionEnabled(): option is null or empty"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isSettingsOptionEnabledInternal(ILjava/lang/String;Z)Z
    .registers 10

    .line 4657
    sget-boolean v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v0, :cond_23

    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSettingsOptionEnabledInternal for personaId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; option="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    const/4 v1, 0x0

    if-eqz p2, :cond_e7

    .line 4659
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2e

    goto/16 :goto_e7

    :cond_2e
    :try_start_2e
    const-string/jumbo v0, "option_callerinfo"

    .line 4665
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 4666
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3b} :catch_ca

    .line 4668
    :try_start_3b
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 4669
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 4670
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Target container is superlocked. return false for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_5f} :catch_69
    .catchall {:try_start_3b .. :try_end_5f} :catchall_67

    .line 4676
    :try_start_5f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_63
    :goto_63
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_66} :catch_ca

    goto :goto_6e

    :catchall_67
    move-exception p0

    goto :goto_a2

    :catch_69
    move-exception p2

    .line 4674
    :try_start_6a
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_67

    goto :goto_63

    .line 4679
    :goto_6e
    :try_start_6e
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    move-result-object p2

    if-eqz p2, :cond_a6

    .line 4680
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p2}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileCallerIdDisabled(Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_85

    const/4 p0, 0x1

    goto :goto_86

    :cond_85
    move p0, v1

    .line 4681
    :goto_86
    sget-boolean p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz p1, :cond_a1

    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "isSettingsOptionEnabledInternal: Return result: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a1
    return p0

    .line 4676
    :goto_a2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4677
    throw p0
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_a6} :catch_ca

    .line 4690
    :cond_a6
    sget-boolean p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz p0, :cond_c9

    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isSettingsOptionEnabledInternal: no record found for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":  Return default value: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c9
    return p3

    :catch_ca
    move-exception p0

    .line 4686
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "isSettingsOptionEnabledInternal: Exception "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_e7
    :goto_e7
    if-eqz v0, :cond_f0

    .line 4660
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Error from isSettingsOptionEnabledInternal: option is null or empty"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f0
    return v1
.end method

.method public isUsbAccessEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    .line 3831
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3832
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_9
    const-string v3, "USB"

    .line 3835
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getFeatureAccessPermission(ILjava/lang/String;)Z

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_15
    .catchall {:try_start_9 .. :try_end_f} :catchall_13

    .line 3839
    :goto_f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1a

    :catchall_13
    move-exception p0

    goto :goto_1b

    :catch_15
    move-exception p0

    .line 3837
    :try_start_16
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_13

    goto :goto_f

    :goto_1a
    return v0

    .line 3839
    :goto_1b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3840
    throw p0

    :cond_1f
    return v0
.end method

.method public lockContainer(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 12

    .line 2429
    sget-object p2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "lockContainer is called...."

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    new-instance p2, Ljava/util/ArrayList;

    const-string v0, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    const-string/jumbo p1, "password_policy"

    .line 2433
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    check-cast p1, Lcom/android/server/enterprise/security/PasswordPolicy;

    const/4 p2, 0x0

    if-eqz p1, :cond_63

    .line 2436
    :try_start_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2437
    invoke-virtual {p1, p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->lock(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    if-eqz p2, :cond_57

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 2440
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "KnoxMUMContainerPolicy"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has locked Workspace."

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2439
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2444
    :cond_57
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_5a} :catch_5b

    goto :goto_63

    :catch_5b
    move-exception p0

    .line 2447
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at KnoxMUMContainerPolicy API lockContainer "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2450
    :cond_63
    :goto_63
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "lockContainer result - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public final matchCreationParams(Lcom/samsung/android/knox/container/ContainerCreationParams;)Lcom/samsung/android/knox/container/ContainerCreationParams;
    .registers 6

    .line 2098
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_26

    if-eqz p1, :cond_26

    .line 2102
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/container/ContainerCreationParams;

    .line 2103
    invoke-virtual {v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v3

    if-ne v2, v3, :cond_b

    goto :goto_23

    :cond_22
    move-object v1, v0

    :goto_23
    if-eqz v1, :cond_26

    return-object v1

    :cond_26
    return-object v0
.end method

.method public final matchPackages([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 2221
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_29

    aget-object v2, p1, v1

    .line 2222
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "packages for uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_29
    return v0
.end method

.method public final notifyContainerServiceForPolicyUpdate(ILjava/lang/String;)V
    .registers 4

    .line 5704
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "knox.container.proxy.EXTRA_PACKAGE_NAME"

    .line 5705
    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "android.intent.extra.user_handle"

    .line 5706
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5707
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    const-string/jumbo v0, "knox.container.proxy.POLICY_SDCARD_POLICY_CHANGED"

    .line 5708
    invoke-static {v0, p0}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 5709
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final notifyContainerServiceForPolicyUpdate(Ljava/lang/String;I)V
    .registers 5

    .line 3920
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "android.intent.extra.user_handle"

    .line 3921
    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3922
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3923
    invoke-static {p1, p0}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 3924
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final notifyDOPremiumActivation()V
    .registers 4

    .line 1062
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1063
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1064
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "DO\'premium provisioning completed, sending intent to KLMS agent"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.sec.knox.containeragent.klms.created.b2b"

    .line 1065
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendIntentBroadcastForContainer(ILjava/lang/String;)V

    goto :goto_23

    .line 1067
    :cond_1c
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v0, "DO\' license is not activated so ignoring the request..."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void
.end method

.method public final notifyLicenseStatus(Ljava/lang/String;)Z
    .registers 5

    .line 499
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "License status updated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 501
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packageName"

    .line 502
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 504
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final notifyPeripheralPolicyUpdate(Ljava/lang/String;IZ)V
    .registers 6

    .line 3934
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3936
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "containerId"

    .line 3937
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.sec.knox.container.extra.updated.value"

    .line 3938
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3939
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3941
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final notifyProfileNameChanged(Ljava/lang/String;I)V
    .registers 7

    .line 6001
    new-instance p0, Landroid/content/Intent;

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    const-string/jumbo v1, "package"

    .line 6002
    invoke-static {v1, p1, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_c
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-direct {p0, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6003
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v1, "android"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_46

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    const-string v3, "android.intent.extra.user_handle"

    .line 6007
    invoke-virtual {p0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "android.intent.extra.changed_component_name"

    .line 6008
    invoke-virtual {p0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.changed_component_name_list"

    .line 6009
    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 6010
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 6012
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string p2, "android.intent.extra.UID"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6014
    :cond_43
    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_46
    return-void
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    const-string/jumbo p0, "onAdminAdded"

    .line 4041
    invoke-static {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 4

    const-string/jumbo p0, "onAdminRemoved"

    .line 4046
    invoke-static {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4047
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAdminRemoval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNewUserCreated(I)V
    .registers 5

    .line 1270
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNewUserCreated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " provisioning state:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    if-nez p0, :cond_1d

    const-string/jumbo p0, "null"

    goto :goto_21

    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1270
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 7

    const-string/jumbo v0, "onPreAdminRemoval"

    .line 4052
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4053
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreAdminRemoval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4055
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getContainers(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 4057
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4058
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPreAdminRemoval: removing container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4059
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->removeUser(I)Z

    goto :goto_27

    :cond_56
    if-eqz p1, :cond_8d

    .line 4064
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_60
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    if-eqz v0, :cond_89

    .line 4066
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreAdminRemoval: removing type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4067
    :cond_89
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeConfigurationTypeInternal(Lcom/samsung/android/knox/container/KnoxConfigurationType;)Z

    goto :goto_60

    :cond_8d
    return-void
.end method

.method public final processConfigurationType(Lcom/samsung/android/knox/container/KnoxConfigurationType;)Z
    .registers 5

    .line 2689
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_52

    const-string v1, ""

    .line 2690
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_52

    .line 2696
    :cond_10
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isDefaultConfigType()Z

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_45

    const/4 p0, -0x1

    .line 2698
    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setContainerLayout(I)V

    .line 2700
    instance-of p0, p1, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    if-eqz p0, :cond_23

    .line 2701
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowLayoutSwitching(Z)V

    goto :goto_51

    .line 2702
    :cond_23
    instance-of p0, p1, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    if-eqz p0, :cond_41

    .line 2704
    move-object p0, p1

    check-cast p0, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->getFolderDisabledChangeLayout()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3d

    const-string/jumbo v2, "true"

    .line 2706
    invoke-virtual {v2, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3d

    .line 2707
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowLayoutSwitching(Z)V

    goto :goto_51

    .line 2709
    :cond_3d
    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowLayoutSwitching(Z)V

    goto :goto_51

    .line 2711
    :cond_41
    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowLayoutSwitching(Z)V

    goto :goto_51

    .line 2713
    :cond_45
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getContainerLayout()I

    move-result p0

    if-eq p0, v1, :cond_51

    const/4 v0, 0x2

    if-eq p0, v0, :cond_51

    .line 2716
    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setContainerLayout(I)V

    :cond_51
    :goto_51
    return v1

    :cond_52
    :goto_52
    return v0
.end method

.method public final processNewTypeObject(ILcom/samsung/android/knox/container/KnoxConfigurationType;)Z
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "containerBadgeModified.png"

    const-string v0, "containerIconModified.png"

    .line 2892
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    move/from16 v5, p1

    .line 2893
    invoke-virtual {v2, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setAdminUid(I)V

    .line 2894
    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setUserId(I)V

    .line 2896
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    .line 2898
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 2901
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    const/16 v6, 0x5a

    const/16 v7, 0x11

    .line 2902
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Point;->set(II)V

    .line 2905
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10501cf

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 2906
    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10501ce

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 2907
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "app_icon_width app_icon_height"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 2909
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2916
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Screen dimension: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    new-instance v4, Ljava/io/File;

    const-string v8, "/data/misc/container2.0/"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2919
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    const-string v9, "cannot create folder: "

    const/4 v11, 0x0

    if-nez v8, :cond_c6

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-eqz v8, :cond_ad

    goto :goto_c6

    .line 2924
    :cond_ad
    sget-boolean v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v0, :cond_c5

    .line 2925
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c5
    return v11

    :cond_c6
    :goto_c6
    const/4 v8, 0x1

    .line 2920
    invoke-virtual {v4, v8, v11}, Ljava/io/File;->setReadable(ZZ)Z

    .line 2921
    invoke-virtual {v4, v8}, Ljava/io/File;->setWritable(Z)Z

    .line 2922
    invoke-virtual {v4, v8, v11}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 2929
    new-instance v4, Ljava/io/File;

    const-string v12, "/data/misc/container2.0/icon/"

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2930
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_f9

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v13

    if-eqz v13, :cond_e4

    goto :goto_f9

    .line 2935
    :cond_e4
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    .line 2931
    :cond_f9
    :goto_f9
    invoke-virtual {v4, v8, v11}, Ljava/io/File;->setReadable(ZZ)Z

    .line 2932
    invoke-virtual {v4, v8}, Ljava/io/File;->setWritable(Z)Z

    .line 2933
    invoke-virtual {v4, v8, v11}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 2940
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getUserId()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2941
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v9, "rcp"

    .line 2943
    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    check-cast v9, Lcom/android/server/RCPManagerService;

    .line 2944
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v12

    const-string v13, " status value:"

    const-string v14, "Dest image paths: "

    const/4 v15, 0x0

    if-eqz v12, :cond_181

    .line 2945
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "CustomBadgeIcon.png"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2946
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v12

    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v12, v11, v8, v15}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v11

    .line 2948
    sget-boolean v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v12, :cond_17b

    .line 2949
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17b
    if-nez v11, :cond_17e

    const/4 v8, 0x0

    .line 2953
    :cond_17e
    invoke-virtual {v2, v8}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomBadgeIcon(Ljava/lang/String;)V

    .line 2956
    :cond_181
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v8

    const-string v11, " and source path "

    const-string v12, " doesn\'t exist"

    const-string/jumbo v15, "source file "

    if-eqz v8, :cond_246

    .line 2957
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v16, v5

    if-eqz v8, :cond_1b8

    const-string v5, "CustomHomeWallpaper-b2b.jpg"

    .line 2960
    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    move-object/from16 v17, v13

    const-string v13, "DefaultHomeWallpaper.jpeg"

    if-nez v5, :cond_1a8

    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1ba

    .line 2961
    :cond_1a8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1cb

    :cond_1b8
    move-object/from16 v17, v13

    .line 2963
    :cond_1ba
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "CustomHomeScreenWallpaper.png"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2965
    :goto_1cb
    sget-boolean v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v8, :cond_1f0

    .line 2966
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v3

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f2

    :cond_1f0
    move-object/from16 v18, v3

    .line 2968
    :goto_1f2
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2969
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_226

    .line 2970
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 2997
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v9, v8, v3, v8, v5}, Lcom/android/server/RCPManagerService;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_218

    .line 3000
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "getCustomHomeScreenWallpaper::Copying file is failed"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_222

    .line 3002
    :cond_218
    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setFilePermission(Ljava/lang/String;)V

    .line 3003
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "getCustomHomeScreenWallpaper::Copying file is processed"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    :goto_222
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_242

    .line 3008
    :cond_226
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .line 3011
    :goto_242
    invoke-virtual {v2, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomHomeScreenWallpaper(Ljava/lang/String;)V

    goto :goto_24c

    :cond_246
    move-object/from16 v18, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v13

    .line 3014
    :goto_24c
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerNameIcon()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2db

    .line 3015
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerNameIcon()Ljava/lang/String;

    .line 3017
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "NameIcon.png"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3019
    sget-boolean v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v5, :cond_288

    .line 3020
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3021
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerNameIcon()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3020
    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    :cond_288
    new-instance v5, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerNameIcon()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3024
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2bc

    .line 3025
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 3052
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerNameIcon()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v9, v8, v5, v8, v3}, Lcom/android/server/RCPManagerService;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2ae

    .line 3055
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "getCustomizedContainerNameIcon::Copying file is failed"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b8

    .line 3057
    :cond_2ae
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setFilePermission(Ljava/lang/String;)V

    .line 3058
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "getCustomizedContainerNameIcon::Copying file is processed"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    :goto_2b8
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2d8

    .line 3063
    :cond_2bc
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerNameIcon()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 3066
    :goto_2d8
    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerNameIcon(Ljava/lang/String;)V

    .line 3069
    :cond_2db
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerIcon()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_435

    .line 3070
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerIcon()Ljava/lang/String;

    .line 3071
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "containerIconTemp.png"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3072
    new-instance v8, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerIcon()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3073
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_32c

    .line 3074
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 3075
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerIcon()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    invoke-virtual {v9, v13, v8, v13, v3}, Lcom/android/server/RCPManagerService;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_31b

    .line 3078
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v13, "getCustomizedContainerIcon::Copying file is failed"

    invoke-static {v8, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_325

    .line 3080
    :cond_31b
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setFilePermission(Ljava/lang/String;)V

    .line 3081
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v13, "getCustomizedContainerIcon::Copying file is processed"

    invoke-static {v8, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3083
    :goto_325
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3084
    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerIcon(Ljava/lang/String;)V

    goto :goto_34c

    .line 3087
    :cond_32c
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerIcon()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 3088
    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerIcon(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 3093
    :goto_34c
    :try_start_34c
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->readECFile(Ljava/lang/String;)[B

    move-result-object v8

    if-eqz v8, :cond_435

    .line 3096
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v19, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5
    :try_end_35a
    .catch Ljava/lang/Exception; {:try_start_34c .. :try_end_35a} :catch_42a

    move-object/from16 v19, v11

    :try_start_35c
    array-length v11, v8
    :try_end_35d
    .catch Ljava/lang/Exception; {:try_start_35c .. :try_end_35d} :catch_428

    move-object/from16 v21, v14

    const/4 v14, 0x0

    :try_start_360
    invoke-static {v8, v14, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-direct {v13, v5, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 3097
    array-length v5, v8

    invoke-static {v8, v14, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 3098
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 3099
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 3100
    sget-object v13, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_37b
    .catch Ljava/lang/Exception; {:try_start_360 .. :try_end_37b} :catch_424

    move-object/from16 v22, v12

    :try_start_37d
    const-string v12, "containerIcon dimensions "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    float-to-int v12, v6

    if-gt v8, v12, :cond_398

    float-to-int v8, v7

    if-le v11, v8, :cond_43b

    :cond_398
    const/4 v8, 0x0

    cmpl-float v11, v7, v8

    if-lez v11, :cond_43b

    if-lez v11, :cond_43b

    float-to-int v8, v7

    const/4 v11, 0x0

    .line 3102
    invoke-static {v5, v12, v8, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_43b

    .line 3104
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "resizedBitmap getCustomizedContainerIcon !null "

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->writeFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 3106
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_43b

    .line 3107
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "success getCustomizedContainerIcon "

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerIcon(Ljava/lang/String;)V

    .line 3113
    sget-boolean v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v0, :cond_400

    .line 3114
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " icon file : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_400
    if-eqz v3, :cond_43b

    .line 3116
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3117
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 3118
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "container icon file deletion status: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_421
    .catch Ljava/lang/Exception; {:try_start_37d .. :try_end_421} :catch_422

    goto :goto_43b

    :catch_422
    move-exception v0

    goto :goto_431

    :catch_424
    move-exception v0

    move-object/from16 v22, v12

    goto :goto_431

    :catch_428
    move-exception v0

    goto :goto_42d

    :catch_42a
    move-exception v0

    move-object/from16 v19, v11

    :goto_42d
    move-object/from16 v22, v12

    move-object/from16 v21, v14

    .line 3126
    :goto_431
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_43b

    :cond_435
    move-object/from16 v19, v11

    move-object/from16 v22, v12

    move-object/from16 v21, v14

    .line 3131
    :cond_43b
    :goto_43b
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerBadge()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_58e

    .line 3132
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerBadge()Ljava/lang/String;

    .line 3133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "containerBadgeTemp.png"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3134
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerBadge()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3135
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_48f

    .line 3136
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 3138
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerBadge()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v9, v5, v3, v5, v0}, Lcom/android/server/RCPManagerService;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_47b

    .line 3141
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "getCustomizedContainerBadge::Copying file is failed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_485

    .line 3143
    :cond_47b
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setFilePermission(Ljava/lang/String;)V

    .line 3144
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "getCustomizedContainerBadge::Copying file is processed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    :goto_485
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3148
    invoke-virtual {v2, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerBadge(Ljava/lang/String;)V

    move-object v3, v0

    move-object/from16 v5, v22

    goto :goto_4b1

    .line 3152
    :cond_48f
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerBadge()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v22

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 3153
    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerBadge(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 3157
    :goto_4b1
    :try_start_4b1
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->readECFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_590

    .line 3160
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    array-length v12, v0

    const/4 v13, 0x0

    invoke-static {v0, v13, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-direct {v8, v11, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 3161
    array-length v11, v0

    invoke-static {v0, v13, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3162
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 3163
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 3164
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "containerBadge dimensions "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v6, v12

    float-to-int v6, v6

    if-gt v11, v6, :cond_4fc

    div-float v11, v7, v12

    float-to-int v11, v11

    if-le v8, v11, :cond_590

    :cond_4fc
    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-lez v8, :cond_590

    if-lez v8, :cond_590

    div-float/2addr v7, v12

    float-to-int v7, v7

    const/4 v8, 0x0

    .line 3166
    invoke-static {v0, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_590

    .line 3168
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "resizedBitmap containerBadgeTemp !null "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v18

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->writeFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3170
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_590

    .line 3171
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "success getCustomizedContainerBadge "

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerBadge(Ljava/lang/String;)V

    .line 3177
    sget-boolean v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v0, :cond_567

    .line 3178
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " badge file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_567
    if-eqz v3, :cond_590

    .line 3180
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3181
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 3182
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "badge icon file deletion status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_588
    .catch Ljava/lang/Exception; {:try_start_4b1 .. :try_end_588} :catch_589

    goto :goto_590

    :catch_589
    move-exception v0

    .line 3190
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_590

    :cond_58e
    move-object/from16 v5, v22

    .line 3196
    :cond_590
    :goto_590
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_627

    .line 3204
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    .line 3206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "CustomisedLockScreenWallpaper.png"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3208
    sget-boolean v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v0, :cond_5d1

    .line 3209
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, v21

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v19

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3211
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3209
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d3

    :cond_5d1
    move-object/from16 v7, v21

    .line 3213
    :goto_5d3
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3214
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_607

    .line 3215
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 3242
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v9, v8, v0, v8, v3}, Lcom/android/server/RCPManagerService;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5f9

    .line 3245
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "getCustomLockScreenWallpaper::Copying file is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_603

    .line 3247
    :cond_5f9
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setFilePermission(Ljava/lang/String;)V

    .line 3248
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "getCustomLockScreenWallpaper::Copying file is processed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3250
    :goto_603
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_623

    .line 3253
    :cond_607
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 3255
    :goto_623
    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomLockScreenWallpaper(Ljava/lang/String;)V

    goto :goto_629

    :cond_627
    move-object/from16 v7, v21

    .line 3258
    :goto_629
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_675

    .line 3259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CustomStatusIcon.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3260
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v5, 0x0

    invoke-static {v0, v1, v3, v5}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v0

    .line 3262
    sget-boolean v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v1, :cond_66c

    .line 3263
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v17

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66e

    :cond_66c
    move-object/from16 v7, v17

    :goto_66e
    if-nez v0, :cond_671

    move-object v3, v5

    .line 3267
    :cond_671
    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    goto :goto_678

    :cond_675
    move-object/from16 v7, v17

    const/4 v5, 0x0

    .line 3270
    :goto_678
    instance-of v0, v2, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    if-eqz v0, :cond_6c6

    .line 3271
    move-object v0, v2

    check-cast v0, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->getFolderHeaderIcon()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6c6

    .line 3274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "FolderHeaderIcon.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3275
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v6, v16

    invoke-static {v1, v4, v3, v6}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v1

    .line 3277
    sget-boolean v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v4, :cond_6be

    .line 3278
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dest image path folder header icon: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6be
    if-nez v1, :cond_6c2

    move-object v15, v5

    goto :goto_6c3

    :cond_6c2
    move-object v15, v3

    .line 3282
    :goto_6c3
    invoke-virtual {v0, v15}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->setFolderHeaderIcon(Ljava/lang/String;)V

    .line 3286
    :cond_6c6
    sget-boolean v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v0, :cond_70e

    .line 3287
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Images after copy in services: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3288
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3289
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3290
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerNameIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3291
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerBadge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3287
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70e
    const/4 v1, 0x1

    return v1
.end method

.method public final provisioningFinished(I)V
    .registers 8

    .line 1812
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    if-nez v0, :cond_5

    return-void

    .line 1816
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->notifyAdminCreationStatus(I)V

    .line 1818
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1819
    :try_start_b
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    if-nez v0, :cond_19

    .line 1820
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "provisioningFinished() no ongoing provisioning, skip"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    monitor-exit p1

    return-void

    .line 1824
    :cond_19
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provisioningFinished()... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    invoke-virtual {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    invoke-virtual {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->isDeviceOwnerProvisioning()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    iget v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    if-nez v0, :cond_45

    goto :goto_b7

    .line 1829
    :cond_45
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->state:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_9c

    .line 1830
    invoke-virtual {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->isBasicContainerProvisioning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8b

    .line 1831
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1832
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    iget v2, v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object v2

    if-eqz v2, :cond_68

    .line 1834
    sget-object v3, Landroid/os/ContainerStateReceiver;->EXTRA_CONTIANER_CONFIGURATION_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1835
    :cond_68
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    iget-object v2, v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->pwdRstToken:Ljava/lang/String;

    if-eqz v2, :cond_73

    const-string v3, "EXTRA_RESET_TOKEN"

    .line 1836
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    :cond_73
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    iget v3, v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    invoke-static {v2, v3, v1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;IILandroid/os/Bundle;)V

    .line 1841
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "container created via Knox API. enabling container in the framework"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    iget v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setProfileEnabled(I)V

    goto :goto_b7

    .line 1844
    :cond_8b
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "contaienr created via AFW API. skip enabling container in the framework"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    iget v2, v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    invoke-static {v0, v2, v1}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    goto :goto_b7

    .line 1849
    :cond_9c
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provisioningFinished() not a normal finish, state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    iget v2, v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catchall {:try_start_b .. :try_end_b7} :catchall_16f

    .line 1853
    :goto_b7
    :try_start_b7
    new-instance v0, Lcom/samsung/android/knox/container/ContainerCreationParams;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/ContainerCreationParams;-><init>()V

    .line 1854
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 1855
    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    iget v3, v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1856
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    iget v3, v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2

    .line 1857
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calling createContainerInternal "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    iget v5, v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setAdminParam(Ljava/lang/String;)V

    .line 1859
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    iget v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setContainerId(I)V

    .line 1860
    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setAdminUid(I)V

    .line 1862
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->createContainerInternal(Lcom/samsung/android/knox/container/ContainerCreationParams;)I
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_11f} :catch_120
    .catchall {:try_start_b7 .. :try_end_11f} :catchall_16f

    goto :goto_137

    :catch_120
    move-exception v0

    .line 1864
    :try_start_121
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling createContainerInternal failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_137
    const/4 v0, 0x0

    .line 1866
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 1867
    monitor-exit p1
    :try_end_13b
    .catchall {:try_start_121 .. :try_end_13b} :catchall_16f

    .line 1869
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    if-eqz p1, :cond_16e

    .line 1871
    :try_start_13f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    invoke-interface {p1, v1}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1872
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    .line 1873
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "provisioning observer unregistered"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_152
    .catch Landroid/os/RemoteException; {:try_start_13f .. :try_end_152} :catch_153

    goto :goto_16e

    :catch_153
    move-exception p0

    .line 1875
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException :("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16e
    :goto_16e
    return-void

    :catchall_16f
    move-exception p0

    .line 1867
    :try_start_170
    monitor-exit p1
    :try_end_171
    .catchall {:try_start_170 .. :try_end_171} :catchall_16f

    throw p0
.end method

.method public readECFile(Ljava/lang/String;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_72

    .line 5091
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_72

    .line 5097
    :cond_9
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5098
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5103
    :try_start_13
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_65

    long-to-int v0, v0

    .line 5109
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_22
    if-ge v2, v0, :cond_2e

    sub-int v3, v0, v2

    .line 5114
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_6d

    if-ltz v3, :cond_2e

    add-int/2addr v2, v3

    goto :goto_22

    :cond_2e
    if-lt v2, v0, :cond_4a

    .line 5126
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 5129
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bytes : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 5119
    :cond_4a
    :try_start_4a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The file was not completely read: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5105
    :cond_65
    new-instance p0, Ljava/io/IOException;

    const-string v0, "The file is too big"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6d
    .catchall {:try_start_4a .. :try_end_6d} :catchall_6d

    :catchall_6d
    move-exception p0

    .line 5126
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 5128
    throw p0

    .line 5092
    :cond_72
    :goto_72
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "filename is null  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final refreshLauncherUI(Landroid/content/Intent;)V
    .registers 3

    .line 5996
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "refreshLauncherUI launcherRefresh"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5997
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public registerBroadcastReceiverIntent(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public final registerContainerLicenseObserver()V
    .registers 4

    .line 480
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mInjector:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$Injector;->getEnterpriseLicenseService()Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 482
    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerLicenseObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerLicenseObserver;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerLicenseObserver-IA;)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->addElmKlmObserver(Lcom/android/server/enterprise/license/IActivationKlmElmObserver;)V

    return-void

    .line 484
    :cond_12
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ContainerLicenseObserver is not added! Please invoke registerContainerLicenseObserver more later!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final registerContentObserver()V
    .registers 4

    .line 1072
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerContentObserver - 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hide_secure_folder_flag"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->contentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public removeConfigurationType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 5

    .line 2782
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    if-eqz p1, :cond_19

    .line 2784
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-lez p1, :cond_19

    goto :goto_1d

    .line 2787
    :cond_19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 2789
    :goto_1d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeConfigurationTypeInternal(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final removeConfigurationTypeInternal(ILjava/lang/String;)Z
    .registers 4

    .line 2793
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    monitor-enter v0

    .line 2794
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(ILjava/lang/String;)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object p2

    if-eqz p2, :cond_21

    if-eqz p1, :cond_21

    .line 2796
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_21

    .line 2797
    :cond_1b
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeConfigurationTypeInternal(Lcom/samsung/android/knox/container/KnoxConfigurationType;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 2800
    :cond_21
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public final removeConfigurationTypeInternal(Lcom/samsung/android/knox/container/KnoxConfigurationType;)Z
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_229

    .line 2805
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_229

    .line 2808
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2811
    :try_start_f
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v3

    .line 2813
    sget-boolean v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v4, :cond_2d

    .line 2814
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "badge icon file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    if-eqz v3, :cond_4e

    .line 2816
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2817
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v3

    .line 2818
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "badge icon file deletion status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    :cond_4e
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_6a

    .line 2822
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCustomHomeScreenWallpaper icon file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_6a} :catch_206
    .catchall {:try_start_f .. :try_end_6a} :catchall_204

    :cond_6a
    const-string/jumbo v5, "home screen wall paper icon file deletion status: "

    if-eqz v3, :cond_8c

    .line 2824
    :try_start_6f
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2825
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v3

    .line 2826
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    :cond_8c
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerNameIcon()Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_a8

    .line 2831
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCustomizedContainerNameIcon icon file : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a8
    if-eqz v3, :cond_c7

    .line 2833
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2834
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v3

    .line 2835
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    :cond_c7
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerIcon()Ljava/lang/String;

    move-result-object v3

    .line 2838
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getECIcon icon file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_102

    .line 2840
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2841
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v3

    .line 2842
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ec icon file deletion status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    :cond_102
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerBadge()Ljava/lang/String;

    move-result-object v3

    .line 2845
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getECBadge icon file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_13d

    .line 2847
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2848
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v3

    .line 2849
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ecbadge icon file deletion status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    :cond_13d
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_159

    .line 2854
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCustomLockScreenWallpaper icon file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_159
    if-eqz v3, :cond_17b

    .line 2856
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2857
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v3

    .line 2858
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "lock screen wall paper icon file deletion status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    :cond_17b
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_197

    .line 2863
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCustomStatusIcon icon file : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_197
    if-eqz v3, :cond_1b8

    .line 2865
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2866
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v3

    .line 2867
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "custom status icon file deletion status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    :cond_1b8
    instance-of v3, p1, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    if-eqz v3, :cond_1fa

    .line 2870
    move-object v3, p1

    check-cast v3, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    invoke-virtual {v3}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->getFolderHeaderIcon()Ljava/lang/String;

    move-result-object v3

    .line 2871
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFolderHeaderIcon icon file : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1fa

    .line 2873
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2874
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v3

    .line 2875
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "folder header icon file deletion status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    :cond_1fa
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1ff
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_1ff} :catch_206
    .catchall {:try_start_6f .. :try_end_1ff} :catchall_204

    const/4 p0, 0x1

    .line 2885
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_204
    move-exception p0

    goto :goto_225

    :catch_206
    move-exception p0

    .line 2882
    :try_start_207
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_221
    .catchall {:try_start_207 .. :try_end_221} :catchall_204

    .line 2885
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :goto_225
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2886
    throw p0

    :cond_229
    :goto_229
    return v0
.end method

.method public removeContainer(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 11

    .line 2279
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    :try_start_12
    const-string/jumbo v0, "removeContainer"

    .line 2282
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_18} :catch_19

    goto :goto_44

    :catch_19
    move-exception v0

    .line 2284
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SEAMS invalidated caller. lets go for MDM check.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    new-instance v0, Ljava/util/ArrayList;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 2288
    :goto_44
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2289
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Container removal started"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    move-result-object p0

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, v2}, Landroid/os/UserManager;->removeUser(I)Z

    move-result p0

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 2292
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has successfully removed Workspace "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2294
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const-string v6, "KnoxMUMContainerPolicy"

    .line 2291
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2295
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p0, :cond_96

    .line 2297
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Container removal success"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2300
    :cond_96
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Container removal failed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x4b1

    return p0
.end method

.method public removeContainerInternal(I)I
    .registers 13

    const-string/jumbo v0, "removeContainerInternal"

    .line 2232
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2236
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2237
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeContainerInternal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 2239
    :try_start_23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2240
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-nez v3, :cond_53

    .line 2242
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_4d} :catch_9a
    .catchall {:try_start_23 .. :try_end_4d} :catchall_98

    const/16 p0, -0x3f6

    .line 2264
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 2246
    :cond_53
    :try_start_53
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeContainerOwnerRelationship(I)Z

    .line 2248
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/misc/container3.0/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2249
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_90

    .line 2250
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8d

    .line 2252
    array-length v6, v5

    move v7, v0

    :goto_7a
    if-ge v7, v6, :cond_8d

    aget-object v8, v5, v7

    .line 2253
    new-instance v9, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_7a

    .line 2257
    :cond_8d
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2260
    :cond_90
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    const-string v4, "com.sec.knox.containeragent.klms.removed.b2b"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendIntentBroadcastForContainer(ILjava/lang/String;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_97} :catch_9a
    .catchall {:try_start_53 .. :try_end_97} :catchall_98

    goto :goto_b5

    :catchall_98
    move-exception p0

    goto :goto_f4

    :catch_9a
    move-exception v3

    .line 2262
    :try_start_9b
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catchall {:try_start_9b .. :try_end_b5} :catchall_98

    .line 2264
    :goto_b5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2267
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeContainer("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendContainerRemovalIntent(containerId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x4b1

    .line 2271
    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerRemovalIntent(II)V

    return v0

    .line 2264
    :goto_f4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2265
    throw p0
.end method

.method public final removeContainerOwnerRelationship(I)Z
    .registers 5

    const/4 v0, 0x0

    .line 2167
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeMUMContainer(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2169
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Container removed from ownership DB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 2171
    :cond_20
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Container not found or Failed to remove container from DB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_36} :catch_37

    goto :goto_52

    :catch_37
    move-exception p0

    .line 2175
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed at removeContainerOwnerRelationship "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_52
    return v0
.end method

.method public final removeCreationParams(Lcom/samsung/android/knox/container/ContainerCreationParams;)Z
    .registers 7

    .line 2118
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    if-eqz v0, :cond_40

    const/4 v1, 0x0

    .line 2121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/container/ContainerCreationParams;

    .line 2122
    invoke-virtual {v2}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v4

    if-ne v3, v4, :cond_9

    move-object v1, v2

    :cond_20
    if-eqz v1, :cond_40

    .line 2128
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeCreationParams ->  :  match: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_40
    const/4 p0, 0x0

    return p0
.end method

.method public removeNetworkSSID(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 6

    .line 4179
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4180
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeNetworkSSID - SSID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4182
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_3a

    .line 4184
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeNetworkSSID - invalid Str "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 4188
    :cond_3a
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 4190
    invoke-static {p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4192
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSSID(I)Ljava/util/Set;

    move-result-object v1

    .line 4193
    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4f

    .line 4194
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->saveBlockedList(ILjava/util/Set;)Z

    move-result p0

    return p0

    .line 4197
    :cond_4f
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "addNetworkSSID failed : no exist."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public removePackageFromExternalStorageBlackList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I
    .registers 3

    .line 5598
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "removePackageFromExternalStorageBlackList is not available."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public removePackageFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I
    .registers 7

    .line 5737
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removePackageFromExternalStorageWhiteList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_14

    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :cond_14
    const-string/jumbo v2, "null"

    :goto_17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5738
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, -0x1

    .line 5740
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object p0

    if-nez p0, :cond_43

    .line 5742
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Application PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_43
    if-eqz p2, :cond_65

    .line 5746
    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4c

    goto :goto_65

    .line 5751
    :cond_4c
    :try_start_4c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x2

    .line 5752
    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, v3, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackageFromWhiteList(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)I

    move-result v0

    .line 5753
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_5c} :catch_5d

    goto :goto_65

    :catch_5d
    move-exception p0

    .line 5755
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at ContainerConfigurationPolicy API removePackageFromExternalStorageWhiteList "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_65
    :goto_65
    return v0
.end method

.method public removePackageFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I
    .registers 7

    .line 5464
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removePackageFromInstallWhiteList is called for package - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_14

    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :cond_14
    const-string/jumbo v2, "null"

    :goto_17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5465
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, -0x1

    .line 5467
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object p0

    if-nez p0, :cond_43

    .line 5469
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Application PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_43
    if-eqz p2, :cond_65

    .line 5473
    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4c

    goto :goto_65

    .line 5478
    :cond_4c
    :try_start_4c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x1

    .line 5479
    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, v3, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackageFromWhiteList(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)I

    move-result v0

    .line 5480
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_5c} :catch_5d

    goto :goto_65

    :catch_5d
    move-exception p0

    .line 5482
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at ContainerConfigurationPolicy API removePackageFromInstallWhiteList "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_65
    :goto_65
    return v0
.end method

.method public removeSecureKeyPad(ILjava/lang/String;)Z
    .registers 11

    const-string/jumbo v0, "removeSecureKeyPad"

    .line 5295
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 5296
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeSecureKeyPad called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5297
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 5298
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSecureKeyPad(I)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x1

    if-nez p0, :cond_34

    .line 5300
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "list is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5303
    :cond_34
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 5304
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot find: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5307
    :cond_51
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_55
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 5308
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5309
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 5310
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5311
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 5315
    :cond_81
    sget-object p2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "next remove from DB"

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5316
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result p2

    .line 5317
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p2, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 5318
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 p2, 0x0

    .line 5321
    :try_start_97
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "adminUid"

    .line 5322
    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "featureType"

    const-string v5, "KEYPAD"

    .line 5323
    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5324
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_b2} :catch_135
    .catchall {:try_start_97 .. :try_end_b2} :catchall_133

    const-string v5, "KnoxFeatureAccess"

    if-nez v1, :cond_e3

    .line 5326
    :try_start_b6
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove secure key pad entry in DB: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5327
    invoke-virtual {v0, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    if-lez p0, :cond_db

    .line 5328
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "entry deleted"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_139

    .line 5331
    :cond_db
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "failed to delete"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_139

    :cond_e3
    const-string p1, ""

    .line 5337
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    move v6, p2

    :goto_ea
    if-ge v6, v1, :cond_123

    add-int/lit8 v7, v1, -0x1

    if-ne v6, v7, :cond_106

    .line 5341
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_120

    .line 5343
    :cond_106
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_120
    add-int/lit8 v6, v6, 0x1

    goto :goto_ea

    .line 5347
    :cond_123
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "featureValue"

    .line 5348
    invoke-virtual {p0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5349
    invoke-virtual {v0, v5, p0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p0
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_131} :catch_135
    .catchall {:try_start_b6 .. :try_end_131} :catchall_133

    move p2, p0

    goto :goto_139

    :catchall_133
    move-exception p0

    goto :goto_153

    :catch_135
    move-exception p0

    .line 5352
    :try_start_136
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_139
    .catchall {:try_start_136 .. :try_end_139} :catchall_133

    .line 5354
    :goto_139
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5356
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addSecureKeyPad return value:  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 5354
    :goto_153
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5355
    throw p0
.end method

.method public final removeShortcutFromPersonal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 4701
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, " removeShortcutFromPersonal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p3, :cond_16

    .line 4703
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_16

    .line 4704
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_16
    move-object v1, v0

    .line 4706
    :goto_17
    new-instance p3, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {p3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4708
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x0

    if-nez v1, :cond_47

    .line 4713
    :try_start_25
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4714
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_34} :catch_73
    .catchall {:try_start_25 .. :try_end_34} :catchall_71

    if-nez p0, :cond_3a

    .line 4732
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 4717
    :cond_3a
    :try_start_3a
    new-instance v1, Landroid/content/ComponentName;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, p2, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4718
    invoke-virtual {p3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_4a

    .line 4720
    :cond_47
    invoke-virtual {p3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4722
    :goto_4a
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0

    .line 4724
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "component"

    .line 4725
    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo p2, "userid"

    .line 4726
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4727
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->REMOVE_SHORTCUT_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo p3, "remove_shortcut"

    invoke-virtual {p0, p2, p3, v0, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_6c} :catch_73
    .catchall {:try_start_3a .. :try_end_6c} :catchall_71

    .line 4732
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_71
    move-exception p0

    goto :goto_7b

    :catch_73
    move-exception p0

    .line 4729
    :try_start_74
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_71

    .line 4732
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :goto_7b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4733
    throw p0
.end method

.method public resetContainerOnReboot(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 3

    .line 3458
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Not support Container Only mode"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final restartBluetooth()V
    .registers 5

    .line 3573
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 3574
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restartBluetooth called! ba = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_29

    .line 3575
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    .line 3577
    iput-boolean v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mRestart:Z

    .line 3578
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_29
    return-void
.end method

.method public final restoreDisabledPackages(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/container/KnoxContainerManager;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/container/KnoxContainerManager;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2a

    if-eqz p2, :cond_2a

    .line 4272
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-le p0, v0, :cond_2a

    .line 4273
    invoke-interface {p1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 4274
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-eqz p0, :cond_2a

    .line 4275
    array-length p1, p0

    if-lez p1, :cond_2a

    .line 4276
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    :cond_2a
    return-void
.end method

.method public final saveBlockedList(ILjava/util/Set;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 4162
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const-string v1, "ContainerOnly_wifiAP"

    if-eqz v0, :cond_f

    .line 4163
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;I)Z

    move-result p0

    goto :goto_46

    .line 4165
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4166
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 4169
    :cond_39
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "wifiSSIDforKNOX"

    .line 4169
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    :goto_46
    return p0
.end method

.method public final sendContainerAdminChangeIntent(II)V
    .registers 8

    .line 4392
    new-instance p0, Landroid/content/Intent;

    const-string v0, "enterprise.container.admin.changed"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "containerid"

    .line 4393
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.UID"

    .line 4394
    invoke-virtual {p0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4395
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    .line 4396
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 4395
    invoke-virtual {v2, p0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 4400
    new-instance p0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.CONTAINER_ADMIN_CHANGED"

    invoke-direct {p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4401
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4402
    invoke-virtual {p0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4403
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/os/UserHandle;

    .line 4404
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p2, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 4403
    invoke-virtual {p1, p0, p2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public final sendContainerAdminLockIntent(Ljava/lang/String;II)V
    .registers 5

    .line 750
    new-instance p0, Landroid/content/Intent;

    const-string v0, "enterprise.container.locked"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_12

    .line 751
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 752
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_12
    const-string p1, "containerid"

    .line 754
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 755
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p3}, Landroid/os/UserHandle;-><init>(I)V

    const-string p3, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    invoke-virtual {p1, p0, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public final sendContainerAdminUnlockIntent(Ljava/lang/String;II)V
    .registers 8

    .line 760
    new-instance p0, Landroid/content/Intent;

    const-string v0, "enterprise.container.unlocked"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_12

    .line 761
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 762
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_12
    const-string v0, "containerid"

    .line 764
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 765
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    invoke-virtual {v1, p0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 768
    new-instance p0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.CONTAINER_UNLOCKED"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_35

    .line 769
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_35

    .line 770
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    :cond_35
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 773
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, p0, p2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public final sendContainerCreationIntent(Ljava/lang/String;IIIII)V
    .registers 15

    .line 623
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.samsung.knox.container.creation.status"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_12

    .line 624
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 625
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_12
    const-string v0, "code"

    .line 627
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "requestId"

    .line 628
    invoke-virtual {p0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    .line 629
    invoke-virtual {p0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "specificErrorCode"

    const/16 v4, -0x3f6

    if-ne p2, v4, :cond_2e

    if-eqz p6, :cond_2e

    .line 631
    invoke-virtual {p0, v3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 633
    :cond_2e
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    const-string v7, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    invoke-virtual {v5, p0, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 636
    new-instance p0, Landroid/content/Intent;

    const-string v5, "com.samsung.android.knox.intent.action.CONTAINER_CREATION_STATUS"

    invoke-direct {p0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_50

    .line 637
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_50

    .line 638
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    :cond_50
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 641
    invoke-virtual {p0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 642
    invoke-virtual {p0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-ne p2, v4, :cond_60

    if-eqz p6, :cond_60

    .line 644
    invoke-virtual {p0, v3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    :cond_60
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/os/UserHandle;

    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-direct {p2, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, p0, p2, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public final sendContainerCreationIntentBC(Ljava/lang/String;IIII)V
    .registers 8

    const-string p0, "containerid"

    const-string p4, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    if-lez p2, :cond_52

    .line 697
    new-instance p3, Landroid/content/Intent;

    const-string v0, "enterprise.container.created.nonactive"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_18

    .line 698
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 699
    invoke-virtual {p3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 701
    :cond_18
    invoke-virtual {p3, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    .line 702
    invoke-virtual {p3, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 703
    sget-object p5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p5, p3, v0, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 706
    new-instance p3, Landroid/content/Intent;

    const-string p5, "enterprise.container.setup.success"

    invoke-direct {p3, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_40

    .line 707
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_40

    .line 708
    invoke-virtual {p3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    :cond_40
    invoke-virtual {p3, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 711
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p3, p1, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_a1

    :cond_52
    const/16 p5, -0x3f9

    if-ne p2, p5, :cond_81

    .line 714
    new-instance p2, Landroid/content/Intent;

    const-string p5, "enterprise.container.cancelled"

    invoke-direct {p2, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_68

    .line 715
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_68

    .line 716
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_68
    const/4 p1, 0x1

    .line 718
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p0, "requestid"

    .line 719
    invoke-virtual {p2, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 720
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    invoke-direct {p1, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p2, p1, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_a1

    .line 723
    :cond_81
    new-instance p0, Landroid/content/Intent;

    const-string p2, "enterprise.container.setup.failure"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_93

    .line 724
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_93

    .line 725
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    :cond_93
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    invoke-direct {p2, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, p0, p2, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :goto_a1
    return-void
.end method

.method public final sendContainerRemovalIntent(II)V
    .registers 7

    .line 733
    new-instance p0, Landroid/content/Intent;

    const-string v0, "enterprise.container.remove.progress"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "containerid"

    .line 734
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 735
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    invoke-virtual {v1, p0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    if-nez p1, :cond_26

    .line 740
    new-instance p0, Landroid/content/Intent;

    const-string p1, "enterprise.container.uninstalled"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_2d

    .line 742
    :cond_26
    new-instance p0, Landroid/content/Intent;

    const-string p1, "enterprise.container.unmountfailure"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 744
    :goto_2d
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 745
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p2, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, p0, p2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public final sendContainerStateChangeIntent(Ljava/lang/String;IIII)V
    .registers 13

    .line 652
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.samsung.enterprise.container_state_changed"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_12

    .line 653
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 654
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    :cond_12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "containerid"

    .line 657
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "container_old_state"

    .line 659
    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "container_new_state"

    .line 660
    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "intent"

    .line 662
    invoke-virtual {p0, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 663
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    invoke-virtual {v0, p0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 667
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.action.CONTAINER_STATE_CHANGED"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_4a

    .line 668
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 669
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    :cond_4a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 672
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 674
    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 675
    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 677
    invoke-virtual {p0, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 678
    sget-object p2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance p4, Landroid/os/UserHandle;

    invoke-direct {p4, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, p0, p4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    if-eqz p1, :cond_89

    .line 682
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_89

    .line 683
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    move-result-object p1

    .line 684
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 685
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p2, p1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_89
    return-void
.end method

.method public final sendIntentBroadcastForContainer(ILjava/lang/String;)V
    .registers 5

    .line 862
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendIntentBroadcastForContainer : containerId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "container_id"

    .line 864
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.samsung.klmsagent"

    .line 865
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 866
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/os/UserHandle;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public setAppSeparationConfig(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 6079
    sget-boolean v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isUserMode:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v2

    if-nez v2, :cond_18

    .line 6080
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setAppSeparationConfig() : Activate DO!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 6083
    :cond_18
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 6084
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed to activate AppSeparation - on DeviceOwner DualDAR mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 6089
    :cond_26
    new-instance v2, Ljava/util/ArrayList;

    const-string v4, "com.samsung.android.knox.permission.KNOX_APP_SEPARATION"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v4, p1

    invoke-virtual {v0, v4, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 6090
    iget v2, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-lez v2, :cond_42

    goto :goto_46

    .line 6093
    :cond_42
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    :goto_46
    const-string v4, "Admin "

    const-string v5, "adminUid"

    const-string v6, "AppSeparationTable"

    const/4 v7, 0x1

    if-nez v1, :cond_9b

    .line 6098
    :try_start_4f
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "setAppSeparationConfig() : config is null. remove row and enforce."

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6099
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6100
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6101
    iget-object v5, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    .line 6102
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->enforceAppSeparationDeletion()V

    const/4 v8, 0x5

    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 6104
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "KnoxMUMContainerPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 6105
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has de-activated Separated Apps."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 6103
    invoke-static/range {v8 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    return v7

    :cond_9b
    const-string v8, "APP_SEPARATION_OUTSIDE"

    .line 6111
    invoke-virtual {v1, v8, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_a5

    move v9, v7

    goto :goto_a6

    :cond_a5
    move v9, v3

    :goto_a6
    const-string v10, ","

    const-string v11, "APP_SEPARATION_APP_LIST"

    .line 6113
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v10, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 6116
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 6117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6118
    iget-object v5, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, v6, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v5

    if-lez v5, :cond_ce

    .line 6121
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "AppSeparation is already enabled. Use setAppSeparationWhitelistedApps() to update app list."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_ce
    const-string v5, "AppSeparationOutside"

    .line 6124
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "AppSeparationApplist"

    .line 6125
    invoke-virtual {v10, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6126
    iget-object v5, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, v6, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_185

    .line 6129
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setAppSeparationConfig passed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6130
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->enforceAppSeparationAllowListUpdate()V

    const/4 v9, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 6132
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    const-string v13, "KnoxMUMContainerPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 6133
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has located Apps  ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_11c

    const-string/jumbo v4, "outside"

    goto :goto_11f

    :cond_11c
    const-string/jumbo v4, "inside"

    :goto_11f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") of Separated Apps"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    .line 6131
    invoke-static/range {v9 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    const/16 v16, 0x5

    const/16 v17, 0x1

    const/16 v18, 0x1

    .line 6135
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    const-string v20, "KnoxMUMContainerPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " installation is allowed by admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 6136
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for Separated Apps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    .line 6134
    invoke-static/range {v16 .. v22}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_168} :catch_169

    return v7

    :catch_169
    move-exception v0

    .line 6140
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAppSeparationConfig() exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_185
    return v3
.end method

.method public setAppSeparationWhitelistedApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "AppSeparationTable"

    .line 6149
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_APP_SEPARATION"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 6150
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-lez p1, :cond_1c

    goto :goto_20

    .line 6153
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    :goto_20
    const/4 v1, 0x0

    if-nez p2, :cond_2c

    .line 6158
    :try_start_23
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setAppSeparationWhitelistedApps() : AppList cannot be null. Please use setAppSeperationConfig to wipe app separation policy"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2c
    const-string v2, ","

    .line 6161
    invoke-static {v2, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    .line 6164
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "adminUid"

    .line 6165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6166
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v3

    if-lez v3, :cond_a0

    .line 6169
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "AppSeparationApplist"

    .line 6170
    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6171
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v0, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 6177
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAppSeparationWhitelistedApps passed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6178
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->enforceAppSeparationAllowListUpdate()V

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 6180
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "KnoxMUMContainerPolicy"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Application "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " installation is allowed by admin "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 6181
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for Separated Apps"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 6179
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    .line 6173
    :cond_a0
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "No default policy applied. Use setAppSeperationConfig()"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_a7} :catch_a8

    return v1

    :catch_a8
    move-exception p0

    .line 6185
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAppSeparationWhitelistedApps() exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c4
    return v1
.end method

.method public setContactsSharingEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 7

    .line 3849
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_62

    .line 3851
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3852
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3855
    :try_start_1c
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 3856
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setBluetoothContactSharingEnabledForKnox(IZ)V

    .line 3857
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getBluetoothContactSharingEnabledForKnox(I)Z

    move-result p0

    if-ne p0, p2, :cond_34

    const/4 v1, 0x1

    .line 3861
    :cond_34
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setContactsSharingEnabled value : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", status : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_53} :catch_56
    .catchall {:try_start_1c .. :try_end_53} :catchall_54

    goto :goto_5a

    :catchall_54
    move-exception p0

    goto :goto_5e

    :catch_56
    move-exception p0

    .line 3863
    :try_start_57
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_54

    .line 3865
    :goto_5a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_5e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3866
    throw p0

    :cond_62
    return v1
.end method

.method public setCustomResource(ILcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 5876
    new-instance v4, Ljava/util/ArrayList;

    const-string v5, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    const/4 v5, -0x2

    if-nez v4, :cond_1f

    return v5

    .line 5882
    :cond_1f
    iget v2, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 5883
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const-string v4, "/data/misc/container3.0/"

    .line 5885
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5888
    :try_start_3b
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10501cf

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    .line 5889
    sget-object v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10501ce

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10
    :try_end_56
    .catchall {:try_start_3b .. :try_end_56} :catchall_24a

    float-to-int v10, v10

    const-string v11, " "

    const-string/jumbo v12, "key-image"

    const/4 v15, 0x1

    if-ne v1, v15, :cond_ba

    .line 5893
    :try_start_5f
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "badgeIcon.png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    if-eqz v3, :cond_79

    .line 5894
    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    goto :goto_7a

    :cond_79
    const/4 v3, 0x0

    :goto_7a
    if-eqz v3, :cond_b6

    .line 5896
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 5897
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 5898
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v14

    const-string v14, "container badge dimensions "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5899
    div-int/lit8 v5, v9, 0x2

    if-gt v12, v5, :cond_aa

    div-int/lit8 v5, v10, 0x2

    if-le v15, v5, :cond_b2

    :cond_aa
    const/4 v5, 0x2

    .line 5900
    div-int/2addr v9, v5

    div-int/2addr v10, v5

    const/4 v5, 0x0

    invoke-static {v3, v9, v10, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_b2
    move-object/from16 v14, v17

    goto/16 :goto_12f

    :cond_b6
    move-object/from16 v17, v14

    goto/16 :goto_12f

    :cond_ba
    const/4 v5, 0x2

    if-ne v1, v5, :cond_110

    .line 5904
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "profileIcon.png"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    if-eqz v3, :cond_d8

    .line 5905
    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    goto :goto_d9

    :cond_d8
    const/4 v3, 0x0

    :goto_d9
    if-eqz v3, :cond_10d

    .line 5907
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 5908
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 5909
    sget-object v13, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v14

    const-string v14, "container icon dimensions "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gt v5, v9, :cond_105

    if-le v12, v10, :cond_10a

    :cond_105
    const/4 v5, 0x0

    .line 5911
    invoke-static {v3, v9, v10, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_10a
    move-object/from16 v14, v16

    goto :goto_12f

    :cond_10d
    move-object/from16 v16, v14

    goto :goto_12f

    :cond_110
    const/4 v5, 0x3

    if-ne v1, v5, :cond_19e

    .line 5915
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "nameIcon.png"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    if-eqz v3, :cond_12e

    .line 5916
    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    goto :goto_12f

    :cond_12e
    const/4 v3, 0x0

    :goto_12f
    if-nez v3, :cond_143

    .line 5958
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0
    :try_end_13a
    .catchall {:try_start_5f .. :try_end_13a} :catchall_24a

    if-eqz v0, :cond_13e

    const/4 v5, 0x0

    goto :goto_13f

    :cond_13e
    const/4 v5, -0x2

    .line 5986
    :goto_13f
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 5960
    :cond_143
    :try_start_143
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5961
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_15c

    .line 5962
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 5963
    invoke-virtual {v5, v4, v9}, Ljava/io/File;->setReadable(ZZ)Z

    .line 5964
    invoke-virtual {v5, v4}, Ljava/io/File;->setWritable(Z)Z

    .line 5965
    invoke-virtual {v5, v4, v9}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 5968
    :cond_15c
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5969
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_175

    .line 5970
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 5971
    invoke-virtual {v4, v5, v8}, Ljava/io/File;->setReadable(ZZ)Z

    .line 5972
    invoke-virtual {v4, v5}, Ljava/io/File;->setWritable(Z)Z

    .line 5973
    invoke-virtual {v4, v5, v8}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 5975
    :cond_175
    invoke-virtual {v0, v3, v14}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->writeFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17d

    const/4 v5, 0x0

    goto :goto_17e

    :cond_17d
    const/4 v5, -0x2

    :goto_17e
    if-nez v5, :cond_19a

    const/4 v3, 0x1

    if-ne v1, v3, :cond_19a

    .line 5977
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getLauncherRefreshIntent(I)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "com.samsung.android.knox.container.block_create_shortcut"

    .line 5978
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.container.name"

    .line 5979
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5980
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->refreshLauncherUI(Landroid/content/Intent;)V
    :try_end_19a
    .catchall {:try_start_143 .. :try_end_19a} :catchall_24a

    .line 5986
    :cond_19a
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_19e
    const/4 v4, 0x4

    const-string/jumbo v5, "key-name"

    if-ne v1, v4, :cond_1ea

    if-eqz v3, :cond_1ac

    const/4 v1, 0x0

    .line 5918
    :try_start_1a7
    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_1ad

    :cond_1ac
    const/4 v14, 0x0

    .line 5922
    :goto_1ad
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {v2, v14}, Lcom/samsung/android/knox/SemPersonaManager;->setCustomName(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1dd

    .line 5924
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getLauncherRefreshIntent(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->refreshLauncherUI(Landroid/content/Intent;)V

    const-string v1, "com.samsung.android.knox.containeragent"

    .line 5925
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->notifyProfileNameChanged(Ljava/lang/String;I)V

    .line 5926
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d8
    .catchall {:try_start_1a7 .. :try_end_1d8} :catchall_24a

    .line 5986
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return v0

    .line 5929
    :cond_1dd
    :try_start_1dd
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setting Custom Profile name unsuccessful"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e5
    .catchall {:try_start_1dd .. :try_end_1e5} :catchall_24a

    .line 5986
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, -0x2

    return v0

    :cond_1ea
    const/4 v4, 0x5

    if-ne v1, v4, :cond_22e

    const/4 v1, 0x0

    if-eqz v3, :cond_1f5

    .line 5941
    :try_start_1f0
    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_1f6

    :cond_1f5
    move-object v14, v1

    .line 5942
    :goto_1f6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {v2, v14}, Lcom/samsung/android/knox/SemPersonaManager;->setPersonalModeName(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_221

    .line 5944
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getLauncherRefreshIntent(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->refreshLauncherUI(Landroid/content/Intent;)V

    .line 5945
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Personal mode tab : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21c
    .catchall {:try_start_1f0 .. :try_end_21c} :catchall_24a

    .line 5986
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return v0

    .line 5948
    :cond_221
    :try_start_221
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setting personal tab name unsuccessful"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_229
    .catchall {:try_start_221 .. :try_end_229} :catchall_24a

    .line 5986
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, -0x2

    return v0

    .line 5952
    :cond_22e
    :try_start_22e
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCustomResource - not a valid type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_245
    .catchall {:try_start_22e .. :try_end_245} :catchall_24a

    const/4 v0, -0x1

    .line 5986
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_24a
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5987
    throw v0
.end method

.method public final setDefaultHomeLauncher(Landroid/content/ComponentName;)Z
    .registers 9

    const/4 v0, 0x0

    .line 4938
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getEnabledLaunchers(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_71

    .line 4941
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4942
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Replacing preferred activity packageName("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") className("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 4945
    :cond_43
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 4946
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    .line 4947
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v3, "android.intent.category.DEFAULT"

    .line 4948
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v3, "android.intent.category.MONKEY"

    .line 4949
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const/high16 v3, 0x100000

    .line 4951
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/content/ComponentName;

    invoke-interface {p0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, [Landroid/content/ComponentName;

    const/4 v6, 0x0

    move-object v5, p1

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_71} :catch_73

    :cond_71
    const/4 p0, 0x1

    return p0

    :catch_73
    move-exception p0

    .line 4955
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in disableOwnerLaunchersforCOM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setEnforceAuthForContainer(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public setFIDOInfo(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z
    .registers 10

    const-string v0, ""

    .line 5157
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFIDOInfo()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5158
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x1

    const-string v2, "cid"

    const-string v3, "adminUid"

    const-string v4, "KnoxFIDOSettingTable"

    if-nez p2, :cond_4a

    .line 5161
    :try_start_25
    sget-object p2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setFIDOinfo() : fidoinfo is null. remove row."

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5162
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 5163
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5164
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5165
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    return v1

    :cond_4a
    const-string v5, "fido_request_uri"

    .line 5170
    invoke-virtual {p2, v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "fido_response_uri"

    .line 5171
    invoke-virtual {p2, v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5174
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5175
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5176
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5177
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p1, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p1
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_73} :catch_a4

    const-string/jumbo v2, "respond"

    const-string/jumbo v3, "request"

    if-lez p1, :cond_8d

    .line 5181
    :try_start_7b
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 5182
    invoke-virtual {p1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5183
    invoke-virtual {p1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5184
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p0

    goto :goto_99

    .line 5187
    :cond_8d
    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5188
    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5189
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    :goto_99
    if-eqz p0, :cond_c0

    .line 5192
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setFIDOInfo passed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_a3} :catch_a4

    return v1

    :catch_a4
    move-exception p0

    .line 5196
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setFIDOInfo() exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c0
    const/4 p0, 0x0

    return p0
.end method

.method public final setFeatureAccessIME(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 8

    .line 5384
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5385
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "featureType"

    const-string v2, "KEYPAD"

    .line 5386
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5390
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "KnoxFeatureAccess"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    const-string v3, "featureValue"

    if-lez v1, :cond_4a

    .line 5393
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 5395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getFeatureAccessIME(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5396
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p0

    goto :goto_53

    .line 5399
    :cond_4a
    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5400
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    :goto_53
    if-eqz p0, :cond_5f

    .line 5403
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setFeatureAccessIME policy passed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_5f
    const/4 p0, 0x0

    return p0
.end method

.method public final setFeatureAccessPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .registers 8

    .line 3982
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3983
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "adminUid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "featureType"

    .line 3984
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3985
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p2, "KnoxFeatureAccess"

    invoke-virtual {p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p1

    const-string v1, ""

    const-string v2, "featureValue"

    if-lez p1, :cond_41

    .line 3988
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 3989
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3990
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p0

    goto :goto_59

    .line 3993
    :cond_41
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3994
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    :goto_59
    if-eqz p0, :cond_65

    .line 3997
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setFeatureAccessPermission policy passed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_65
    const/4 p0, 0x0

    return p0
.end method

.method public final setFilePermission(Ljava/lang/String;)V
    .registers 3

    .line 5256
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 5258
    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 5259
    invoke-virtual {p0, p1}, Ljava/io/File;->setWritable(Z)Z

    .line 5260
    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    return-void
.end method

.method public setHibernationTimeout(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 4

    .line 4135
    new-instance p2, Ljava/util/ArrayList;

    const-string p3, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    const/4 p0, 0x0

    return p0
.end method

.method public final setProfileEnabled(I)V
    .registers 4

    .line 1796
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->setUserEnabled(I)V

    .line 1797
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 1798
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1799
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string p1, "android.intent.extra.USER"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x50000000

    .line 1800
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-nez p0, :cond_28

    return-void

    .line 1807
    :cond_28
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public setSettingsOptionEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .registers 8

    .line 4582
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setSettingsOptionEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p2, :cond_83

    .line 4584
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_83

    .line 4589
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    :try_start_25
    const-string/jumbo v1, "option_callerinfo"

    .line 4593
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_6b

    .line 4594
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 4595
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4596
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object p1

    .line 4597
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4598
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    move-result-object p2

    if-eqz p2, :cond_6b

    .line 4599
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    if-nez p3, :cond_4e

    move p2, v1

    goto :goto_4f

    :cond_4e
    move p2, v0

    :goto_4f
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_52} :catch_54

    move v0, v1

    goto :goto_6b

    .line 4604
    :catch_54
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setSettingsOptionEnabled failed : result = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4607
    :cond_6b
    :goto_6b
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setSettingsOptionEnabled() : enable = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 4585
    :cond_83
    :goto_83
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Error from setSettingsOptionEnabled(): option is null or empty"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final setupDefaultOwnerLauncher([Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 10

    .line 5019
    :try_start_0
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setupDefaultOwnerLauncher is called for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5020
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 5021
    new-instance v2, Landroid/content/IntentFilter;

    const-string p0, "android.intent.action.MAIN"

    invoke-direct {v2, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p0, "android.intent.category.HOME"

    .line 5022
    invoke-virtual {v2, p0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string p0, "android.intent.category.DEFAULT"

    .line 5023
    invoke-virtual {v2, p0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string p0, "android.intent.category.MONKEY"

    .line 5024
    invoke-virtual {v2, p0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const/high16 v3, 0x100000

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p2

    .line 5026
    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception p0

    .line 5029
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3d
    return-void
.end method

.method public final showSecureFolder(I)V
    .registers 8

    .line 1108
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSecureFolderId()I

    move-result p0

    .line 1109
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showSecureFolder id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_75

    :try_start_26
    const-string p1, "activity"

    .line 1113
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ActivityManagerService;

    if-eqz p1, :cond_75

    .line 1115
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v0, :cond_75

    .line 1116
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPersonaActivityHelper()Lcom/android/server/wm/PersonaActivityHelper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/PersonaActivityHelper;->isKnoxWindowVisibleLocked(ZIZII)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1117
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showSecureFolder :: Exit from Multiwindow first"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 1122
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 1123
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1124
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1126
    :cond_67
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPersonaActivityHelper()Lcom/android/server/wm/PersonaActivityHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/PersonaActivityHelper;->exitAndLockSecureFolder(I)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_70} :catch_71

    goto :goto_75

    :catch_71
    move-exception p0

    .line 1129
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_75
    :goto_75
    return-void
.end method

.method public systemReady()V
    .registers 3

    const-string/jumbo v0, "systemReady"

    .line 898
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 899
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "System ready called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->registerContentObserver()V

    .line 902
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->registerContainerLicenseObserver()V

    .line 904
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    .line 905
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mActivityManager:Landroid/app/ActivityManager;

    .line 907
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    invoke-static {v0, v1}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    .line 1001
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 1002
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    :cond_3b
    return-void
.end method

.method public final trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 4089
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "trimHiddenVersion("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x5f

    .line 4091
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2e

    const/4 v0, 0x0

    .line 4092
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2e
    return-object p1
.end method

.method public unlockContainer(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 12

    .line 2456
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unlockContainer is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    const-string/jumbo p1, "password_policy"

    .line 2460
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    check-cast p1, Lcom/android/server/enterprise/security/PasswordPolicy;

    const/4 v0, 0x0

    if-eqz p1, :cond_63

    .line 2463
    :try_start_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2464
    invoke-virtual {p1, p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->unlock(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_57

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 2467
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "KnoxMUMContainerPolicy"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has unlocked Workspace."

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2466
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2471
    :cond_57
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_5a} :catch_5b

    goto :goto_63

    :catch_5b
    move-exception p0

    .line 2474
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed at KnoxMUMContainerPolicy API unlockContainer "

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2477
    :cond_63
    :goto_63
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unlockContainer result - "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public unregisterBroadcastReceiverIntent(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public updateProvisioningState(Landroid/os/Bundle;)Z
    .registers 8

    const-string/jumbo v0, "updateProvisioningState"

    .line 1685
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_12

    .line 1688
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateProvisioningState() invalid input"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_12
    const-string/jumbo v1, "state"

    const/4 v2, -0x1

    .line 1692
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1693
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateProvisioningState called: state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v2, :cond_3c

    .line 1696
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateProvisioningState() invalid state"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1700
    :cond_3c
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_62

    .line 1703
    :try_start_42
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    if-eqz v1, :cond_54

    iget v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->state:I

    if-le v1, v3, :cond_54

    .line 1704
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateProvisioningState() provisioning already ongoing"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    monitor-exit v2

    return v0

    .line 1708
    :cond_54
    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState-IA;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 1709
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->start(Landroid/os/Bundle;)Z

    move-result p0

    monitor-exit v2

    return p0

    .line 1712
    :cond_62
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    if-nez p0, :cond_70

    .line 1713
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "no ongoing provisioning"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    monitor-exit v2

    return v0

    .line 1716
    :cond_70
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->update(Landroid/os/Bundle;)Z

    move-result p0

    monitor-exit v2

    return p0

    :catchall_76
    move-exception p0

    .line 1718
    monitor-exit v2
    :try_end_78
    .catchall {:try_start_42 .. :try_end_78} :catchall_76

    throw p0
.end method

.method public final validateResetPwdKey(Ljava/lang/String;)Z
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_49

    move v0, p0

    .line 4544
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 4545
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_17

    const/16 v2, 0x5a

    if-gt v1, v2, :cond_17

    goto :goto_26

    :cond_17
    const/16 v2, 0x61

    if-lt v1, v2, :cond_20

    const/16 v2, 0x7a

    if-gt v1, v2, :cond_20

    goto :goto_26

    :cond_20
    const/16 v2, 0x30

    if-lt v1, v2, :cond_26

    const/16 v2, 0x39

    :cond_26
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4561
    :cond_29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_42

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x20

    if-lt p1, v0, :cond_42

    .line 4562
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string p1, " inside validateResetPwdKey password is validated"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    goto :goto_49

    .line 4565
    :cond_42
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v0, " inside validateResetPwdKey password is not per requirement "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    :goto_49
    return p0
.end method

.method public final writeFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 5231
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_1f
    .catchall {:try_start_1 .. :try_end_6} :catchall_1d

    .line 5232
    :try_start_6
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_1a
    .catchall {:try_start_6 .. :try_end_e} :catchall_17

    .line 5239
    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_2e

    :catch_12
    move-exception v0

    .line 5242
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e

    :catchall_17
    move-exception p0

    move-object v0, v1

    goto :goto_34

    :catch_1a
    move-exception p1

    move-object v0, v1

    goto :goto_20

    :catchall_1d
    move-exception p0

    goto :goto_34

    :catch_1f
    move-exception p1

    .line 5235
    :goto_20
    :try_start_20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_1d

    if-eqz v0, :cond_2d

    .line 5239
    :try_start_25
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_2d

    :catch_29
    move-exception p1

    .line 5242
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2d
    :goto_2d
    const/4 p1, 0x0

    :goto_2e
    if-eqz p1, :cond_33

    .line 5247
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setFilePermission(Ljava/lang/String;)V

    :cond_33
    return p1

    :goto_34
    if-eqz v0, :cond_3e

    .line 5239
    :try_start_36
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception p1

    .line 5242
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 5244
    :cond_3e
    :goto_3e
    throw p0
.end method
