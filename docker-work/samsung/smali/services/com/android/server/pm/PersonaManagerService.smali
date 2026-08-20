.class public Lcom/android/server/pm/PersonaManagerService;
.super Lcom/samsung/android/knox/ISemPersonaManager$Stub;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PersonaManagerService$PackageDeleteObserver;,
        Lcom/android/server/pm/PersonaManagerService$PersonaHandler;,
        Lcom/android/server/pm/PersonaManagerService$BootReceiver;,
        Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;,
        Lcom/android/server/pm/PersonaManagerService$LocalService;,
        Lcom/android/server/pm/PersonaManagerService$Injector;
    }
.end annotation


# static fields
.field public static final COUNTRY_SELECTION_ACTIVITY:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.COUNTRY_SELECTION"

.field public static final DEBUG:Z

.field public static final DEVICE_SUPPORT_KNOX:Z

.field public static final FINGERPRINT_ADDED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_ADDED"

.field public static final FINGERPRINT_PASSWORD_UPDATED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_PASSWORD_UPDATED"

.field public static final FINGERPRINT_REMOVED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

.field public static final FINGERPRINT_RESET:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_RESET"

.field public static final FOTA_DEBUG:Z = false

.field public static final FOTA_UPGRADE_VERSION:I = 0xa

.field public static final LOG_FOTA_TAG:Ljava/lang/String; = "PersonaManagerService:FOTA"

.field public static final LOG_KA_TAG:Ljava/lang/String; = "PersonaManagerService:KnoxAnalytics"

.field public static final LOG_TAG:Ljava/lang/String; = "PersonaManagerService"

.field public static final MSG_ACTIVITY_RESUMED:I = 0x3c

.field public static final MSG_BOOT_COMPLETE_RECEIVED:I = 0xd

.field public static final MSG_BOOT_LOAD_PERSONA_SYSTEMREADY:I = 0xf

.field public static final MSG_FOREGROUND_PROFILE_SWITCH:I = 0x50

.field public static final MSG_KNOX_ANALYTICS_ACCOUNTS_CHANGED:I = 0x46

.field public static final MSG_KNOX_ANALYTICS_SEND_LOCATION_LOG:I = 0x45

.field public static final MSG_KNOX_APP_SEPARATION_ACTIVATION:I = 0x4a

.field public static final MSG_KNOX_APP_SEPARATION_CLEAN_UP:I = 0x4b

.field public static final MSG_KNOX_APP_SEPARATION_DELETION:I = 0x48

.field public static final MSG_KNOX_APP_SEPARATION_INSTALLATION:I = 0x49

.field public static final MSG_KNOX_APP_SEPARATION_LIST_UPDATE:I = 0x47

.field public static final MSG_MIGRATE_NEWPO:I = 0x63

.field public static final MSG_POST_NOTI_FOR_PWD_CHANGE_DO:I = 0xc8

.field public static final MSG_REMOVE_USER:I = 0x1e

.field public static final MSG_SEAMLESS_QUICK_SWITCH:I = 0x5a

.field public static final MSG_STARTED_DREAMING:I = 0xe

.field public static final MSG_STARTED_KEYGUARD_TIMEOUT:I = 0xa

.field public static final NET_TSS_SETUP_ACTIVITY:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.NET_TSS_SETUP"

.field public static final NEWPO_TAG:Ljava/lang/String; = "NEWPO"

.field public static final PERSONA_CACHE_FILENAME:Ljava/lang/String; = "persona_cache.xml"

.field public static final PERSONA_LIST_FILENAME:Ljava/lang/String; = "personalist.xml"

.field public static final SA_EVENT_QUICK_SWITCH:Ljava/lang/String; = "2040"

.field public static final SECUREFOLDER_INIT_ID:I = -0x3e8

.field public static final SETUPWIZARD_COMPLETE:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

.field public static final TAG_APP_TYPE:Ljava/lang/String; = "appType"

.field public static final TAG_CACHE:Ljava/lang/String; = "cache"

.field public static final TAG_FOTA_VERSION:Ljava/lang/String; = "fotaversion"

.field public static final TAG_FW_VERSION:Ljava/lang/String; = "fwversion"

.field public static final TAG_PERSONA_CACHE:Ljava/lang/String; = "personacache"

.field public static final TERMS_ACTIVITY:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.TERMS"

.field public static final TSS_SETUP_ACTIVITY:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.TSS_SETUP"

.field public static final USER_INFO_DIR:Ljava/lang/String;

.field public static final USER_WITH_PERSONA_LIST_FILENAME:Ljava/lang/String; = "userwithpersonalist.xml"

.field public static containerCriticalApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mSeparationConfiginCache:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static sInstance:Lcom/android/server/pm/PersonaManagerService;

.field public static workTabSupportLauncherUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final APP_SEPARATION_ACTION_STATUS:Ljava/lang/String;

.field public final APP_SEPARATION_ACTION_TYPE:Ljava/lang/String;

.field public final APP_SEPARATION_ACTION_TYPE_ACTIVATE:Ljava/lang/String;

.field public final APP_SEPARATION_ACTION_TYPE_DEACTIVATE:Ljava/lang/String;

.field public final APP_SEPARATION_DEFAULT_NAME:Ljava/lang/String;

.field public final APP_SEPARATION_WL_RETURN_EXTRA:Ljava/lang/String;

.field public final INTENT_APP_SEPARATION_ACTION_RETURN:Ljava/lang/String;

.field public final INTENT_APP_SEPARATION_ALLOWEDLIST_RETURN:Ljava/lang/String;

.field public final KEY_USER_REMOVED:Ljava/lang/String;

.field public final MDM_ENTERPRISE_APP_SEPARATION_PERMISSION:Ljava/lang/String;

.field public final UNKNOWN_USER_ID:I

.field public analyticsObserver:Landroid/database/ContentObserver;

.field public containerDependencyWrapper:Lcom/android/server/knox/ContainerDependencyWrapper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public containerNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public handlerThread:Landroid/os/HandlerThread;

.field public isFotaUpgradeVersionChanged:Z

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAnalyticsReceiver:Landroid/content/BroadcastReceiver;

.field public final mBaseUserPath:Ljava/io/File;

.field public final mContext:Landroid/content/Context;

.field public mCorePackageUid:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mDeviceEmergencyModeLock:Ljava/lang/Object;

.field public mDeviceInteractive:Z

.field public final mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

.field public mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public mFingerPrintReceiver:Landroid/content/BroadcastReceiver;

.field public mFirmwareVersion:Ljava/lang/String;

.field public final mFocusLauncherLock:Ljava/lang/Object;

.field public final mFocusLock:Ljava/lang/Object;

.field public mFocusedLauncherId:I

.field public mFocusedUserId:I

.field public mImeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

.field public mIsFOTAUpgrade:Z

.field public mKALockscreenTimeoutAdminFlag:Z

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

.field public mLegacyStateMonitor:Lcom/android/server/pm/PersonaLegacyStateMonitor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mPackageReceiver:Landroid/content/BroadcastReceiver;

.field public final mPersonaCacheFile:Ljava/io/File;

.field public final mPersonaCacheLock:Ljava/lang/Object;

.field public final mPersonaCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mPersonaDbLock:Ljava/lang/Object;

.field public final mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

.field public final mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

.field public mPersonaServiceProxy:Lcom/android/server/pm/PersonaServiceProxy;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mSeamLessSwitchHandler:Lcom/android/server/knox/SeamLessSwitchHandler;

.field public mSecureFolderId:I

.field public mSetupWizardCompleteReceiver:Landroid/content/BroadcastReceiver;

.field public mTrustManager:Landroid/app/trust/ITrustManager;

.field public final mUserHasBeenShutdownBefore:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUserHasBeenShutdownBefore"
        }
    .end annotation
.end field

.field public final mUserListFile:Ljava/io/File;

.field public mUserManager:Landroid/os/UserManager;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mUserReceiver:Landroid/content/BroadcastReceiver;

.field public mUserSwitchObserver:Landroid/app/UserSwitchObserver;

.field public final mUsersDir:Ljava/io/File;

.field public packageFilter:Landroid/content/IntentFilter;

.field public personaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field public requiredApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public xmlnotParsedforFOTA:Z


# direct methods
.method public static synthetic $r8$lambda$4SjrWR9H7ceU5OnTqtgsiQRclnc(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->lambda$getWorkName$1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KHKMHTWZussw6KeVSbPwOMjaE7M(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->lambda$getWorkProfileName$0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetanalyticsObserver(Lcom/android/server/pm/PersonaManagerService;)Landroid/database/ContentObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->analyticsObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetcontainerNames(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->containerNames:Ljava/util/HashSet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAnalyticsReceiver(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/BroadcastReceiver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mAnalyticsReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceLockedForUser(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFocusedUserId(Lcom/android/server/pm/PersonaManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmImeSet(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKeyguardManager(Lcom/android/server/pm/PersonaManagerService;)Landroid/app/KeyguardManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKnoxAnalyticsContainer(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/knox/KnoxAnalyticsContainer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockPatternUtils(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPersonaCacheMap(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPersonaHandler(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSeamLessSwitchHandler(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/knox/SeamLessSwitchHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mSeamLessSwitchHandler:Lcom/android/server/knox/SeamLessSwitchHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserHasBeenShutdownBefore(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserHasBeenShutdownBefore:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserListFile(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/UserManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsersDir(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmImeSet(Lcom/android/server/pm/PersonaManagerService;Ljava/util/Set;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmKALockscreenTimeoutAdminFlag(Lcom/android/server/pm/PersonaManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputrequiredApps(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->requiredApps:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerPermissionFor(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdeletePkg(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->deletePkg(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$menableMyFilesLauncherActivity(Lcom/android/server/pm/PersonaManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->enableMyFilesLauncherActivity(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceAppSeparationAllowListUpdateInternal(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->enforceAppSeparationAllowListUpdateInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceAppSeparationDeletionInternal(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->enforceAppSeparationDeletionInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceSeparatedAppsRemoveInternal(Lcom/android/server/pm/PersonaManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->enforceSeparatedAppsRemoveInternal()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetActivityManagerInternal(Lcom/android/server/pm/PersonaManagerService;)Landroid/app/ActivityManagerInternal;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDeviceFirmwareVersion(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetIMEPackages(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Set;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackages()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetIPackageManager(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/pm/IPackageManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetPersonaManager(Lcom/android/server/pm/PersonaManagerService;)Lcom/samsung/android/knox/SemPersonaManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetRequiredApps(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getRequiredApps()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserManager(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/UserManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetWorkTabSupportLauncherUids(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getWorkTabSupportLauncherUids()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleFOTAInstallToPackages(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->handleFOTAInstallToPackages()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleFotaResetSecureFolderAdmin(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->handleFotaResetSecureFolderAdmin()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minstallExistingPackageForPersona(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misBiometricsEnabledAfterFota(Lcom/android/server/pm/PersonaManagerService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isBiometricsEnabledAfterFota(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misOneLockOngoing(Lcom/android/server/pm/PersonaManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->isOneLockOngoing()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misPackageInstalledAsUser(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misStubApp(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;I)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->isStubApp(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mlogUserRemoval(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->logUserRemoval(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmigrateKnoxFingerprintPlusValueIfNeeded(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->migrateKnoxFingerprintPlusValueIfNeeded()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmigrateKnoxLockTimeoutValueIfNeeded(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->migrateKnoxLockTimeoutValueIfNeeded()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyStatusToKspAgent(Lcom/android/server/pm/PersonaManagerService;Landroid/content/Intent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprocessAppSeparationCreation(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationCreation()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrecoverContainerInfo(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->recoverContainerInfo()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterPackageReceiver(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->registerPackageReceiver()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveDisallowedSFpackages(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->removeDisallowedSFpackages()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendMessageAndLockTimeout(Lcom/android/server/pm/PersonaManagerService;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->sendMessageAndLockTimeout(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDpmScreenTimeoutFlag(Lcom/android/server/pm/PersonaManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->setDpmScreenTimeoutFlag(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwritePersonaCacheLocked(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->writePersonaCacheLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEVICE_SUPPORT_KNOX()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/pm/PersonaManagerService;->DEVICE_SUPPORT_KNOX:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfputworkTabSupportLauncherUids(Ljava/util/ArrayList;)V
    .registers 1

    sput-object p0, Lcom/android/server/pm/PersonaManagerService;->workTabSupportLauncherUids:Ljava/util/ArrayList;

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 7

    const-string/jumbo v0, "ro.build.type"

    .line 165
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->USER_INFO_DIR:Ljava/lang/String;

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.knox.securefolder"

    const-string v2, "com.samsung.android.knox.containeragent"

    const-string v3, "com.samsung.android.knox.containercore"

    const-string v4, "com.sec.knox.bluetooth"

    const-string v5, "com.samsung.knox.appsupdateagent"

    const-string v6, "com.android.bbc.fileprovider"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->containerCriticalApps:Ljava/util/List;

    const/4 v0, 0x0

    .line 323
    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 338
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->isKnoxSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/PersonaManagerService;->DEVICE_SUPPORT_KNOX:Z

    .line 4599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->workTabSupportLauncherUids:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;)V
    .registers 10

    .line 365
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    .line 366
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 365
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PersonaManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V
    .registers 22

    .line 374
    new-instance v15, Lcom/android/server/pm/PersonaManagerService$Injector;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v14}, Lcom/android/server/pm/PersonaManagerService$Injector;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;Lcom/android/server/knox/ContainerDependencyWrapper;Lcom/samsung/android/knox/PersonaManagerInternal;Landroid/app/admin/DevicePolicyManager;Ljava/util/ArrayList;Landroid/app/ActivityManager;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Lcom/android/server/knox/PersonaPolicyManagerService;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/pm/PersonaManagerService;-><init>(Lcom/android/server/pm/PersonaManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService$Injector;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 379
    invoke-direct {p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;-><init>()V

    const-string v0, "com.samsung.android.knox.intent.action.SEPARATION_ALLOWEDLIST_RETURN"

    .line 209
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->INTENT_APP_SEPARATION_ALLOWEDLIST_RETURN:Ljava/lang/String;

    const-string v0, "com.samsung.android.knox.intent.action.SEPARATION_ACTION_RETURN"

    .line 210
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->INTENT_APP_SEPARATION_ACTION_RETURN:Ljava/lang/String;

    const-string v0, "SeparationWhiteListReturn"

    .line 211
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->APP_SEPARATION_WL_RETURN_EXTRA:Ljava/lang/String;

    const-string/jumbo v0, "type"

    .line 212
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->APP_SEPARATION_ACTION_TYPE:Ljava/lang/String;

    const-string v0, "deactivate"

    .line 213
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->APP_SEPARATION_ACTION_TYPE_DEACTIVATE:Ljava/lang/String;

    const-string v0, "activate"

    .line 214
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->APP_SEPARATION_ACTION_TYPE_ACTIVATE:Ljava/lang/String;

    const-string/jumbo v0, "status"

    .line 215
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->APP_SEPARATION_ACTION_STATUS:Ljava/lang/String;

    const-string v0, "com.samsung.android.knox.permission.KNOX_APP_SEPARATION"

    .line 216
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->MDM_ENTERPRISE_APP_SEPARATION_PERMISSION:Ljava/lang/String;

    const-string v0, "Separated Apps"

    .line 217
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->APP_SEPARATION_DEFAULT_NAME:Ljava/lang/String;

    .line 220
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;

    .line 221
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLock:Ljava/lang/Object;

    .line 222
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLauncherLock:Ljava/lang/Object;

    .line 224
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 235
    iput v1, p0, Lcom/android/server/pm/PersonaManagerService;->UNKNOWN_USER_ID:I

    .line 243
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    .line 256
    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    .line 285
    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->handlerThread:Landroid/os/HandlerThread;

    const/4 v3, 0x0

    .line 287
    iput v3, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedLauncherId:I

    .line 288
    iput v3, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    .line 290
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceEmergencyModeLock:Ljava/lang/Object;

    .line 292
    iput-boolean v3, p0, Lcom/android/server/pm/PersonaManagerService;->mIsFOTAUpgrade:Z

    .line 293
    iput-boolean v3, p0, Lcom/android/server/pm/PersonaManagerService;->isFotaUpgradeVersionChanged:Z

    const/4 v4, 0x1

    .line 299
    iput-boolean v4, p0, Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z

    .line 301
    iput v1, p0, Lcom/android/server/pm/PersonaManagerService;->mSecureFolderId:I

    .line 320
    iput-boolean v3, p0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    .line 331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mCorePackageUid:Ljava/util/List;

    .line 333
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mUserHasBeenShutdownBefore:Landroid/util/SparseBooleanArray;

    .line 667
    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 1056
    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    .line 1462
    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->requiredApps:Ljava/util/List;

    .line 2232
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 2234
    new-instance v1, Lcom/android/server/pm/PersonaManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PersonaManagerService$1;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    .line 2257
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->containerNames:Ljava/util/HashSet;

    .line 2258
    new-instance v1, Lcom/android/server/pm/PersonaManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PersonaManagerService$2;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 2372
    new-instance v1, Lcom/android/server/pm/PersonaManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PersonaManagerService$3;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mSetupWizardCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 2380
    new-instance v1, Lcom/android/server/pm/PersonaManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PersonaManagerService$4;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFingerPrintReceiver:Landroid/content/BroadcastReceiver;

    .line 2390
    new-instance v1, Lcom/android/server/pm/PersonaManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PersonaManagerService$5;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 2514
    new-instance v1, Lcom/android/server/pm/PersonaManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PersonaManagerService$6;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mAnalyticsReceiver:Landroid/content/BroadcastReceiver;

    .line 2895
    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mTrustManager:Landroid/app/trust/ITrustManager;

    .line 3354
    new-instance v1, Lcom/android/server/pm/PersonaManagerService$7;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v3}, Lcom/android/server/pm/PersonaManagerService$7;-><init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->analyticsObserver:Landroid/database/ContentObserver;

    const-string v1, "USER-REMOVED"

    .line 4468
    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->KEY_USER_REMOVED:Ljava/lang/String;

    .line 380
    invoke-virtual {p1}, Lcom/android/server/pm/PersonaManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 382
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 383
    invoke-virtual {p1}, Lcom/android/server/pm/PersonaManagerService$Injector;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 384
    sput-object p0, Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;

    .line 386
    new-instance v4, Lcom/android/server/knox/KnoxAnalyticsContainer;

    new-instance v5, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    invoke-direct {v5, v1, v3, p0}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PersonaManagerService;)V

    invoke-direct {v4, v1, v5}, Lcom/android/server/knox/KnoxAnalyticsContainer;-><init>(Landroid/content/Context;Lcom/android/server/knox/IKnoxAnalyticsContainer;)V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 387
    invoke-virtual {p1}, Lcom/android/server/pm/PersonaManagerService$Injector;->getContainerDependencyWrapper()Lcom/android/server/knox/ContainerDependencyWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->containerDependencyWrapper:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 389
    monitor-enter v0

    .line 390
    :try_start_ec
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/server/pm/PersonaManagerService$Injector;->getDataDir()Ljava/io/File;

    move-result-object v3

    sget-object v4, Lcom/android/server/pm/PersonaManagerService;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    .line 391
    invoke-virtual {p1}, Lcom/android/server/pm/PersonaManagerService$Injector;->getBaseUserPath()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mBaseUserPath:Ljava/io/File;

    .line 393
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "userwithpersonalist.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    .line 394
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_116

    const-string v3, "PersonaManagerService"

    const-string v4, "No need to create user persona list file from Knox 3.0"

    .line 395
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_116
    const-string v3, "PersonaManagerService"

    const-string v4, "<init> adding PersonaPolicyManagerService"

    .line 398
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {p1}, Lcom/android/server/pm/PersonaManagerService$Injector;->getPersonaPolicyManagerService()Lcom/android/server/knox/PersonaPolicyManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    .line 401
    new-instance p1, Landroid/os/HandlerThread;

    const-string v3, "PersonaManagerService"

    const/16 v4, 0xa

    invoke-direct {p1, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->handlerThread:Landroid/os/HandlerThread;

    .line 403
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 404
    new-instance p1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;-><init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 405
    monitor-exit v0
    :try_end_13f
    .catchall {:try_start_ec .. :try_end_13f} :catchall_199

    .line 408
    new-instance p1, Ljava/io/File;

    const-string/jumbo v0, "persona_cache.xml"

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheFile:Ljava/io/File;

    .line 409
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_169

    .line 411
    :try_start_14f
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_15d

    const-string p1, "PersonaManagerService"

    const-string v0, "PMS cache file created "

    .line 412
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_169

    :cond_15d
    const-string p1, "PersonaManagerService"

    const-string v0, "Error Creating PMS cache file!!!! "

    .line 414
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_164} :catch_165

    goto :goto_169

    :catch_165
    move-exception p1

    .line 418
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 422
    :cond_169
    :goto_169
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    monitor-enter p1

    .line 423
    :try_start_16c
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->readPersonaCacheLocked()V

    .line 424
    monitor-exit p1
    :try_end_170
    .catchall {:try_start_16c .. :try_end_170} :catchall_196

    .line 427
    new-instance p1, Lcom/android/server/pm/PersonaManagerService$LocalService;

    invoke-direct {p1, p0, v2}, Lcom/android/server/pm/PersonaManagerService$LocalService;-><init>(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/PersonaManagerService$LocalService-IA;)V

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    .line 428
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->isTestingMode()Z

    move-result v0

    if-nez v0, :cond_185

    .line 429
    const-class p0, Lcom/samsung/android/knox/PersonaManagerInternal;

    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_195

    .line 431
    :cond_185
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p1}, Lcom/android/server/pm/PersonaManagerService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 432
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p1}, Lcom/android/server/pm/PersonaManagerService$Injector;->getCorePackageUid()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mCorePackageUid:Ljava/util/List;

    :goto_195
    return-void

    :catchall_196
    move-exception p0

    .line 424
    :try_start_197
    monitor-exit p1
    :try_end_198
    .catchall {:try_start_197 .. :try_end_198} :catchall_196

    throw p0

    :catchall_199
    move-exception p0

    .line 405
    :try_start_19a
    monitor-exit v0
    :try_end_19b
    .catchall {:try_start_19a .. :try_end_19b} :catchall_199

    throw p0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 10

    .line 637
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 638
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_3f

    :cond_9
    const/4 v0, 0x0

    .line 646
    :try_start_a
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_32

    .line 647
    :try_start_f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 648
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_2e

    .line 649
    :try_start_18
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    const-wide/16 v4, 0x0

    .line 650
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_2c

    .line 654
    :try_start_25
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 659
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_43

    :catchall_2c
    move-exception p1

    goto :goto_30

    :catchall_2e
    move-exception p1

    move-object p0, v0

    :goto_30
    move-object v0, v1

    goto :goto_34

    :catchall_32
    move-exception p1

    move-object p0, v0

    :goto_34
    if-eqz v0, :cond_39

    .line 654
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_39
    if-eqz p0, :cond_3e

    .line 659
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 661
    :cond_3e
    throw p1
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3f} :catch_3f

    :catch_3f
    move-exception p0

    .line 663
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_43
    return-void
.end method

.method public static deactivateSecureFolderAdmin(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 2

    .line 1527
    invoke-static {p0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->deactivateSecureFolderAdmin(Landroid/content/Context;Landroid/content/ComponentName;)V

    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    .line 1889
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_b

    .line 1890
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 1893
    :cond_b
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1894
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_22

    :cond_1e
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1896
    :goto_22
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_35

    .line 1897
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_39

    :cond_35
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_39
    const/4 v2, 0x1

    if-gtz v0, :cond_3d

    move v0, v2

    :cond_3d
    if-gtz v1, :cond_40

    move v1, v2

    .line 1900
    :cond_40
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1899
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1902
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1903
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1904
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static getContainerCriticalApps()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1752
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->containerCriticalApps:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/pm/PersonaManagerService;
    .registers 2

    .line 353
    const-class v0, Lcom/android/server/pm/PersonaManagerService;

    monitor-enter v0

    .line 354
    :try_start_3
    sget-object v1, Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 355
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static isKnoxSupported()Z
    .registers 2

    .line 341
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string/jumbo v1, "version"

    .line 342
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_22

    .line 343
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22

    const-string/jumbo v1, "v00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method public static isTablet()Z
    .registers 2

    const-string/jumbo v0, "ro.build.characteristics"

    .line 2458
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string/jumbo v1, "tablet"

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public static synthetic lambda$getWorkName$1(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const v0, 0x1040f85

    .line 1837
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getWorkProfileName$0(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const v0, 0x1040f8a

    .line 1831
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static resetSecureFolderAdmin(Landroid/content/Context;)V
    .registers 4

    .line 1531
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.knox.securefolder"

    const-string v2, "com.samsung.knox.securefolder.containeragent.detector.KnoxDeviceAdminReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    invoke-static {p0, v0}, Lcom/android/server/knox/ContainerDependencyWrapper;->isSecureFolderAdminActive(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "PersonaManagerService:FOTA"

    const-string/jumbo v2, "resetSecureFolderAdmin called"

    .line 1534
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    invoke-static {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->deactivateSecureFolderAdmin(Landroid/content/Context;Landroid/content/ComponentName;)V

    :cond_1a
    return-void
.end method


# virtual methods
.method public CMFALock(I)V
    .registers 4

    const-string v0, "CMFALock"

    .line 3481
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3482
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PersonaManagerService$LocalService;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 3483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMFALock userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3485
    :try_start_23
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getTrustManager()Landroid/app/trust/ITrustManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/app/trust/ITrustManager;->setDeviceLockedForUser(IZ)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception v0

    .line 3487
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3490
    :goto_30
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->containerDependencyWrapper:Lcom/android/server/knox/ContainerDependencyWrapper;

    if-eqz p0, :cond_37

    .line 3491
    invoke-virtual {p0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->callOnCMFALocked(I)V

    :cond_37
    return-void
.end method

.method public CMFAUnLock(I)V
    .registers 2

    const-string p1, "CMFAUnLock"

    .line 3498
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string p0, "PersonaManagerService"

    const-string p1, "CMFAUnLock not support yet."

    .line 3517
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addAppPackageNameToAllowList(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1429
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    move-result v0

    if-eqz v0, :cond_18

    const-string p0, "PersonaManagerService"

    const-string p1, "addAppPackageNameToAllowList failed."

    .line 1430
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_30

    return-void

    .line 1437
    :cond_18
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 1439
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/server/knox/ContainerDependencyWrapper;->addAppPackageNameToAllowList(Landroid/content/Context;ILjava/util/List;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_29

    .line 1441
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return-void

    :catchall_29
    move-exception p1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 1442
    throw p1

    :catch_30
    move-exception p0

    .line 1434
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public appliedPasswordPolicy(I)Z
    .registers 7

    .line 1999
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 2001
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_31
    .catchall {:try_start_7 .. :try_end_f} :catchall_2f

    .line 2006
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v4, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 2009
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1b

    return v2

    .line 2012
    :cond_1b
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->needSetupCredential()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-static {p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->isPwdChangeRequested(I)Z

    move-result p1

    if-nez p1, :cond_2d

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->isOneLockOngoing()Z

    move-result p0

    if-eqz p0, :cond_2e

    :cond_2d
    const/4 v2, 0x1

    :cond_2e
    return v2

    :catchall_2f
    move-exception p1

    goto :goto_3b

    :catch_31
    move-exception p1

    .line 2003
    :try_start_32
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_2f

    .line 2006
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return v2

    :goto_3b
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 2007
    throw p1
.end method

.method public final applyDefaultPolicyForAppSeparation(I)V
    .registers 2

    .line 3532
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->applyDefaultPolicyForAppSeparation(Landroid/content/Context;I)V

    return-void
.end method

.method public applyDefaultPolicyForNewPO(Landroid/content/pm/UserInfo;)Z
    .registers 2

    .line 4519
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->applyDefaultPolicyForNewPO(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result p0

    return p0
.end method

.method public final atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V
    .registers 5

    .line 1943
    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 1944
    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1945
    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".crt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1944
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1947
    :cond_2f
    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public bindCoreServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z
    .registers 22

    move-object v1, p0

    move-object/from16 v0, p4

    const/4 v11, 0x0

    .line 2089
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    move-result v2

    if-eqz v2, :cond_1c

    const-string v0, "PersonaManagerService"

    const-string v1, "bindCoreServiceAsUser() failed to bind."

    .line 2090
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1b} :catch_69

    return v11

    .line 2097
    :cond_1c
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxCorePackageName()Ljava/lang/String;

    move-result-object v2

    .line 2100
    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v12

    move/from16 v10, p7

    .line 2104
    :try_start_28
    invoke-virtual {p0, v0, v2, v10}, Lcom/android/server/pm/PersonaManagerService;->createCrossUserServiceIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2c} :catch_63
    .catchall {:try_start_28 .. :try_end_2c} :catchall_5c

    if-nez v2, :cond_34

    .line 2119
    :cond_2e
    :goto_2e
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0, v12, v13}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return v11

    .line 2111
    :cond_34
    :try_start_34
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2113
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2114
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v10, p7

    .line 2111
    invoke-interface/range {v2 .. v10}, Landroid/app/IActivityManager;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    move-result v0
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_58} :catch_63
    .catchall {:try_start_34 .. :try_end_58} :catchall_5c

    if-eqz v0, :cond_2e

    const/4 v11, 0x1

    goto :goto_2e

    :catchall_5c
    move-exception v0

    .line 2119
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v1, v12, v13}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 2120
    throw v0

    .line 2119
    :catch_63
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0, v12, v13}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return v11

    :catch_69
    move-exception v0

    .line 2094
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v11
.end method

.method public broadcastIntentThroughPersona(Landroid/content/Intent;I)Z
    .registers 8

    const-string v0, "PersonaManagerService"

    const-string v1, "broadcastIntentThroughPersona"

    .line 1976
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1978
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v1

    .line 1980
    :try_start_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastIntentThroughPersona Intent ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_37

    if-nez p1, :cond_28

    goto :goto_37

    .line 1985
    :cond_28
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_5c

    .line 1987
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    .line 1982
    :cond_37
    :goto_37
    :try_start_37
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastIntentThroughPersona is canceled by mContext = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " or intent = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_37 .. :try_end_55} :catchall_5c

    const/4 p1, 0x0

    .line 1987
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return p1

    :catchall_5c
    move-exception p1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 1988
    throw p1
.end method

.method public final checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 3

    .line 349
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v0, "PersonaManagerService"

    invoke-static {p0, v0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final varargs checkNullParameter([Ljava/lang/Object;)Z
    .registers 7

    .line 4168
    array-length p0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    :goto_5
    if-ge v2, p0, :cond_2c

    aget-object v4, p1, v2

    if-nez v4, :cond_27

    .line 4170
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Parameter("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is null."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_27
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_2c
    return v0
.end method

.method public clearAttributes(II)Z
    .registers 4

    const-string v0, "clearAttributes"

    .line 2590
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2591
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_28

    .line 2593
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "user not found "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2597
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/server/knox/ContainerDependencyWrapper;->clearAttributes(Lcom/android/server/pm/UserManagerInternal;II)Z

    move-result p0

    return p0
.end method

.method public final clearHomeCrossProfileFilter(Ljava/lang/String;)Z
    .registers 8

    .line 2967
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 2968
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 2970
    :try_start_b
    invoke-interface {v2, v3, p1}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_17
    .catchall {:try_start_b .. :try_end_e} :catchall_15

    .line 2975
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_15
    move-exception p1

    goto :goto_34

    :catch_17
    move-exception p1

    :try_start_18
    const-string v2, "PersonaManagerService:FOTA"

    .line 2972
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearCrossProfileIntentFilters Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_15

    .line 2975
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return v3

    :goto_34
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 2976
    throw p1
.end method

.method public clearStorageForUser(I)V
    .registers 4

    const-string p0, "PersonaManagerService"

    .line 4376
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearStorageForUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4377
    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    .line 4378
    invoke-static {v0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->clearStorageForUser(Lcom/android/internal/widget/LockSettingsInternal;I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_21} :catch_22

    goto :goto_2b

    :catch_22
    move-exception p1

    const-string v0, "clearStorageForUser err."

    .line 4381
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4382
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2b
    return-void
.end method

.method public final createCrossUserServiceIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2056
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2058
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-object v1, p1

    move v5, p3

    .line 2056
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_5f

    .line 2061
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_1d

    goto :goto_5f

    .line 2066
    :cond_1d
    iget-object p3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_48

    .line 2070
    iget-object p2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean p3, p2, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz p3, :cond_3e

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string p3, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_36

    goto :goto_3e

    .line 2071
    :cond_36
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Service must be protected by BIND_DEVICE_ADMIN permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2077
    :cond_3e
    :goto_3e
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p1

    .line 2067
    :cond_48
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Only allow to bind service in "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2062
    :cond_5f
    :goto_5f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Fail to look up the service: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " or user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not running"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public deactivateKnoxCore(I)Z
    .registers 2

    .line 4523
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->deactivateKnoxCore(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public final deletePackageAsUser(ILjava/lang/String;I)Z
    .registers 12

    const-string v0, "PersonaManagerService"

    .line 3556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePackageAsUser request for userid -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and pkg-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3557
    new-instance v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObserver;-><init>(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/PersonaManagerService$PackageDeleteObserver-IA;)V

    :try_start_24
    const-string/jumbo p0, "package"

    .line 3560
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v4, -0x1

    move-object v3, p2

    move-object v5, v0

    move v6, p1

    move v7, p3

    .line 3561
    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    .line 3562
    monitor-enter v0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_38} :catch_5d

    .line 3563
    :catch_38
    :goto_38
    :try_start_38
    iget-boolean p0, v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObserver;->finished:Z
    :try_end_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_5a

    if-nez p0, :cond_58

    :try_start_3c
    const-string p0, "PersonaManagerService"

    .line 3565
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Waiting in while loop -"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObserver;->finished:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3566
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_57} :catch_38
    .catchall {:try_start_3c .. :try_end_57} :catchall_5a

    goto :goto_38

    .line 3570
    :cond_58
    :try_start_58
    monitor-exit v0

    goto :goto_74

    :catchall_5a
    move-exception p0

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw p0
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5d} :catch_5d

    :catch_5d
    move-exception p0

    const-string p1, "PersonaManagerService"

    .line 3572
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "deletePackage exception -"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    :goto_74
    iget-boolean p0, v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObserver;->result:Z

    return p0
.end method

.method public final deletePackageForAppSeparation(ILandroid/content/pm/PackageInfo;)Z
    .registers 4

    .line 4298
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/high16 v0, 0x10000000

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/PersonaManagerService;->deletePackageAsUser(ILjava/lang/String;I)Z

    move-result p0

    .line 4302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "processAppSeparationInstallationInternal deletePackageAsUser result - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PersonaManagerService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final deletePkg(ILjava/lang/String;)Z
    .registers 6

    .line 885
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_27

    const-string p0, "PersonaManagerService"

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore deletePkg request for personaId -"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and pkg-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_27
    const-string v0, "PersonaManagerService"

    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePkg request for personaId -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and pkg-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    new-instance v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    .line 893
    :try_start_4a
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x4

    invoke-static {p0, p2, v0, p1, v1}, Lcom/android/server/knox/ContainerDependencyWrapper;->deletePackageAsUserAndPersona(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    .line 894
    monitor-enter v0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_51} :catch_8e

    .line 895
    :goto_51
    :try_start_51
    iget-boolean p0, v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;->finished:Z
    :try_end_53
    .catchall {:try_start_51 .. :try_end_53} :catchall_8b

    if-nez p0, :cond_89

    :try_start_55
    const-string p0, "PersonaManagerService"

    .line 897
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Waiting in while loop"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;->finished:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_70
    .catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_70} :catch_71
    .catchall {:try_start_55 .. :try_end_70} :catchall_8b

    goto :goto_51

    :catch_71
    move-exception p0

    :try_start_72
    const-string p1, "PersonaManagerService"

    .line 900
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deletePkg: InterruptedException = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 903
    :cond_89
    monitor-exit v0

    goto :goto_a5

    :catchall_8b
    move-exception p0

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_72 .. :try_end_8d} :catchall_8b

    :try_start_8d
    throw p0
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_8e} :catch_8e

    :catch_8e
    move-exception p0

    const-string p1, "PersonaManagerService"

    .line 905
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deletePkg exception -"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :goto_a5
    iget-boolean p0, v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;->result:Z

    return p0
.end method

.method public disableAppInOwner(Ljava/lang/String;Z)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableAppInOwner is called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", disable - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3724
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 3725
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "disableAppInOwner()"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", do not disable keyboard app- "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3e
    const/16 v0, 0xf

    const/4 v2, 0x1

    if-eqz p2, :cond_45

    const/4 p2, 0x2

    goto :goto_48

    :cond_45
    const/16 v0, 0x20f

    move p2, v2

    .line 3745
    :goto_48
    :try_start_48
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    int-to-long v4, v0

    const/4 v0, 0x0

    invoke-interface {v3, p1, v4, v5, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 3747
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableAppInOwner Logic Started..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_69

    return-void

    .line 3752
    :cond_69
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 3753
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3755
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_9c

    .line 3756
    array-length v7, v6

    move v8, v0

    :goto_79
    if-ge v8, v7, :cond_9c

    aget-object v9, v6, v8

    .line 3757
    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_99

    .line 3758
    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3759
    new-instance v10, Landroid/content/ComponentName;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, p1, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3760
    new-instance v9, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    invoke-direct {v9, v10, p2, v2}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;-><init>(Landroid/content/ComponentName;II)V

    .line 3761
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_99
    add-int/lit8 v8, v8, 0x1

    goto :goto_79

    .line 3766
    :cond_9c
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v6, :cond_c5

    .line 3767
    array-length v7, v6

    move v8, v0

    :goto_a2
    if-ge v8, v7, :cond_c5

    aget-object v9, v6, v8

    .line 3768
    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c2

    .line 3769
    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3770
    new-instance v10, Landroid/content/ComponentName;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v10, p1, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3771
    new-instance v9, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    invoke-direct {v9, v10, p2, v2}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;-><init>(Landroid/content/ComponentName;II)V

    .line 3772
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c2
    add-int/lit8 v8, v8, 0x1

    goto :goto_a2

    .line 3777
    :cond_c5
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v6, :cond_ee

    .line 3778
    array-length v7, v6

    move v8, v0

    :goto_cb
    if-ge v8, v7, :cond_ee

    aget-object v9, v6, v8

    .line 3779
    iget-object v10, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_eb

    .line 3780
    iget-object v10, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3781
    new-instance v10, Landroid/content/ComponentName;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v10, p1, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3782
    new-instance v9, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    invoke-direct {v9, v10, p2, v2}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;-><init>(Landroid/content/ComponentName;II)V

    .line 3783
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_eb
    add-int/lit8 v8, v8, 0x1

    goto :goto_cb

    .line 3788
    :cond_ee
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_117

    .line 3789
    array-length v6, v3

    move v7, v0

    :goto_f4
    if-ge v7, v6, :cond_117

    aget-object v8, v3, v7

    .line 3790
    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_114

    .line 3791
    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3792
    new-instance v9, Landroid/content/ComponentName;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, p1, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3793
    new-instance v8, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    invoke-direct {v8, v9, p2, v2}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;-><init>(Landroid/content/ComponentName;II)V

    .line 3794
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_114
    add-int/lit8 v7, v7, 0x1

    goto :goto_f4

    .line 3799
    :cond_117
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-interface {p0, v5, v0}, Landroid/content/pm/IPackageManager;->setComponentEnabledSettings(Ljava/util/List;I)V

    const-string p0, "disableAppInOwner Logic Ended..."

    .line 3801
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_123} :catch_124

    goto :goto_139

    :catch_124
    move-exception p0

    .line 3803
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "disableAppInOwner exception"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_139
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 1387
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string p3, "PersonaManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 1389
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getLastUserRemovalLog()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Last removed user:"

    .line 1390
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1391
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, ""

    .line 1392
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->printAllApprovedInstallers(Ljava/io/PrintWriter;)V

    .line 1395
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object p1

    .line 1398
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result p0

    const-string p3, "App Separation:"

    .line 1399
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "    STATE : "

    .line 1400
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p0, :cond_44

    if-nez p1, :cond_3e

    const-string p0, "NONE"

    .line 1403
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_3e
    const-string p0, "ACTIVATED"

    .line 1406
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_49

    :cond_44
    const-string p0, "ENABLED"

    .line 1409
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_49
    if-eqz p1, :cond_af

    .line 1412
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "APP_SEPARATION_OUTSIDE"

    const/4 v0, 0x0

    .line 1413
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    const-string v1, "APP_SEPARATION_APP_LIST"

    .line 1414
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_8f

    .line 1416
    :goto_5f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8f

    const-string v1, "        "

    .line 1417
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 1421
    :cond_8f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    Outside Option : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    AllowList Packages: "

    .line 1422
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1423
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_af
    return-void
.end method

.method public final enableMyFilesLauncherActivity(I)V
    .registers 7

    const-string v0, "PersonaManagerService"

    const-string v1, "enableMyFilesLauncherActivity"

    .line 4564
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4570
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "visible_app_icon"

    const/4 v2, 0x1

    .line 4571
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4573
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4575
    :try_start_17
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "myfiles"

    const-string v3, "SET_APP_ICON_STATUS"

    const-string v4, ""

    invoke-virtual {p0, p1, v3, v4, v0}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_30} :catch_33
    .catchall {:try_start_17 .. :try_end_30} :catchall_31

    goto :goto_37

    :catchall_31
    move-exception p0

    goto :goto_3b

    :catch_33
    move-exception p0

    .line 4577
    :try_start_34
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_31

    .line 4579
    :goto_37
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4580
    throw p0
.end method

.method public enforceAppSeparationAllowListUpdate()V
    .registers 3

    .line 3686
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v1, 0x47

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3687
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p0, "PersonaManagerService"

    const-string v0, "enforceAppSeparationAllowListUpdate"

    .line 3688
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final enforceAppSeparationAllowListUpdateInternal()V
    .registers 36

    move-object/from16 v1, p0

    const-string v0, "enforceAppSeparationAllowListUpdateInternal Is in allowlist ? - "

    .line 4006
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v2

    .line 4007
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v3

    .line 4008
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v4

    if-eqz v2, :cond_14

    const/4 v7, 0x1

    goto :goto_15

    :cond_14
    const/4 v7, 0x0

    :goto_15
    const-string v8, "enforceAppSeparationWhiteListUpdateInternal sending removedinfo intent. count = "

    const-string v9, "com.samsung.android.appseparation.receiver.ProfileStateChangedReceiver"

    const-string v10, "com.samsung.android.appseparation"

    const-string v11, "app_uninstalled"

    const-string v12, "enforceAppSeparationAllowListUpdateInternal after update packageName - "

    const-string v13, "com.samsung.android.knox.action.APP_SEPARATION_ACTION"

    const-string v14, "enforceAppSeparationAllowListUpdateInternal before update packageName - "

    const-string v15, "SeparationWhiteListReturn"

    const-string v5, "com.samsung.android.knox.intent.action.SEPARATION_ALLOWEDLIST_RETURN"

    const-string v6, "enforceAppSeparationAllowListUpdateInternal used by createSeparationConfig"

    move/from16 v17, v7

    const-string v7, "enforceAppSeparationAllowListUpdateInternal isOutside - "

    move/from16 v18, v4

    const-string v4, "APP_SEPARATION_OUTSIDE"

    move-object/from16 v19, v8

    const-string v8, "APP_SEPARATION_APP_LIST"

    move-object/from16 v20, v9

    const-string v9, "PersonaManagerService"

    if-nez v3, :cond_133

    :try_start_3b
    const-string v0, "enforceAppSeparationAllowListUpdateInternal no app separation data found in db"

    .line 4013
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_40} :catch_12b
    .catchall {:try_start_3b .. :try_end_40} :catchall_11d

    if-eqz v2, :cond_84

    move-object/from16 v21, v10

    const/4 v10, 0x0

    .line 4085
    invoke-virtual {v2, v4, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4086
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4087
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_89

    .line 4089
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_65
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4090
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    :cond_84
    move-object/from16 v21, v10

    .line 4094
    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4096
    :cond_89
    sput-object v3, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    if-eqz v3, :cond_cf

    const/4 v2, 0x0

    .line 4098
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4099
    sget-object v2, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_cf

    .line 4102
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    .line 4108
    :cond_cf
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4109
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 4110
    invoke-virtual {v0, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4111
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    .line 4113
    :try_start_de
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4114
    invoke-virtual {v0, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 4115
    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v10, v20

    move-object/from16 v2, v21

    .line 4116
    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    iget-object v2, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_10d} :catch_10e

    goto :goto_112

    :catch_10e
    move-exception v0

    .line 4120
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4123
    :goto_112
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    if-nez v18, :cond_11c

    .line 4126
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationCreation()V

    :cond_11c
    return-void

    :catchall_11d
    move-exception v0

    move-object/from16 v23, v10

    move-object/from16 v16, v0

    move-object v10, v5

    move-object v5, v12

    move-object v12, v15

    move-object/from16 v33, v23

    const/4 v0, 0x1

    move-object v15, v11

    goto/16 :goto_4ed

    :catch_12b
    move-exception v0

    move-object/from16 v23, v10

    move-object v10, v5

    move-object v5, v12

    move-object v12, v15

    goto/16 :goto_4f8

    :cond_133
    move-object/from16 v23, v10

    move-object/from16 v22, v19

    move-object/from16 v19, v11

    const/4 v10, 0x0

    .line 4017
    :try_start_13a
    invoke-virtual {v3, v4, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 4018
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 4019
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_147} :catch_4f0
    .catchall {:try_start_13a .. :try_end_147} :catchall_4e0

    if-eqz v2, :cond_156

    .line 4021
    :try_start_149
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v21
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_14d} :catch_4f0
    .catchall {:try_start_149 .. :try_end_14d} :catchall_14e

    goto :goto_156

    :catchall_14e
    move-exception v0

    move-object/from16 v16, v0

    move-object v10, v5

    move-object v5, v12

    move-object v12, v15

    goto/16 :goto_4e6

    :cond_156
    :goto_156
    move-object/from16 v24, v13

    .line 4023
    :try_start_158
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackages()Ljava/util/Set;

    move-result-object v13

    iput-object v13, v1, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_15e} :catch_4d3
    .catchall {:try_start_158 .. :try_end_15e} :catchall_4cc

    if-nez v10, :cond_176

    .line 4025
    :try_start_160
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_165} :catch_4d3
    .catchall {:try_start_160 .. :try_end_165} :catchall_166

    goto :goto_176

    :catchall_166
    move-exception v0

    move-object/from16 v16, v0

    move-object v10, v5

    move-object v5, v12

    move-object v12, v15

    move-object/from16 v15, v19

    move-object/from16 v19, v22

    move-object/from16 v33, v23

    move-object/from16 v13, v24

    goto/16 :goto_4ec

    .line 4027
    :cond_176
    :goto_176
    :try_start_176
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_17b
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_17b} :catch_4d3
    .catchall {:try_start_176 .. :try_end_17b} :catchall_4cc

    if-nez v21, :cond_182

    .line 4029
    :try_start_17d
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_182} :catch_4d3
    .catchall {:try_start_17d .. :try_end_182} :catchall_166

    :cond_182
    move-object/from16 v10, v21

    move-object/from16 v21, v15

    .line 4031
    :try_start_186
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4032
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_190} :catch_4c4
    .catchall {:try_start_186 .. :try_end_190} :catchall_4be

    move-object/from16 v25, v5

    :try_start_192
    const-string v5, "enforceAppSeparationAllowListUpdateInternal is called for isOutside - "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4033
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enforceAppSeparationAllowListUpdateInternal wlAppsSet size - "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4034
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enforceAppSeparationAllowListUpdateInternal prevWlAppsSet size - "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/util/HashSet;->size()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4036
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v5

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    .line 4037
    invoke-virtual {v1, v2, v13, v15}, Lcom/android/server/pm/PersonaManagerService;->getUpdatedPackageInfo(Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/List;

    move-result-object v16

    .line 4038
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v11

    const-string v11, "enforceAppSeparationAllowListUpdateInternal packageInfoList size -"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4039
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 4040
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10
    :try_end_201
    .catch Ljava/lang/Exception; {:try_start_192 .. :try_end_201} :catch_4af
    .catchall {:try_start_192 .. :try_end_201} :catchall_4a6

    const/4 v11, 0x1

    const/16 v28, 0x0

    :goto_204
    :try_start_204
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16
    :try_end_208
    .catch Ljava/lang/Exception; {:try_start_204 .. :try_end_208} :catch_490
    .catchall {:try_start_204 .. :try_end_208} :catchall_47a

    if-eqz v16, :cond_363

    :try_start_20a
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v29, v10

    move-object/from16 v10, v16

    check-cast v10, Landroid/content/pm/PackageInfo;

    .line 4041
    invoke-virtual {v1, v10}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    move-result v16
    :try_end_218
    .catch Ljava/lang/Exception; {:try_start_20a .. :try_end_218} :catch_34f
    .catchall {:try_start_20a .. :try_end_218} :catchall_33b

    if-nez v16, :cond_327

    move/from16 v16, v11

    .line 4042
    :try_start_21c
    iget-object v11, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v11}, Lcom/android/server/pm/PersonaManagerService;->isKeyboardApp(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_243

    .line 4043
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_229
    .catch Ljava/lang/Exception; {:try_start_21c .. :try_end_229} :catch_325
    .catchall {:try_start_21c .. :try_end_229} :catchall_323

    move-object/from16 v30, v12

    :try_start_22b
    const-string v12, "enforceAppSeparationAllowListUpdateInternal isKeyBoardApp - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v11, v16

    move-object/from16 v10, v29

    move-object/from16 v12, v30

    goto :goto_204

    :cond_243
    move-object/from16 v30, v12

    .line 4047
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "enforceAppSeparationAllowListUpdateInternal Non system app - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4048
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4049
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_294

    .line 4052
    iget-object v11, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_296

    :cond_294
    move/from16 v11, v27

    :goto_296
    if-eqz v11, :cond_2a0

    .line 4054
    iget-object v12, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2aa

    :cond_2a0
    if-nez v11, :cond_31e

    iget-object v11, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4055
    invoke-virtual {v13, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_31e

    :cond_2aa
    if-nez v18, :cond_2b0

    if-nez v18, :cond_31e

    if-eqz v17, :cond_31e

    .line 4057
    :cond_2b0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2b4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_31e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    move-object/from16 v31, v0

    .line 4058
    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    if-eqz v0, :cond_2d2

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v0

    if-eqz v0, :cond_2cd

    goto :goto_2d2

    :cond_2cd
    move-object/from16 v32, v5

    :cond_2cf
    move-object/from16 v26, v10

    goto :goto_317

    .line 4059
    :cond_2d2
    :goto_2d2
    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v32, v5

    iget-object v5, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v5}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2cf

    .line 4060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enforceAppSeparationAllowListUpdateInternal Installing package "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in user -"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4062
    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    iget-object v5, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v10

    const/high16 v10, 0x10000000

    invoke-virtual {v1, v0, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->deletePackageAsUser(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_30f

    const/16 v16, 0x0

    goto :goto_317

    .line 4066
    :cond_30f
    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v0

    if-eqz v0, :cond_317

    add-int/lit8 v28, v28, 0x1

    :cond_317
    :goto_317
    move-object/from16 v10, v26

    move-object/from16 v0, v31

    move-object/from16 v5, v32

    goto :goto_2b4

    :cond_31e
    move-object/from16 v31, v0

    move-object/from16 v32, v5

    goto :goto_32f

    :catchall_323
    move-exception v0

    goto :goto_33e

    :catch_325
    move-exception v0

    goto :goto_352

    :cond_327
    move-object/from16 v31, v0

    move-object/from16 v32, v5

    move/from16 v16, v11

    move-object/from16 v30, v12

    :goto_32f
    move/from16 v11, v16

    move-object/from16 v10, v29

    move-object/from16 v12, v30

    move-object/from16 v0, v31

    move-object/from16 v5, v32

    goto/16 :goto_204

    :catchall_33b
    move-exception v0

    move/from16 v16, v11

    :goto_33e
    move-object v5, v12

    move-object/from16 v15, v19

    move-object/from16 v12, v21

    move-object/from16 v19, v22

    move-object/from16 v33, v23

    move-object/from16 v13, v24

    move-object/from16 v10, v25

    move/from16 v11, v28

    goto/16 :goto_5fd

    :catch_34f
    move-exception v0

    move/from16 v16, v11

    :goto_352
    move-object v5, v12

    move-object/from16 v11, v19

    move-object/from16 v12, v21

    move-object/from16 v19, v22

    move-object/from16 v21, v23

    move-object/from16 v13, v24

    move-object/from16 v10, v25

    move/from16 v15, v28

    goto/16 :goto_4fd

    :cond_363
    move/from16 v16, v11

    move-object/from16 v30, v12

    if-nez v18, :cond_397

    if-nez v17, :cond_397

    .line 4076
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsCreated()V
    :try_end_370
    .catch Ljava/lang/Exception; {:try_start_22b .. :try_end_370} :catch_384
    .catchall {:try_start_22b .. :try_end_370} :catchall_371

    goto :goto_397

    :catchall_371
    move-exception v0

    move-object/from16 v15, v19

    move-object/from16 v12, v21

    move-object/from16 v19, v22

    move-object/from16 v33, v23

    move-object/from16 v13, v24

    move-object/from16 v10, v25

    move/from16 v11, v28

    move-object/from16 v5, v30

    goto/16 :goto_5fd

    :catch_384
    move-exception v0

    move-object/from16 v11, v19

    move-object/from16 v12, v21

    move-object/from16 v19, v22

    move-object/from16 v21, v23

    move-object/from16 v13, v24

    move-object/from16 v10, v25

    move/from16 v15, v28

    move-object/from16 v5, v30

    goto/16 :goto_4fd

    :cond_397
    :goto_397
    if-eqz v2, :cond_3d9

    const/4 v5, 0x0

    .line 4085
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4086
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4087
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3dc

    .line 4089
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3ba
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3dc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4090
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3ba

    .line 4094
    :cond_3d9
    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4096
    :cond_3dc
    sput-object v3, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    const/4 v2, 0x0

    .line 4098
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4099
    sget-object v2, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_422

    .line 4102
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_401
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_422

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v30

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_401

    .line 4108
    :cond_422
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object/from16 v10, v25

    .line 4109
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move/from16 v11, v16

    move-object/from16 v12, v21

    .line 4110
    invoke-virtual {v0, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4111
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    .line 4113
    :try_start_436
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object/from16 v13, v24

    .line 4114
    invoke-virtual {v0, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v2, v19

    move/from16 v15, v28

    .line 4115
    invoke-virtual {v0, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    .line 4116
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    iget-object v2, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_469
    .catch Ljava/lang/Exception; {:try_start_436 .. :try_end_469} :catch_46a

    goto :goto_46e

    :catch_46a
    move-exception v0

    .line 4120
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4123
    :goto_46e
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    if-nez v18, :cond_5f1

    .line 4126
    :goto_475
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationCreation()V

    goto/16 :goto_5f1

    :catchall_47a
    move-exception v0

    move/from16 v16, v11

    move-object v5, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v24

    move-object/from16 v10, v25

    move/from16 v17, v28

    move/from16 v11, v17

    move-object/from16 v15, v19

    move-object/from16 v19, v22

    move-object/from16 v33, v23

    goto/16 :goto_5fd

    :catch_490
    move-exception v0

    move/from16 v16, v11

    move-object v5, v12

    move-object/from16 v11, v19

    move-object/from16 v12, v21

    move-object/from16 v19, v22

    move-object/from16 v21, v23

    move-object/from16 v13, v24

    move-object/from16 v10, v25

    move/from16 v17, v28

    move/from16 v15, v17

    goto/16 :goto_4fd

    :catchall_4a6
    move-exception v0

    move-object v5, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v24

    move-object/from16 v10, v25

    goto :goto_4e4

    :catch_4af
    move-exception v0

    move-object v5, v12

    move-object/from16 v11, v19

    move-object/from16 v12, v21

    move-object/from16 v19, v22

    move-object/from16 v21, v23

    move-object/from16 v13, v24

    move-object/from16 v10, v25

    goto :goto_4fa

    :catchall_4be
    move-exception v0

    move-object v10, v5

    move-object v5, v12

    move-object/from16 v12, v21

    goto :goto_4d0

    :catch_4c4
    move-exception v0

    move-object v10, v5

    move-object v5, v12

    move-object/from16 v11, v19

    move-object/from16 v12, v21

    goto :goto_4d9

    :catchall_4cc
    move-exception v0

    move-object v10, v5

    move-object v5, v12

    move-object v12, v15

    :goto_4d0
    move-object/from16 v13, v24

    goto :goto_4e4

    :catch_4d3
    move-exception v0

    move-object v10, v5

    move-object v5, v12

    move-object v12, v15

    move-object/from16 v11, v19

    :goto_4d9
    move-object/from16 v19, v22

    move-object/from16 v21, v23

    move-object/from16 v13, v24

    goto :goto_4fa

    :catchall_4e0
    move-exception v0

    move-object v10, v5

    move-object v5, v12

    move-object v12, v15

    :goto_4e4
    move-object/from16 v16, v0

    :goto_4e6
    move-object/from16 v15, v19

    move-object/from16 v19, v22

    move-object/from16 v33, v23

    :goto_4ec
    const/4 v0, 0x1

    :goto_4ed
    const/4 v11, 0x0

    goto/16 :goto_603

    :catch_4f0
    move-exception v0

    move-object v10, v5

    move-object v5, v12

    move-object v12, v15

    move-object/from16 v11, v19

    move-object/from16 v19, v22

    :goto_4f8
    move-object/from16 v21, v23

    :goto_4fa
    const/4 v15, 0x0

    const/16 v16, 0x1

    :goto_4fd
    move-object/from16 v17, v11

    .line 4080
    :try_start_4ff
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_504
    .catchall {:try_start_4ff .. :try_end_504} :catchall_5f4

    move/from16 v22, v15

    :try_start_506
    const-string v15, "Exception in enforceAppSeparationAllowListUpdateInternal "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4081
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_518
    .catchall {:try_start_506 .. :try_end_518} :catchall_5f2

    if-eqz v2, :cond_55a

    const/4 v11, 0x0

    .line 4085
    invoke-virtual {v2, v4, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4086
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4087
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_55d

    .line 4089
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_53b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4090
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53b

    .line 4094
    :cond_55a
    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4096
    :cond_55d
    sput-object v3, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    if-eqz v3, :cond_5a3

    const/4 v2, 0x0

    .line 4098
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4099
    sget-object v2, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_5a3

    .line 4102
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_584
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_584

    .line 4108
    :cond_5a3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4109
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 4110
    invoke-virtual {v0, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4111
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    .line 4113
    :try_start_5b2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4114
    invoke-virtual {v0, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v15, v17

    move/from16 v11, v22

    .line 4115
    invoke-virtual {v0, v15, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    .line 4116
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    iget-object v2, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5e3
    .catch Ljava/lang/Exception; {:try_start_5b2 .. :try_end_5e3} :catch_5e4

    goto :goto_5e8

    :catch_5e4
    move-exception v0

    .line 4120
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4123
    :goto_5e8
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    if-nez v18, :cond_5f1

    goto/16 :goto_475

    :cond_5f1
    :goto_5f1
    return-void

    :catchall_5f2
    move-exception v0

    goto :goto_5f7

    :catchall_5f4
    move-exception v0

    move/from16 v22, v15

    :goto_5f7
    move-object/from16 v15, v17

    move-object/from16 v33, v21

    move/from16 v11, v22

    :goto_5fd
    move/from16 v34, v16

    move-object/from16 v16, v0

    move/from16 v0, v34

    :goto_603
    if-eqz v2, :cond_647

    move/from16 v17, v11

    const/4 v11, 0x0

    .line 4085
    invoke-virtual {v2, v4, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 4086
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4087
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_64c

    .line 4089
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_628
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_64c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4090
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_628

    :cond_647
    move/from16 v17, v11

    .line 4094
    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4096
    :cond_64c
    sput-object v3, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    if-eqz v3, :cond_692

    const/4 v2, 0x0

    .line 4098
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 4099
    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_692

    .line 4102
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_673
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_692

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_673

    .line 4108
    :cond_692
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4109
    invoke-virtual {v2, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4110
    invoke-virtual {v2, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4111
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    .line 4113
    :try_start_6a0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4114
    invoke-virtual {v0, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move/from16 v2, v17

    .line 4115
    invoke-virtual {v0, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v3, v20

    move-object/from16 v4, v33

    .line 4116
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v19

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    iget-object v2, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_6cf
    .catch Ljava/lang/Exception; {:try_start_6a0 .. :try_end_6cf} :catch_6d0

    goto :goto_6d4

    :catch_6d0
    move-exception v0

    .line 4120
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4123
    :goto_6d4
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    if-nez v18, :cond_6de

    .line 4126
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationCreation()V

    .line 4128
    :cond_6de
    throw v16
.end method

.method public enforceAppSeparationDeletion()V
    .registers 3

    .line 3692
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3693
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p0, "PersonaManagerService"

    const-string v0, "enforceAppSeparationDeletion"

    .line 3694
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final enforceAppSeparationDeletionInternal()V
    .registers 5

    const/4 v0, 0x1

    .line 3870
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.knox.action.APP_SEPARATION_ACTION"

    .line 3871
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "removestart"

    .line 3872
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "com.samsung.android.appseparation"

    const-string v3, "com.samsung.android.appseparation.receiver.ProfileStateChangedReceiver"

    .line 3873
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3874
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_20

    goto :goto_24

    :catch_20
    move-exception v1

    .line 3876
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3878
    :goto_24
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 3879
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 3880
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 3881
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    .line 3882
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->enforceSeparatedAppsRemoveInternal()Z

    move-result v0

    .line 3883
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.knox.intent.action.SEPARATION_ACTION_RETURN"

    .line 3884
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "type"

    const-string v3, "deactivate"

    .line 3885
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "status"

    .line 3886
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3887
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    .line 3892
    :cond_6a
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->logEventDeactivationForAppSep()V

    .line 3893
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 3894
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    return-void
.end method

.method public enforceSeparatedAppsRemove()V
    .registers 3

    .line 3698
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v1, 0x4b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3699
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p0, "PersonaManagerService"

    const-string v0, "enforceSeparatedAppsRemove"

    .line 3700
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final enforceSeparatedAppsRemoveInternal()Z
    .registers 10

    .line 3817
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PersonaManagerService"

    const/4 v2, 0x0

    if-nez v0, :cond_f

    const-string p0, "enforceSeparatedAppsRemoveInternal return immediately if App Separation has not been set"

    .line 3820
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_f
    const-string v3, "APP_SEPARATION_OUTSIDE"

    .line 3823
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 3824
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3825
    new-instance v5, Ljava/util/HashSet;

    const-string v6, "APP_SEPARATION_APP_LIST"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3826
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    .line 3827
    invoke-virtual {p0, v2, v0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackagesAsUser(ILjava/util/Set;)V

    .line 3828
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v6, 0x40

    invoke-virtual {v0, v6, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 3830
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3f
    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_81

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 3831
    invoke-virtual {p0, v6}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    move-result v7

    if-nez v7, :cond_3f

    .line 3832
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enforceSeparatedAppsRemoveInternal remove packageName "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3833
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_71

    if-nez v3, :cond_7b

    :cond_71
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 3834
    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3f

    if-nez v3, :cond_3f

    .line 3835
    :cond_7b
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 3840
    :cond_81
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x1

    move v4, v3

    :cond_87
    :goto_87
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3841
    invoke-virtual {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->isKeyboardApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9a

    goto :goto_87

    .line 3844
    :cond_9a
    invoke-virtual {p0, v2, v5}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_87

    .line 3845
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enforceSeparatedAppsRemoveInternal remove use 0 packageName ? - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v6, 0x10000000

    .line 3846
    invoke-virtual {p0, v2, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->deletePackageAsUser(ILjava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_87

    .line 3850
    invoke-virtual {p0, v5, v3}, Lcom/android/server/pm/PersonaManagerService;->disableAppInOwner(Ljava/lang/String;Z)V

    move v4, v2

    goto :goto_87

    .line 3857
    :cond_c1
    :try_start_c1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.knox.action.APP_SEPARATION_ACTION"

    .line 3858
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "removed"

    .line 3859
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.samsung.android.appseparation"

    const-string v2, "com.samsung.android.appseparation.receiver.ProfileStateChangedReceiver"

    .line 3860
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3861
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_df} :catch_e0

    goto :goto_e4

    :catch_e0
    move-exception p0

    .line 3863
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e4
    return v4
.end method

.method public final getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .registers 2

    .line 2562
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-nez v0, :cond_e

    .line 2563
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 2565
    :cond_e
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public getAdminComponentName(I)Landroid/content/ComponentName;
    .registers 7

    .line 1726
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 1727
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    .line 1729
    invoke-static {p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->isDualDarDO(I)Z

    move-result v3

    if-nez v2, :cond_23

    .line 1733
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_1f
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1d

    goto :goto_24

    :catchall_1d
    move-exception p1

    goto :goto_51

    :catch_1f
    move-exception v4

    .line 1735
    :try_start_20
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_1d

    :cond_23
    move v4, v2

    :goto_24
    if-nez v2, :cond_32

    if-nez v4, :cond_32

    if-eqz v3, :cond_2b

    goto :goto_32

    .line 1746
    :cond_2b
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0

    .line 1739
    :cond_32
    :goto_32
    :try_start_32
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->isTestingMode()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1740
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->getPersonaManagerInternal()Lcom/samsung/android/knox/PersonaManagerInternal;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/knox/PersonaManagerInternal;->getAdminComponentNameFromEdm(I)Landroid/content/ComponentName;

    move-result-object p1
    :try_end_44
    .catchall {:try_start_32 .. :try_end_44} :catchall_1d

    .line 1746
    :goto_44
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return-object p1

    .line 1742
    :cond_4a
    :try_start_4a
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PersonaManagerService$LocalService;->getAdminComponentNameFromEdm(I)Landroid/content/ComponentName;

    move-result-object p1
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_1d

    goto :goto_44

    .line 1746
    :goto_51
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 1747
    throw p1
.end method

.method public final getAppNameByPID(I)Ljava/lang/String;
    .registers 4

    .line 2996
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 2997
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 3000
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 3001
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3002
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v1, p1, :cond_1a

    .line 3003
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    :cond_2d
    const-string p0, ""

    return-object p0
.end method

.method public getAppSeparationConfig()Landroid/os/Bundle;
    .registers 1

    .line 3536
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getAppSeparationId()I
    .registers 6

    .line 3705
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 3707
    :try_start_6
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 3709
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 3710
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 3711
    iget v2, v3, Landroid/content/pm/UserInfo;->id:I
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_31

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    .line 3716
    :goto_2b
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return v2

    :catchall_31
    move-exception v2

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 3717
    throw v2
.end method

.method public final getAppSeparationName(Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .registers 2

    .line 1821
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 1822
    iget-object p0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    const-string p0, "Separated Apps"

    return-object p0

    .line 1825
    :cond_11
    iget-object p0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object p0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttributes(I)I
    .registers 3

    const-string v0, "getAttributes"

    .line 2583
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2585
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->getAttributes(Lcom/android/server/pm/UserManagerInternal;I)I

    move-result p0

    return p0
.end method

.method public final getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    .line 2879
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 2880
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2881
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2882
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method public getContainerName(I)Ljava/lang/String;
    .registers 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    const-string p0, "Work profile"

    return-object p0

    :cond_6
    if-nez p1, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 1774
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 1777
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isSecureFolderIds(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1778
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderName()Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    .line 1781
    :cond_1b
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    .line 1782
    invoke-virtual {p0, v2, p1}, Lcom/android/server/pm/PersonaManagerService;->getContainerNamePerTypes(Landroid/os/UserManager;I)Ljava/lang/String;

    move-result-object p1

    .line 1784
    :goto_25
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return-object p1
.end method

.method public final getContainerNamePerTypes(Landroid/os/UserManager;I)Ljava/lang/String;
    .registers 4

    .line 1795
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1800
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationName(Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1801
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationName(Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2f

    .line 1802
    :cond_13
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->getECName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 1803
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->getECName(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2f

    .line 1804
    :cond_1e
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->getProfileName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 1807
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->getProfileName(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2f

    .line 1809
    :cond_29
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/PersonaManagerService;->getWorkProfileName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    :goto_2f
    if-nez p0, :cond_33

    .line 1813
    iget-object p0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1815
    :cond_33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getContainerName return value for container id:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PersonaManagerService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getContainerOrder(I)I
    .registers 6

    .line 1912
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 1913
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 1914
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 1919
    iget-object p1, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const-string v2, "KNOX"

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_23

    const/4 p1, 0x1

    goto :goto_26

    :cond_23
    const/4 p1, 0x2

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    .line 1926
    :goto_26
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return p1
.end method

.method public getCustomResource(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2604
    invoke-static {p1, p2}, Lcom/android/server/knox/ContainerDependencyWrapper;->getCustomResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDeviceFirmwareVersion()Ljava/lang/String;
    .registers 5

    .line 1358
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string/jumbo v0, "ro.build.PDA"

    const-string v1, "Unknown"

    .line 1361
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1. pdaVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PersonaManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2. pdaVersion = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceOwnerPackage()Ljava/lang/String;
    .registers 5

    const-string p0, "device_policy"

    .line 3580
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 3579
    invoke-static {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object p0

    const-string v0, "PersonaManagerService"

    const/4 v1, 0x0

    if-eqz p0, :cond_31

    const/4 v2, 0x0

    .line 3584
    :try_start_10
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 3586
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_1c

    move-object v1, p0

    goto :goto_31

    :catch_1c
    move-exception p0

    .line 3590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceOwnerPackage exception -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    :cond_31
    :goto_31
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceOwnerPackage packageName -"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final getDpmLimitTimeout(ILandroid/content/ComponentName;)I
    .registers 5

    if-eqz p2, :cond_9

    .line 3262
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p2, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide p0

    goto :goto_b

    :cond_9
    const-wide/16 p0, 0x0

    :goto_b
    const-wide/32 v0, 0x7fffffff

    cmp-long p2, p0, v0

    if-lez p2, :cond_16

    const p0, 0x7fffffff

    goto :goto_17

    :cond_16
    long-to-int p0, p0

    :goto_17
    return p0
.end method

.method public getDualDARProfile()Landroid/os/Bundle;
    .registers 1

    .line 3337
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/ContainerDependencyWrapper;->getDualDARProfile(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getECName(I)Ljava/lang/String;
    .registers 3

    .line 2909
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->isTestingMode()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2910
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService$Injector;->getPersonaManagerInternal()Lcom/samsung/android/knox/PersonaManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/PersonaManagerInternal;->getECName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2912
    :cond_13
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService$LocalService;->getECName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFocusedLauncherId()I
    .registers 2

    .line 1711
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLauncherLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1712
    :try_start_3
    iget p0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedLauncherId:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 1713
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getFocusedUser()I
    .registers 5

    .line 3193
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3194
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 3195
    iget v2, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    .line 3197
    :try_start_12
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_1e
    .catchall {:try_start_12 .. :try_end_16} :catchall_1c

    .line 3201
    :goto_16
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    goto :goto_23

    :catchall_1c
    move-exception v2

    goto :goto_24

    :catch_1e
    move-exception v3

    .line 3199
    :try_start_1f
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_1c

    goto :goto_16

    :goto_23
    return v2

    .line 3201
    :goto_24
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 3202
    throw v2

    .line 3205
    :cond_2a
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3206
    :try_start_2d
    iget p0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    monitor-exit v0

    return p0

    :catchall_31
    move-exception p0

    .line 3207
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_31

    throw p0
.end method

.method public getFotaVersion()I
    .registers 4

    const-string v0, "PersonaManagerService"

    const-string v1, "getFotaVersion is called..."

    .line 2127
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2130
    :try_start_a
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    const-string v1, "fotaversion"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_21

    .line 2131
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_21

    .line 2132
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_22

    :cond_21
    const/4 p0, -0x1

    .line 2134
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_3b

    const-string v0, "PersonaManagerService"

    .line 2135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "version - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :catchall_3b
    move-exception p0

    .line 2134
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public final getIMEPackages()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3608
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 3609
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackagesAsUser(ILjava/util/Set;)V

    .line 3610
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v1

    if-eqz v1, :cond_12

    .line 3612
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackagesAsUser(ILjava/util/Set;)V

    :cond_12
    return-object v0
.end method

.method public final getIMEPackagesAsUser(ILjava/util/Set;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3618
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3619
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.view.InputMethod"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x808280

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 3626
    :goto_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7d

    .line 3627
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 3628
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 3629
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v4, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 3630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIMEPackages IME PackageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PersonaManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 3633
    :try_start_46
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-wide/16 v7, 0x40

    invoke-interface {v5, v6, v7, v8, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception v5

    .line 3635
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_57
    if-eqz v3, :cond_7a

    .line 3637
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-nez v3, :cond_7a

    .line 3638
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIMEPackages third party IME PackageName = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3639
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_7d
    return-void
.end method

.method public final getIPackageManager()Landroid/content/pm/IPackageManager;
    .registers 1

    .line 4560
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public final getKnoxGlobalSettingsIcon()[B
    .registers 10

    const-string v0, "PersonaManagerService"

    .line 2652
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 2653
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    const/4 v2, 0x0

    :try_start_11
    const-string v3, "com.android.settings"

    .line 2657
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4, v3}, Lcom/android/server/knox/ContainerDependencyWrapper;->isPackageInstalled(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v4

    .line 2658
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "is Global Settings Package Installed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    if-eqz v4, :cond_82

    .line 2660
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.category.LAUNCHER"

    .line 2661
    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2662
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v4, v5, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 2663
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_80

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 2664
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Global Settings PackageName List = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 2666
    iget-object v4, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v4

    goto :goto_a3

    :cond_80
    move v4, v5

    goto :goto_a3

    :cond_82
    const-string v3, "com.samsung.android.knox.containeragent"

    .line 2672
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v4

    .line 2673
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":drawable/ic_global_settings"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    :goto_a3
    if-eqz v4, :cond_dd

    .line 2677
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v3, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p0

    .line 2678
    invoke-virtual {p0, v4, v1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 2679
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2680
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2681
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_c7} :catch_c8

    return-object p0

    :catch_c8
    move-exception p0

    .line 2684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load icon from default resource: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_dd
    return-object v2
.end method

.method public getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B
    .registers 10

    .line 2615
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p2, :cond_1e

    :try_start_a
    const-string v4, "com.android.internal.app.ForwardIntentToManagedProfile"

    .line 2620
    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v4, "com.android.internal.app.ForwardIntentToManagedProfile4"

    .line 2621
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    move v4, v2

    goto :goto_1f

    :cond_1c
    move v4, v3

    goto :goto_1f

    :cond_1e
    const/4 v4, -0x1

    :goto_1f
    const-string v5, "com.samsung.android.knox.containeragent"

    .line 2627
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_46

    if-ne v4, v3, :cond_2a

    goto :goto_46

    :cond_2a
    const-string p2, "com.samsung.knox.securefolder"

    .line 2637
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_8c

    if-nez p1, :cond_3c

    if-ne v4, v2, :cond_35

    goto :goto_3c

    .line 2641
    :cond_35
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0

    .line 2638
    :cond_3c
    :goto_3c
    :try_start_3c
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderIcon()[B

    move-result-object p1
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_8c

    .line 2641
    :goto_40
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return-object p1

    :cond_46
    :goto_46
    :try_start_46
    const-string v2, "com.samsung.android.knox.containeragent.settings.KnoxSettingsActivityIconI"

    .line 2628
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    const-string v2, "com.samsung.android.knox.containeragent.settings.KnoxSettingsActivityIconII"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    const-string v2, "com.samsung.android.knox.containeragent.settings.KnoxSettingsActivityIconIII"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    goto :goto_87

    :cond_5f
    const-string v2, "com.samsung.android.knox.containeragent.switcher.PhoneIcon"

    .line 2630
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_82

    const-string v2, "com.samsung.android.knox.containeragent.switcher.SMSIcon"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    goto :goto_82

    :cond_70
    const-string v2, "com.samsung.android.knox.containeragent.switcher.GlobalSettingsIcon"

    .line 2632
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 2633
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getKnoxGlobalSettingsIcon()[B

    move-result-object p1

    goto :goto_40

    .line 2635
    :cond_7d
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PersonaManagerService;->getKnoxSwitcherIcon(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object p1

    goto :goto_40

    .line 2631
    :cond_82
    :goto_82
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->getKnoxPhoneOrMessageIcon(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_40

    .line 2629
    :cond_87
    :goto_87
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/PersonaManagerService;->getKnoxSettingsIcon(Ljava/lang/String;I)[B

    move-result-object p1
    :try_end_8b
    .catchall {:try_start_46 .. :try_end_8b} :catchall_8c

    goto :goto_40

    :catchall_8c
    move-exception p1

    .line 2641
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 2642
    throw p1
.end method

.method public final getKnoxPhoneOrMessageIcon(Ljava/lang/String;)[B
    .registers 12

    const-string v0, "android.intent.category.INFO"

    const-string v1, "PersonaManagerService"

    .line 2761
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 2762
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    const/4 v3, 0x0

    :try_start_13
    const-string v4, "com.samsung.android.knox.containeragent.switcher.PhoneIcon"

    .line 2764
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_19} :catch_16f

    const-string v5, "android.intent.category.LAUNCHER"

    const-string v6, "com.samsung.android.knox.containeragent"

    const/4 v7, 0x0

    if-eqz v4, :cond_c2

    :try_start_20
    const-string p1, "com.samsung.android.dialer"

    .line 2767
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->isPackageInstalled(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v0

    .line 2768
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Is Phone Package Installed = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_a1

    .line 2770
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2772
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v7, v7}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_57

    .line 2774
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_64

    .line 2775
    :cond_57
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2776
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v7, v7}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 2779
    :cond_64
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_68
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 2780
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone PackageName List = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 2782
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    goto/16 :goto_126

    :cond_9e
    move v0, v7

    goto/16 :goto_126

    .line 2788
    :cond_a1
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p1

    .line 2789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":drawable/ic_phone"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_14a

    :cond_c2
    const-string v4, "com.samsung.android.knox.containeragent.switcher.SMSIcon"

    .line 2792
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_148

    const-string p1, "com.samsung.android.messaging"

    .line 2795
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->isPackageInstalled(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v4

    .line 2796
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Is SMS Package Installed = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_128

    .line 2798
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2799
    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2800
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2802
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v4, v7, v7}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_107

    .line 2804
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_11a

    .line 2805
    :cond_107
    invoke-virtual {v4, v0}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 2806
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2807
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2808
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v4, v7, v7}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 2810
    :cond_11a
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    :goto_126
    move-object v6, p1

    goto :goto_14a

    .line 2813
    :cond_128
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p1

    .line 2814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":drawable/ic_message"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_14a

    :cond_148
    move-object v6, v3

    move v0, v7

    :goto_14a
    if-eqz v0, :cond_184

    .line 2819
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p0

    .line 2820
    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 2821
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2822
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2823
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_16e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_16e} :catch_16f

    return-object p0

    :catch_16f
    move-exception p0

    .line 2826
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to load icon from default resource: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_184
    return-object v3
.end method

.method public getKnoxSettingsCustomName(I)Ljava/lang/String;
    .registers 7

    const-string v0, "com.samsung.android.knox.containeragent"

    const/4 v1, 0x0

    .line 3170
    :try_start_3
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PersonaManagerService$LocalService;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 3171
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 3173
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getContainerName(I)Ljava/lang/String;

    move-result-object p0

    if-eqz v2, :cond_4f

    .line 3175
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v2, "app_name_settings"

    const-string/jumbo v3, "string"

    .line 3176
    invoke-virtual {p1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4f

    .line 3179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " settings"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_46} :catch_47

    goto :goto_4f

    :catch_47
    move-exception p0

    const-string p1, "PersonaManagerService"

    const-string v0, "Exception while accessing custom settings name."

    .line 3184
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4f
    :goto_4f
    return-object v1
.end method

.method public final getKnoxSettingsIcon(Ljava/lang/String;I)[B
    .registers 4

    const-string v0, "custom-container-icon"

    .line 2692
    invoke-static {p2, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    const-string/jumbo v0, "mipmap/knox_base1_setting"

    .line 2697
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/PersonaManagerService;->loadDefaultIconRes(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public final getKnoxSwitcherIcon(Ljava/lang/String;Ljava/lang/String;I)[B
    .registers 11

    .line 2702
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    const-string/jumbo v0, "knox_icon_upgraded"

    const-string v1, "custom-container-icon"

    const/4 v2, 0x0

    const-string/jumbo v3, "mipmap/security_home_icon"

    const-string v4, "com.samsung.android.knox.containeragent"

    const/4 v5, 0x0

    if-eqz p3, :cond_36

    const/16 v6, -0x2710

    if-eq p3, v6, :cond_36

    .line 2708
    invoke-virtual {p1, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 2711
    invoke-static {p3, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_34

    if-eqz v2, :cond_34

    .line 2715
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1, v0, v5, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 2718
    invoke-virtual {p0, v4, v3, v5}, Lcom/android/server/pm/PersonaManagerService;->loadDefaultIconRes(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object p0

    goto :goto_74

    :cond_34
    move-object p0, p1

    goto :goto_74

    :cond_36
    const-string p3, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconI"

    .line 2722
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_83

    const/high16 p2, 0x100000

    .line 2729
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    .line 2730
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_48
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_73

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/UserInfo;

    .line 2731
    iget v6, p3, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v6, p2

    if-ne v6, p2, :cond_48

    .line 2734
    iget p1, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_70

    .line 2738
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1, v0, v5, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 2741
    invoke-virtual {p0, v4, v3, v5}, Lcom/android/server/pm/PersonaManagerService;->loadDefaultIconRes(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v2

    :cond_70
    move-object p0, v2

    move-object v2, p3

    goto :goto_74

    :cond_73
    move-object p0, v2

    :goto_74
    if-eqz v2, :cond_82

    .line 2749
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_82

    if-eqz p0, :cond_82

    .line 2750
    invoke-static {p0}, Lcom/android/server/knox/ContainerDependencyWrapper;->convertToGreyIcon([B)[B

    move-result-object p0

    :cond_82
    return-object p0

    .line 2725
    :cond_83
    invoke-virtual {p0, v4, v3, v5}, Lcom/android/server/pm/PersonaManagerService;->loadDefaultIconRes(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public final getLastUserRemovalLog()Ljava/lang/String;
    .registers 3

    .line 4483
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_12

    .line 4484
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    const-string v1, "USER-REMOVED"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 4485
    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    :try_start_11
    throw p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_12} :catch_12

    :catch_12
    move-exception p0

    .line 4488
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "NA"

    return-object p0
.end method

.method public final getLaunchableApps(I)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1447
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 1448
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1449
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v1, 0xc2200

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 1455
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 1456
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1457
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_36
    return-object p1
.end method

.method public final getLauncherPackages()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4584
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 4585
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4586
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0xc0000

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 4590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4591
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 4592
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4593
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 4594
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_3b
    return-object v0
.end method

.method public getMoveToKnoxMenuList(I)Ljava/util/ArrayList;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 3018
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3020
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMoveToKnoxMenuList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PersonaManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xe6

    .line 3022
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v3

    if-nez v3, :cond_2e

    const-string/jumbo v0, "not suppored knox version"

    .line 3023
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 3026
    :cond_2e
    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/knox/ContainerDependencyWrapper;->isInEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const-string v0, "emergency mode"

    .line 3027
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3c
    const/4 v3, 0x0

    .line 3031
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_49

    const-string v0, "getMoveToKnoxMenuList() return empty for DO enabled"

    .line 3032
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 3036
    :cond_49
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/server/pm/PersonaManagerService;->getAppNameByPID(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_67

    .line 3038
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMoveToKnoxMenuList : calling pkg name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    :cond_67
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->getContactsPkgName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_81

    .line 3044
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMoveToKnoxMenuList : contact pkg name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    if-eqz v6, :cond_89

    .line 3046
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_91

    :cond_89
    const-string v6, "com.samsung.android.dialer"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_97

    :cond_91
    const-string v0, "deprecated feature :: move to contact"

    .line 3047
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 3050
    :cond_97
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMoveToKnoxMenuList : is WP-C : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->isSecureFolderPkgAvailable()Z

    move-result v5

    const/16 v6, 0x3ea

    const-string v7, "com.sec.knox.moveto.containerId"

    const-string/jumbo v8, "true"

    const-string v9, "com.sec.knox.moveto.containerType"

    const-string v10, "com.sec.knox.moveto.name"

    if-eqz v5, :cond_fe

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v5

    if-nez v5, :cond_fe

    if-nez v1, :cond_fe

    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v5

    if-gtz v5, :cond_fe

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->isSecureFolderSupported()Z

    move-result v5

    if-eqz v5, :cond_fe

    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v5

    if-nez v5, :cond_fe

    .line 3052
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3053
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3054
    invoke-virtual {v5, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v12, -0x3e8

    .line 3055
    invoke-virtual {v5, v7, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3057
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "Added permanent item :: Move to Secure Folder"

    .line 3058
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    goto :goto_ff

    :cond_fe
    const/4 v5, 0x0

    .line 3060
    :goto_ff
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_305

    .line 3061
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_111

    goto/16 :goto_305

    :cond_111
    const-string v13, "false"

    const-string v14, "com.sec.knox.moveto.isSupportMoveTo"

    if-nez v1, :cond_292

    move v15, v3

    move/from16 v16, v15

    move/from16 v17, v16

    const/4 v11, -0x1

    .line 3069
    :goto_11d
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    if-ge v15, v6, :cond_304

    .line 3070
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 3072
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v19

    const/16 v20, 0x1

    if-eqz v19, :cond_1f6

    .line 3074
    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v19, v5

    const-string/jumbo v5, "hide_secure_folder_flag"

    invoke-static {v1, v5, v3, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_14e

    move/from16 v1, v20

    goto :goto_14f

    :cond_14e
    move v1, v3

    .line 3075
    :goto_14f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v5

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v3

    if-eqz v1, :cond_1c2

    if-eqz v3, :cond_1c2

    const/4 v5, -0x1

    if-eq v11, v5, :cond_195

    .line 3078
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v11, v1, :cond_195

    .line 3079
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Second secure folder detected with id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    move-object/from16 v22, v8

    move-object/from16 v1, v19

    const/16 v18, 0x3ea

    goto/16 :goto_289

    .line 3082
    :cond_195
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string/jumbo v1, "is secure folder"

    .line 3084
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v10, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3ea

    .line 3086
    invoke-virtual {v6, v9, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3087
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move/from16 v18, v1

    move-object v5, v8

    goto :goto_1f0

    :cond_1c2
    const/4 v5, -0x1

    const/16 v18, 0x3ea

    .line 3091
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Id : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", Enabled Secure Folder : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", User Running : "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, v19

    const/4 v6, 0x0

    :goto_1f0
    move-object v1, v5

    move-object/from16 v22, v8

    move-object v5, v4

    goto/16 :goto_281

    :cond_1f6
    move-object/from16 v19, v5

    const/16 v18, 0x3ea

    const-string/jumbo v1, "is knox"

    .line 3094
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    move-object v5, v4

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v3

    .line 3098
    :try_start_207
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;
    :try_end_211
    .catch Ljava/lang/Exception; {:try_start_207 .. :try_end_211} :catch_21c

    move-object/from16 v22, v8

    :try_start_213
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1
    :try_end_21b
    .catch Ljava/lang/Exception; {:try_start_213 .. :try_end_21b} :catch_21e

    goto :goto_21f

    :catch_21c
    move-object/from16 v22, v8

    :catch_21e
    const/4 v1, 0x0

    .line 3101
    :goto_21f
    iget-object v8, v0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v8, v3, v4}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    if-nez v16, :cond_27e

    if-eqz v1, :cond_27e

    .line 3103
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v3

    if-nez v3, :cond_27e

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v1

    if-nez v1, :cond_27e

    .line 3106
    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v4, "move-file-to-container"

    const/4 v8, 0x0

    invoke-static {v1, v4, v8, v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_24d

    move-object/from16 v1, v22

    goto :goto_24e

    :cond_24d
    move-object v1, v13

    :goto_24e
    if-nez v17, :cond_262

    .line 3111
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PersonaManagerService;->getContainerName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v10, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_267

    :cond_262
    const-string v3, "Workspace"

    .line 3113
    invoke-virtual {v6, v10, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_267
    const/16 v3, 0x3e9

    .line 3114
    invoke-virtual {v6, v9, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3115
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v17, v17, 0x1

    move/from16 v16, v20

    goto :goto_281

    :cond_27e
    move-object/from16 v1, v19

    const/4 v6, 0x0

    :goto_281
    if-eqz v6, :cond_289

    .line 3123
    invoke-virtual {v6, v14, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3124
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_289
    :goto_289
    add-int/lit8 v15, v15, 0x1

    move-object v4, v5

    move-object/from16 v8, v22

    const/4 v3, 0x0

    move-object v5, v1

    goto/16 :goto_11d

    :cond_292
    move-object v5, v4

    move-object/from16 v22, v8

    .line 3127
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_304

    .line 3128
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3129
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_2bc

    const-string/jumbo v1, "is secure folder (inside secure folder)"

    .line 3130
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3131
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3eb

    .line 3132
    invoke-virtual {v3, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_2b8
    move-object/from16 v8, v22

    :goto_2ba
    const/4 v0, 0x0

    goto :goto_2fb

    :cond_2bc
    const-string/jumbo v4, "is knox(inside container)"

    .line 3135
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v4

    .line 3139
    :try_start_2c8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_2cf
    .catch Ljava/lang/Exception; {:try_start_2c8 .. :try_end_2cf} :catch_2cf

    .line 3142
    :catch_2cf
    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 3144
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonalModeName(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2e2

    const-string v5, ""

    .line 3145
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e4

    :cond_2e2
    const-string v4, "Personal"

    .line 3148
    :cond_2e4
    invoke-virtual {v3, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x3ec

    .line 3149
    invoke-virtual {v3, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3151
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "move-file-to-owner"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5, v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2f9

    goto :goto_2b8

    :cond_2f9
    move-object v8, v13

    goto :goto_2ba

    .line 3158
    :goto_2fb
    invoke-virtual {v3, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3159
    invoke-virtual {v3, v14, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3160
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_304
    return-object v2

    :cond_305
    :goto_305
    move-object v5, v4

    const-string v0, "PersonaIds list null or empty"

    .line 3062
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public bridge synthetic getMoveToKnoxMenuList(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getMoveToKnoxMenuList(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "getPersonaCacheValue"

    .line 2140
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string v0, "PersonaManagerService"

    .line 2142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPersonaCacheValue is called for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3d

    .line 2144
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2145
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2146
    :try_start_30
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2147
    monitor-exit v0

    goto :goto_3e

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_3a

    throw p0

    :cond_3d
    const/4 p0, 0x0

    :goto_3e
    return-object p0
.end method

.method public final getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .registers 3

    .line 670
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_11

    .line 671
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 673
    :cond_11
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object p0
.end method

.method public getPersonaPolicyService()Lcom/android/server/knox/PersonaPolicyManagerService;
    .registers 1

    .line 632
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    return-object p0
.end method

.method public getPersonaUserHasBeenShutdownBefore(I)Z
    .registers 4

    .line 2889
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserHasBeenShutdownBefore:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 2890
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserHasBeenShutdownBefore:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    .line 2891
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getPersonalModeName(I)Ljava/lang/String;
    .registers 7

    const-string v0, "PersonaManagerService:FOTA"

    .line 2931
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v1

    .line 2934
    :try_start_8
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->getCustomNamePersonalMode(I)Ljava/lang/String;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    goto :goto_16

    :catch_f
    const-string/jumbo p1, "getPersonalModeName unable to getCustomName"

    .line 2936
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 2939
    :goto_16
    sget-boolean v3, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz v3, :cond_2f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPersonalModeName name - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2940
    :cond_2f
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return-object p1
.end method

.method public final getPowerManagerInternal()Landroid/os/PowerManagerInternal;
    .registers 2

    .line 2555
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-nez v0, :cond_e

    .line 2556
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 2558
    :cond_e
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-object p0
.end method

.method public getProfileName(I)Ljava/lang/String;
    .registers 6

    .line 2918
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 2921
    :try_start_6
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->getPersonaPolicyManagerService()Lcom/android/server/knox/PersonaPolicyManagerService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->getCustomNamePersona(I)Ljava/lang/String;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_11

    goto :goto_1a

    :catch_11
    const-string v2, "PersonaManagerService:FOTA"

    const-string/jumbo v3, "getProfileName unable to getCustomName"

    .line 2923
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 2925
    :goto_1a
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 2926
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "getProfileName return value for container id:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getProfiles(IZ)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 691
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_13

    if-nez v1, :cond_17

    const/4 v0, 0x1

    goto :goto_17

    :catch_13
    move-exception v1

    .line 695
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 697
    :cond_17
    :goto_17
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v1

    .line 699
    :try_start_1d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 700
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 701
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 702
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_35
    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 703
    new-instance v6, Landroid/content/pm/UserInfo;

    invoke-direct {v6, v5}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    .line 704
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v7

    if-eqz v7, :cond_4d

    goto :goto_35

    :cond_4d
    if-nez p2, :cond_53

    .line 707
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    if-eq v5, p1, :cond_35

    :cond_53
    if-nez v0, :cond_5a

    const/4 v5, 0x0

    .line 709
    iput-object v5, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 710
    iput-object v5, v6, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 712
    :cond_5a
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5d
    .catchall {:try_start_1d .. :try_end_5d} :catchall_64

    goto :goto_35

    .line 717
    :cond_5e
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return-object v3

    :catchall_64
    move-exception p1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 718
    throw p1
.end method

.method public getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 3365
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/PersonaPolicyManagerService;->getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 3369
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/PersonaPolicyManagerService;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRequiredApps()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1464
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x100000

    const/4 v2, 0x0

    .line 1465
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 1466
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_30

    .line 1467
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_30

    .line 1468
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 1469
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 1472
    :cond_30
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->getLaunchableApps(I)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    const v0, 0x10701b2

    .line 1474
    new-instance v2, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1475
    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public getScreenOffTimeoutLocked(I)I
    .registers 4

    .line 3219
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getTimeoutFromDeviceSettings(I)I

    move-result v0

    .line 3220
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 3221
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PersonaManagerService;->getDpmLimitTimeout(ILandroid/content/ComponentName;)I

    move-result p1

    .line 3223
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isDpmEnforced(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    if-lez v0, :cond_19

    .line 3225
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_22

    :cond_19
    move v0, p1

    goto :goto_22

    .line 3229
    :cond_1b
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->isTimeOutComputable(I)Z

    move-result p1

    if-nez p1, :cond_22

    return v0

    .line 3233
    :cond_22
    :goto_22
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->isTimeOutComputable(I)Z

    move-result p0

    if-eqz p0, :cond_2e

    const/16 p0, 0x1388

    .line 3234
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3236
    :cond_2e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "getScreenOffTimeoutLocked final: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final getSecureFolderIcon()[B
    .registers 4

    .line 2834
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "secure_folder_image_name"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_50

    const-string v1, "com.samsung.knox.securefolder"

    if-eqz v0, :cond_24

    .line 2835
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_24

    .line 2841
    :cond_19
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_39

    .line 2836
    :cond_24
    :goto_24
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object p0

    .line 2837
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    const/16 v0, 0x20

    .line 2838
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 2843
    :goto_39
    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_6b

    .line 2846
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2847
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2848
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4f} :catch_50

    return-object p0

    :catch_50
    move-exception p0

    .line 2851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in getSecureFolderIcon : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PersonaManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSecureFolderId()I
    .registers 1

    .line 1765
    iget p0, p0, Lcom/android/server/pm/PersonaManagerService;->mSecureFolderId:I

    return p0
.end method

.method public getSecureFolderName()Ljava/lang/String;
    .registers 3

    .line 4496
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.knox.securefolder"

    const/4 v1, 0x0

    .line 4499
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 4500
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadUnsafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_1c

    :catch_16
    move-exception p0

    .line 4502
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "Secure Folder"

    :goto_1c
    return-object p0
.end method

.method public getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3377
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/PersonaPolicyManagerService;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getSeparationAppsList(Landroid/os/Bundle;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "APP_SEPARATION_APP_LIST"

    .line 4352
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_d

    .line 4354
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_d
    return-object p0
.end method

.method public getSeparationConfigfromCache()Landroid/os/Bundle;
    .registers 1

    .line 2208
    sget-object p0, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getSeparationPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3

    .line 4223
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getSeparationPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 8

    const-wide/16 v0, 0x40

    const/4 v2, 0x0

    .line 4230
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p1, v0, v1, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    goto :goto_12

    :catch_d
    move-exception v3

    .line 4232
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v3, v2

    :goto_12
    if-eqz v3, :cond_15

    return-object v3

    .line 4242
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception p0

    .line 4244
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_22
    if-nez v3, :cond_25

    return-object v2

    :cond_25
    return-object v3
.end method

.method public final getSystemApps()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1480
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x100000

    const/4 v1, 0x0

    .line 1481
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    .line 1482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_30

    .line 1483
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30

    .line 1484
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1485
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_30
    return-object v0
.end method

.method public final getTimeoutFromDeviceSettings(I)I
    .registers 5

    .line 3270
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    const/4 v1, -0x1

    const-string/jumbo v2, "knox_screen_off_timeout"

    if-eqz v0, :cond_15

    .line 3271
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    goto :goto_1f

    .line 3274
    :cond_15
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    :goto_1f
    return p0
.end method

.method public final declared-synchronized getTrustManager()Landroid/app/trust/ITrustManager;
    .registers 2

    monitor-enter p0

    .line 2898
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTrustManager:Landroid/app/trust/ITrustManager;

    if-nez v0, :cond_12

    const-string/jumbo v0, "trust"

    .line 2900
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2899
    invoke-static {v0}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTrustManager:Landroid/app/trust/ITrustManager;

    .line 2902
    :cond_12
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTrustManager:Landroid/app/trust/ITrustManager;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getUpdatedPackageInfo(Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_11

    .line 3902
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 p1, 0x40

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_9b

    .line 3906
    :cond_11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3907
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x40

    const/4 v5, 0x0

    const-string v6, "PersonaManagerService"

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3908
    invoke-virtual {p3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    goto :goto_1a

    .line 3911
    :cond_32
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getUpdatedPackageInfo Installing prev package1 - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3916
    :try_start_47
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-interface {v6, v2, v3, v4, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4f} :catch_50

    goto :goto_54

    :catch_50
    move-exception v2

    .line 3918
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_54
    if-eqz v5, :cond_1a

    .line 3921
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 3924
    :cond_5a
    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_5e
    :goto_5e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3925
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    goto :goto_5e

    .line 3928
    :cond_71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getUpdatedPackageInfo Installing prev package2 - "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3932
    :try_start_86
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, v1, v3, v4, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_8e} :catch_8f

    goto :goto_94

    :catch_8f
    move-exception v1

    .line 3934
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v1, v5

    :goto_94
    if-eqz v1, :cond_5e

    .line 3937
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    :cond_9a
    move-object p0, p1

    :goto_9b
    return-object p0
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .registers 3

    .line 677
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_11

    .line 678
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    .line 680
    :cond_11
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public final getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .registers 2

    .line 2547
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_e

    .line 2548
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 2550
    :cond_e
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method public final getWorkName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3

    .line 1837
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p0

    new-instance p2, Lcom/android/server/pm/PersonaManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/server/pm/PersonaManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const-string p1, "Core.RESOLVER_WORK_TAB"

    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getWorkProfileName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3

    .line 1831
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p0

    new-instance p2, Lcom/android/server/pm/PersonaManagerService$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/android/server/pm/PersonaManagerService$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    const-string p1, "Core.RESOLVER_WORK_TAB"

    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getWorkTabSupportLauncherUids()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.nttdocomo.android.dhome"

    const-string v2, "com.nttdocomo.android.homezozo"

    .line 4602
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 4606
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getLauncherPackages()Ljava/util/ArrayList;

    move-result-object v2

    .line 4607
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4608
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 4610
    :try_start_2b
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const-wide/16 v5, 0x40

    const/4 v7, 0x0

    invoke-interface {v4, v3, v5, v6, v7}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 4612
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4613
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_43} :catch_44

    goto :goto_15

    :catch_44
    move-exception v3

    .line 4615
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    :cond_49
    return-object v0
.end method

.method public getWorkspaceName(Landroid/content/pm/UserInfo;Z)Ljava/lang/String;
    .registers 7

    const-string v0, "com.samsung.android.knox.containeragent"

    const-string v1, "PersonaManagerService"

    if-eqz p2, :cond_9

    const-string p2, ":string/work_profile_title"

    goto :goto_b

    :cond_9
    const-string p2, ":string/work_title"

    :goto_b
    const/4 v2, 0x0

    .line 1852
    :try_start_c
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 1853
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_30

    .line 1855
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_2f} :catch_34

    goto :goto_32

    :cond_30
    const-string p0, "Work Profile"

    :goto_32
    move-object v2, p0

    goto :goto_41

    :catch_34
    move-exception p0

    .line 1859
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "exception returning null"

    .line 1860
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_41
    if-eqz p1, :cond_62

    .line 1864
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "getWorkspaceName return value for container id:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    return-object v2
.end method

.method public final handleFOTAInstallToPackages()V
    .registers 10

    .line 1492
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 1493
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 1494
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_af

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1495
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 1497
    :try_start_21
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getRequiredApps()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 1498
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5a

    .line 1500
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1501
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5, v4}, Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_42} :catch_43

    goto :goto_31

    :catch_43
    move-exception v3

    .line 1505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to install package for POP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PersonaManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :cond_5a
    :try_start_5a
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PersonaManagerService$LocalService;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1510
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSystemApps()Ljava/util/List;

    move-result-object v3

    .line 1511
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6c
    :goto_6c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1512
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const-wide/16 v6, 0x40

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v5, v4, v6, v7, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_88

    const/4 v5, 0x1

    goto :goto_89

    :cond_88
    move v5, v1

    :goto_89
    if-eqz v5, :cond_99

    .line 1513
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4, v6}, Lcom/android/server/knox/ContainerDependencyWrapper;->isDisallowedAppForKnox(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_99

    .line 1514
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5, v4}, Lcom/android/server/pm/PersonaManagerService;->deletePkg(ILjava/lang/String;)Z

    goto :goto_6c

    :cond_99
    if-nez v5, :cond_6c

    .line 1515
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4, v5}, Lcom/android/server/knox/ContainerDependencyWrapper;->isRequiredAppForKnox(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 1516
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5, v4}, Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_a8} :catch_a9

    goto :goto_6c

    :catch_a9
    move-exception v2

    .line 1521
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    :cond_af
    return-void
.end method

.method public final handleFotaResetSecureFolderAdmin()V
    .registers 3

    const-string v0, "PersonaManagerService:FOTA"

    const-string/jumbo v1, "handleFotaResetSecureFolderAdmin()"

    .line 1540
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->resetSecureFolderAdmin(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p0

    .line 1544
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_12
    return-void
.end method

.method public hideMultiWindows(I)V
    .registers 2

    .line 2042
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->notifyWorkTaskStackChanged()V

    return-void
.end method

.method public final installExistingPackageForPersona(ILjava/lang/String;)I
    .registers 7

    .line 824
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p2}, Lcom/android/server/knox/ContainerDependencyWrapper;->isPackageInstalled(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_55

    const-string v0, "PersonaManagerService"

    const-string/jumbo v2, "packageAlreadyInstalled is true"

    .line 825
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " installExistingPackageForPersona "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/knox/ContainerDependencyWrapper;->installExistingPackageForPersona(Lcom/android/server/pm/PackageManagerService;ILjava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_53

    .line 829
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Failure to install package "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " package manager result code is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_53
    const/4 p0, 0x0

    return p0

    :cond_55
    return v1
.end method

.method public final installPackageForAppSeparation(ILandroid/content/pm/PackageInfo;)I
    .registers 14

    .line 4314
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v0

    .line 4315
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "processAppSeparationInstallationInternal Installing package "

    const-string v3, "PersonaManagerService"

    const/4 v4, 0x1

    if-eqz v0, :cond_36

    if-eqz v1, :cond_36

    .line 4317
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " exist in both mode."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4319
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/PersonaManagerService;->disableAppInOwner(Ljava/lang/String;Z)V

    return v4

    :cond_36
    const-string v1, " in user 0 out return -"

    if-eqz v0, :cond_69

    .line 4325
    :try_start_3a
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lcom/android/server/pm/PersonaManagerService;->disableAppInOwner(Ljava/lang/String;Z)V

    .line 4326
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iget-object v6, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/high16 v8, 0x400000

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v7, p1

    invoke-interface/range {v5 .. v10}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    move-result v4

    .line 4328
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 4331
    :cond_69
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iget-object v6, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    const/high16 v8, 0x400000

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    move-result p1
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_78} :catch_9c

    .line 4333
    :try_start_78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4335
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2, v4}, Lcom/android/server/pm/PersonaManagerService;->disableAppInOwner(Ljava/lang/String;Z)V
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_97} :catch_99

    move v4, p1

    goto :goto_a0

    :catch_99
    move-exception p0

    move v4, p1

    goto :goto_9d

    :catch_9c
    move-exception p0

    .line 4338
    :goto_9d
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_a0
    return v4
.end method

.method public final isAllowListApp(Ljava/lang/String;Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p2, :cond_a

    .line 4162
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isAppSeparationApp(Ljava/lang/String;)Z
    .registers 7

    .line 4132
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    .line 4133
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->checkNullParameter([Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "PersonaManagerService"

    if-eqz v1, :cond_1c

    const-string/jumbo p0, "isAppSeparationApp null"

    .line 4134
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4138
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 4139
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isAppSeparationApp IME package name after isInputMethodApp = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 4142
    :cond_38
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getSeparationPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    .line 4143
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PersonaManagerService;->checkNullParameter([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_4d

    goto :goto_52

    .line 4148
    :cond_4d
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationAppInternal(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_52
    :goto_52
    const-string/jumbo p0, "isAppSeparationApp Return false due to null or IndependentApp"

    .line 4144
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final isAppSeparationAppInternal(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 5

    const-string v0, "APP_SEPARATION_OUTSIDE"

    const/4 v1, 0x0

    .line 4152
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "APP_SEPARATION_APP_LIST"

    .line 4153
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 4155
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->isAllowListApp(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_16

    xor-int/lit8 p0, v0, 0x1

    return p0

    :cond_16
    return v0
.end method

.method public isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 4182
    :cond_4
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    return v2

    .line 4185
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getDeviceOwnerPackage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PersonaManagerService"

    if-eqz v1, :cond_34

    .line 4186
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 4187
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "isAppSeparationIndepdentApp ignoring DO packageName - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4191
    :cond_34
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/ContainerDependencyWrapper;->getKPUPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5a

    .line 4192
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 4193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isAppSeparationIndepdentApp ignoring KSP packageName - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5a
    return v0
.end method

.method public final isAppSeparationInstallationRequired(ZLjava/util/HashSet;Landroid/content/pm/PackageInfo;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            ")Z"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 4346
    iget-object v0, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_a
    if-nez p1, :cond_14

    iget-object p1, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4347
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    :cond_14
    iget-object p1, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4348
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodApp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1e

    :cond_1c
    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public final isBiometricsEnabledAfterFota(I)Z
    .registers 4

    .line 2016
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "dedicated_biometrics"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-lez p0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public isContainerCorePackageUID(I)Z
    .registers 2

    .line 1023
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mCorePackageUid:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isContainerService(I)Z
    .registers 7

    .line 1027
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 1029
    :try_start_6
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object v2

    .line 1030
    invoke-virtual {v2, p1}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object p1

    .line 1031
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxAdminReceiver()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1c} :catch_56
    .catchall {:try_start_6 .. :try_end_1c} :catchall_54

    const/4 v3, 0x1

    if-eqz v2, :cond_25

    .line 1049
    :goto_1f
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return v3

    .line 1034
    :cond_25
    :try_start_25
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getAgentAdminReceiver()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    goto :goto_1f

    :cond_34
    const-string v2, "com.samsung.knox.securefolder"

    .line 1037
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    goto :goto_1f

    :cond_3d
    const-string v2, "com.samsung.android.appseparation"

    .line 1040
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 1041
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "android"

    invoke-virtual {v2, v4, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_51} :catch_56
    .catchall {:try_start_25 .. :try_end_51} :catchall_54

    if-nez p1, :cond_5a

    goto :goto_1f

    :catchall_54
    move-exception p1

    goto :goto_61

    :catch_56
    move-exception p1

    .line 1047
    :try_start_57
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_54

    .line 1049
    :cond_5a
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_61
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 1050
    throw p1
.end method

.method public final isDpmEnforced(I)Z
    .registers 2

    if-lez p1, :cond_9

    const p0, 0x7fffffff

    if-ge p1, p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isExternalStorageEnabled(I)Z
    .registers 2

    .line 2229
    invoke-static {p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->isExternalStorageEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isFOTAUpgrade()Z
    .registers 1

    .line 684
    iget-boolean p0, p0, Lcom/android/server/pm/PersonaManagerService;->mIsFOTAUpgrade:Z

    return p0
.end method

.method public final isFingerprintPlusSecureValueExist(I)Z
    .registers 3

    .line 1676
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "knox_finger_print_plus"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_c} :catch_e

    const/4 p0, 0x1

    goto :goto_f

    :catch_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final isFingerprintPlusSystemValueExist(I)Z
    .registers 3

    .line 1665
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "knox_finger_print_plus"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_c} :catch_e

    const/4 p0, 0x1

    goto :goto_f

    :catch_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isFotaUpgradeVersionChanged()Z
    .registers 1

    .line 1756
    iget-boolean p0, p0, Lcom/android/server/pm/PersonaManagerService;->isFotaUpgradeVersionChanged:Z

    return p0
.end method

.method public final isInputMethodApp(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 3646
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodAppAsUser(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "PersonaManagerService"

    if-eqz v1, :cond_20

    .line 3647
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isInputMethodApp IME package name in DO = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3650
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v1

    if-eqz v1, :cond_42

    .line 3652
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodAppAsUser(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_42

    .line 3653
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isInputMethodApp IME package name in App Separation = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_42
    return v0
.end method

.method public final isInputMethodAppAsUser(Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x0

    .line 3663
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    const-wide/16 v1, 0x4

    invoke-interface {p0, p1, v1, v2, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_43

    .line 3664
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-nez p0, :cond_12

    goto :goto_43

    :cond_12
    if-eqz p0, :cond_48

    .line 3669
    array-length p2, p0

    move v1, v0

    :goto_16
    if-ge v1, p2, :cond_48

    aget-object v2, p0, v1

    .line 3670
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v2, :cond_40

    const-string v3, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string p0, "PersonaManagerService"

    .line 3671
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isAppSeparationApp IME package name = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3d} :catch_44

    const/4 p0, 0x1

    move v0, p0

    goto :goto_48

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_43
    :goto_43
    return v0

    :catch_44
    move-exception p0

    .line 3679
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_48
    :goto_48
    return v0
.end method

.method public final isKeyboardApp(Ljava/lang/String;)Z
    .registers 2

    .line 4201
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    if-eqz p0, :cond_c

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isKnoxProfileActivePasswordSufficientForParent(I)Z
    .registers 3

    const-string/jumbo v0, "isKnoxProfileActivePasswordSufficientForParent"

    .line 3303
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3305
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->isKnoxProfileActivePasswordSufficientForParent(Landroid/os/UserManager;I)Z

    move-result p0

    return p0
.end method

.method public isKnoxWindowExist(III)Z
    .registers 4

    .line 2037
    invoke-static {p1, p2, p3}, Lcom/android/server/knox/ContainerDependencyWrapper;->isKnoxWindowExist(III)Z

    move-result p0

    return p0
.end method

.method public final isMigrationNeededForKnoxFingerprintPlus(I)Z
    .registers 3

    .line 1658
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isFingerprintPlusSystemValueExist(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1659
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isFingerprintPlusSecureValueExist(I)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final isMigrationNeededForKnoxLockTimeout(I)Z
    .registers 3

    .line 1603
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isScreenOffTimeoutSystemValueExist(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1604
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isScreenOffTimeoutSecureValueExist(I)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isMoveFilesToContainerAllowed(I)Z
    .registers 5

    const-string v0, "PersonaManagerService"

    const/4 v1, 0x0

    .line 3421
    :try_start_3
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v2

    .line 3422
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    .line 3423
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/samsung/android/knox/container/RCPPolicy;

    move-result-object p0

    .line 3424
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/RCPPolicy;->isMoveFilesToContainerAllowed()Z

    move-result v1
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_15} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_15} :catch_16

    goto :goto_23

    :catch_16
    const-string/jumbo p0, "isMoveFilesToContainerAllowed : NullPointerException occurred"

    .line 3429
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :catch_1d
    const-string/jumbo p0, "isMoveFilesToContainerAllowed : SecurityException occurred"

    .line 3426
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return v1
.end method

.method public isMoveFilesToOwnerAllowed(I)Z
    .registers 5

    const-string v0, "PersonaManagerService"

    const/4 v1, 0x0

    .line 3438
    :try_start_3
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v2

    .line 3439
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    .line 3440
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/samsung/android/knox/container/RCPPolicy;

    move-result-object p0

    .line 3441
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/RCPPolicy;->isMoveFilesToOwnerAllowed()Z

    move-result v1
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_15} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_15} :catch_16

    goto :goto_23

    :catch_16
    const-string/jumbo p0, "isMoveFilesToOwnerAllowed : NullPointerException occurred"

    .line 3446
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :catch_1d
    const-string/jumbo p0, "isMoveFilesToOwnerAllowed : SecurityException occurred"

    .line 3443
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return v1
.end method

.method public final isOneLockOngoing()Z
    .registers 3

    .line 2020
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_one_lock_ongoing"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-lez p0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public final isPackageInstalledAsUser(ILjava/lang/String;)Z
    .registers 5

    .line 3598
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    const-wide/16 v0, 0x40

    invoke-interface {p0, p2, v0, v1, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_e

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    return p0

    :catch_e
    move-exception p0

    .line 3602
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isPackageInstalledAsUser exception -"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public final isPackageInstalledInAppSeparation(ILandroid/content/pm/PackageInfo;)Z
    .registers 3

    if-eqz p1, :cond_c

    .line 4307
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4309
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isPasswordSufficientAfterKnoxProfileUnification(I)Z
    .registers 3

    const-string/jumbo v0, "isPasswordSufficientAfterKnoxProfileUnification"

    .line 3330
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3332
    invoke-static {p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->isPasswordSufficientAfterKnoxProfileUnification(I)Z

    move-result p0

    return p0
.end method

.method public isPossibleAddAppsToContainer(Ljava/lang/String;I)Z
    .registers 9

    .line 1873
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 p0, 0x1

    .line 1876
    :try_start_5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 1877
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1878
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v5, p2

    .line 1879
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 1881
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_26} :catch_2b

    if-nez p1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 p0, 0x0

    :cond_2a
    :goto_2a
    return p0

    :catch_2b
    move-exception p1

    .line 1883
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return p0
.end method

.method public final isQuickSwitchToSecureFolderSupported()Z
    .registers 1

    .line 4362
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->isSupportPrivateMode()Z

    move-result p0

    return p0
.end method

.method public final isScreenOffTimeoutSecureValueExist(I)Z
    .registers 3

    .line 1621
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "knox_screen_off_timeout"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_c} :catch_e

    const/4 p0, 0x1

    goto :goto_f

    :catch_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final isScreenOffTimeoutSystemValueExist(I)Z
    .registers 3

    .line 1610
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "knox_screen_off_timeout"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_c} :catch_e

    const/4 p0, 0x1

    goto :goto_f

    :catch_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final isSecureFolderIds(I)Z
    .registers 2

    const/16 p0, -0x3e8

    if-eq p1, p0, :cond_d

    .line 1790
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p0

    if-eqz p0, :cond_b

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

.method public final isSecureFolderSupported()Z
    .registers 7

    .line 840
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->isSecureFolderPkgAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 844
    :cond_8
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "PersonaManagerService"

    if-nez p0, :cond_19

    const-string/jumbo p0, "isSecureFolderSupported | package manager is null"

    .line 847
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 851
    :cond_19
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->getSecProductFeature_SEC_PRODUCT_FEATURE_KNOX_CONFIG_SECURE_FOLDER_VERSION()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_26

    const/4 v2, 0x1

    goto :goto_27

    :cond_26
    move v2, v1

    .line 852
    :goto_27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSecureFolderSupported | secure folder config supported  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_6a

    :try_start_3e
    const-string v4, "com.samsung.knox.securefolder"

    .line 856
    invoke-virtual {p0, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v3, :cond_49

    const/4 v3, 0x3

    if-ne p0, v3, :cond_6a

    .line 859
    :cond_49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSecureFolderSupported | secure folder is disabled or disabled_user : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_5e} :catch_5f

    goto :goto_6b

    :catch_5f
    move-exception p0

    const-string/jumbo v2, "isSecureFolderSupported | not found package"

    .line 862
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6b

    :cond_6a
    move v1, v2

    :goto_6b
    return v1
.end method

.method public isShareClipboardDataToContainerAllowed(I)Z
    .registers 5

    const-string v0, "PersonaManagerService"

    .line 3453
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3454
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    return v2

    :cond_12
    :try_start_12
    const-string/jumbo v1, "inside isShareClipboardDataToContainerAllowed method"

    .line 3459
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3460
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v1

    .line 3461
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    .line 3462
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "container mgr object is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_41

    .line 3464
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/samsung/android/knox/container/RCPPolicy;

    move-result-object p0

    .line 3465
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/RCPPolicy;->isShareClipboardDataToContainerAllowed()Z

    move-result p0

    goto :goto_42

    :cond_41
    move p0, v2

    .line 3467
    :goto_42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "inside isshareclipbd data to cnt allowed"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_57} :catch_70
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_57} :catch_59

    move v2, p0

    goto :goto_86

    :catch_59
    move-exception p0

    .line 3472
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isShareClipboardDataToContainer : NullPointerException occurred "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    :catch_70
    move-exception p0

    .line 3469
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isShareClipboardDataToContainer : SecurityException occurred "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_86
    return v2
.end method

.method public isShareClipboardDataToOwnerAllowed(I)Z
    .registers 5

    const-string v0, "PersonaManagerService"

    .line 3396
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3397
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    return v2

    .line 3402
    :cond_12
    :try_start_12
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v1

    .line 3403
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 3405
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/samsung/android/knox/container/RCPPolicy;

    move-result-object p0

    .line 3406
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/RCPPolicy;->isShareClipboardDataToOwnerAllowed()Z

    move-result v2
    :try_end_26
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_26} :catch_2d
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_26} :catch_27

    goto :goto_32

    :catch_27
    const-string p0, "allowShareClipboardDataToOwner : NullPointerException occurred"

    .line 3412
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :catch_2d
    const-string p0, "allowShareClipboardDataToOwner : SecurityException occurred"

    .line 3409
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :goto_32
    return v2
.end method

.method public final isStubApp(Ljava/lang/String;I)Z
    .registers 4

    .line 4528
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->requiredApps:Ljava/util/List;

    if-eqz v0, :cond_1c

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4529
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->getLaunchableApps(I)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 4530
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_18

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :catch_18
    move-exception p0

    .line 4534
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public final isTimeOutComputable(I)Z
    .registers 2

    if-lez p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public isWorkTabSupported()Z
    .registers 2

    .line 4621
    sget-object p0, Lcom/android/server/pm/PersonaManagerService;->workTabSupportLauncherUids:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public knoxAnalyticsAccountsChanged(ILjava/lang/String;Z)V
    .registers 6

    .line 2527
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/16 v1, 0x46

    .line 2530
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2531
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2532
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 2533
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2534
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public launchSeamLessSf()V
    .registers 3

    .line 4367
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->isQuickSwitchToSecureFolderSupported()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 4368
    :cond_7
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4369
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final loadDefaultIconRes(Ljava/lang/String;Ljava/lang/String;I)[B
    .registers 6

    const/4 v0, 0x0

    .line 2858
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p3

    .line 2859
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_60

    .line 2862
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2863
    instance-of p2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz p2, :cond_32

    .line 2864
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_38

    .line 2866
    :cond_32
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 2868
    :goto_38
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2869
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p3, 0x64

    invoke-virtual {p0, p2, p3, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2870
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_48
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_48} :catch_49

    return-object p0

    :catch_49
    move-exception p0

    .line 2873
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to load icon from default resource: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    return-object v0
.end method

.method public final logUserRemoval(ILjava/lang/String;)V
    .registers 5

    .line 4471
    :try_start_0
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    monitor-enter p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_12

    .line 4472
    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    const-string v1, "USER-REMOVED"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4473
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->writePersonaCacheLocked()V

    .line 4474
    monitor-exit p1

    goto :goto_16

    :catchall_f
    move-exception p0

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    :try_start_11
    throw p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_12} :catch_12

    :catch_12
    move-exception p0

    .line 4476
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_16
    return-void
.end method

.method public final migrateKnoxFingerprintPlus(I)V
    .registers 6

    const-string/jumbo v0, "knox_finger_print_plus"

    .line 1685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migrate fingerprint plus settings value. knoxId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PersonaManagerService:FOTA"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    :try_start_19
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1689
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2d} :catch_2e

    goto :goto_46

    :catch_2e
    move-exception p0

    .line 1691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Migration failed! knoxId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_46
    return-void
.end method

.method public final migrateKnoxFingerprintPlusValueIfNeeded()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1642
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    .line 1644
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1645
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_20

    .line 1646
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1647
    :cond_20
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_a

    .line 1651
    :cond_27
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->isMigrationNeededForKnoxFingerprintPlus(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1652
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->migrateKnoxFingerprintPlus(I)V

    goto :goto_a

    :cond_31
    return-void
.end method

.method public final migrateKnoxLockTimeout(I)V
    .registers 6

    const-string/jumbo v0, "knox_screen_off_timeout"

    .line 1630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migrate screen timeout settings value. knoxId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PersonaManagerService:FOTA"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    :try_start_19
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1634
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2d} :catch_2e

    goto :goto_46

    :catch_2e
    move-exception p0

    .line 1636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Migration failed! knoxId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_46
    return-void
.end method

.method public final migrateKnoxLockTimeoutValueIfNeeded()V
    .registers 4

    const/4 v0, 0x0

    .line 1589
    invoke-virtual {p0, v0, v0}, Lcom/android/server/pm/PersonaManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    .line 1590
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1591
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 1592
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_9

    .line 1596
    :cond_1e
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->isMigrationNeededForKnoxLockTimeout(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1597
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->migrateKnoxLockTimeout(I)V

    goto :goto_9

    :cond_28
    return-void
.end method

.method public migrateNewPo()V
    .registers 3

    .line 4509
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4510
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyPersona(JI)V
    .registers 12

    .line 2490
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    const/4 v1, -0x1

    const-string/jumbo v2, "knox_screen_off_timeout"

    if-eqz v0, :cond_15

    .line 2491
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1, p3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    goto :goto_1f

    .line 2494
    :cond_15
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    :goto_1f
    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v4, :cond_2a

    move v4, v5

    goto :goto_2b

    :cond_2a
    move v4, v6

    :goto_2b
    if-eqz v4, :cond_31

    cmp-long v7, v0, p1

    if-gtz v7, :cond_4b

    :cond_31
    if-eqz v4, :cond_37

    cmp-long v7, v0, v2

    if-lez v7, :cond_4b

    :cond_37
    if-eqz v4, :cond_45

    cmp-long v2, v0, v2

    if-lez v2, :cond_45

    cmp-long v2, v0, p1

    if-gtz v2, :cond_45

    .line 2498
    iget-boolean v2, p0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    if-nez v2, :cond_4b

    :cond_45
    if-nez v4, :cond_5b

    iget-boolean v2, p0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    if-eqz v2, :cond_5b

    .line 2503
    :cond_4b
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v2, p3}, Lcom/android/server/knox/KnoxAnalyticsContainer;->requestSendSnapshotLog(I)V

    if-eqz v4, :cond_59

    cmp-long p1, v0, p1

    if-lez p1, :cond_59

    .line 2506
    iput-boolean v5, p0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    goto :goto_5b

    .line 2509
    :cond_59
    iput-boolean v6, p0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    :cond_5b
    :goto_5b
    return-void
.end method

.method public final notifyStatusToKspAgent(Landroid/content/Intent;)V
    .registers 4

    .line 3945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyStatusToKspAgent() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3947
    :try_start_17
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v1, "com.samsung.android.knox.permission.KNOX_APP_SEPARATION"

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception p0

    .line 3950
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_25
    return-void
.end method

.method public onDreamingStarted()V
    .registers 4

    .line 2028
    iget-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceInteractive:Z

    if-eqz v0, :cond_1a

    const-string v0, "PersonaManagerService"

    const-string/jumbo v1, "onDreamingStarted"

    .line 2029
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2031
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1a
    return-void
.end method

.method public onFinishedGoingToSleep(IZ)V
    .registers 3

    const/4 p1, 0x0

    .line 2024
    iput-boolean p1, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceInteractive:Z

    return-void
.end method

.method public onNewUserCreated(Landroid/content/pm/UserInfo;)V
    .registers 3

    .line 776
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onNewUserCreated: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PersonaManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p0

    if-nez p0, :cond_20

    return-void

    .line 780
    :cond_20
    const-class p0, Lcom/android/server/pm/KnoxMUMContainerPolicyInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/KnoxMUMContainerPolicyInternal;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 781
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KnoxMUMContainerPolicyInternal;->onNewUserCreated(I)V

    return-void
.end method

.method public onUserRemoved(I)V
    .registers 7

    .line 4430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4432
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy.MM.dd.HH.mm.ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4433
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-ne p1, v3, :cond_28

    :try_start_25
    const-string v0, "fallbackToSingleUserLP"

    goto :goto_40

    .line 4438
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_40

    const/4 v4, 0x0

    .line 4440
    iput-object v4, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 4441
    iput-object v4, v3, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 4442
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception v3

    .line 4446
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_40
    :goto_40
    const/16 v3, 0x14

    .line 4450
    :try_start_42
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_46} :catch_47

    goto :goto_4b

    :catch_47
    move-exception v3

    .line 4452
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 4455
    :goto_4b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "====================\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserRemoved \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PersonaManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4459
    :try_start_86
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4460
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 4461
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4462
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_9b} :catch_9c

    goto :goto_a0

    :catch_9c
    move-exception p0

    .line 4464
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a0
    return-void
.end method

.method public postActiveUserChange(ILandroid/content/ComponentName;ZIIZZZ)V
    .registers 9

    .line 1994
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {p0, p1, p2, p7}, Lcom/android/server/knox/KnoxAnalyticsContainer;->postActiveUserChange(ILandroid/content/ComponentName;Z)V

    return-void
.end method

.method public postPwdChangeNotificationForDeviceOwner(I)V
    .registers 5

    .line 4514
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 4515
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final printAllApprovedInstallers(Ljava/io/PrintWriter;)V
    .registers 9

    .line 4540
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4542
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v2

    .line 4543
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4544
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "approved installers user : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4545
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/server/knox/ContainerDependencyWrapper;->getOwnerUidFromEdm(Landroid/content/Context;I)I

    move-result v4

    const-string/jumbo v5, "mum_container_policy"

    .line 4546
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v5

    .line 4547
    invoke-static {v4, v3}, Lcom/android/server/knox/ContainerDependencyWrapper;->getContextInfo(II)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    invoke-interface {v5, v3}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getPackagesFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v3

    .line 4548
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_52
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4549
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_72} :catch_75
    .catchall {:try_start_4 .. :try_end_72} :catchall_73

    goto :goto_52

    :catchall_73
    move-exception p0

    goto :goto_7d

    :catch_75
    move-exception p0

    .line 4553
    :try_start_76
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_73

    .line 4555
    :cond_79
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_7d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4556
    throw p0
.end method

.method public final processAppSeparationCreation()V
    .registers 8

    const-string v0, "PersonaManagerService"

    const-string/jumbo v1, "processAppSeparationCreation"

    .line 3955
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3956
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v1

    .line 3957
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3958
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v3

    if-nez v1, :cond_1e

    :try_start_17
    const-string/jumbo v1, "processAppSeparationCreation no app separation data found in db"

    .line 3961
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    const/4 v1, 0x0

    .line 3964
    invoke-virtual {p0, v1, v1, v1}, Lcom/android/server/pm/PersonaManagerService;->getUpdatedPackageInfo(Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/List;

    move-result-object v1

    .line 3966
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 3967
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationApp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodApp(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_27

    if-nez v3, :cond_51

    .line 3969
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3970
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/PersonaManagerService;->disableAppInOwner(Ljava/lang/String;Z)V

    goto :goto_27

    :cond_51
    const/4 v5, 0x0

    .line 3972
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v5

    .line 3973
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3, v6}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v6

    if-eqz v5, :cond_27

    if-nez v6, :cond_27

    .line 3975
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationInstallationInternal(Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_67} :catch_68

    goto :goto_27

    :catch_68
    move-exception v1

    .line 3981
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in processAppSeparationCreation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3982
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_80
    if-nez v3, :cond_eb

    .line 3984
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_eb

    .line 3985
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackages()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    .line 3986
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3987
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_95
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3988
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processAppSeparationCreation: packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 3990
    :cond_b7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.action.PROVISION_KNOX_PROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 3991
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.appseparation"

    const-string v3, "com.samsung.android.appseparation.receiver.ProvisionReceiver"

    .line 3992
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "packageNames"

    .line 3993
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3994
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3996
    :try_start_d7
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "APP_SEPARATION_APP_LIST"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->logEventActivationForAppSep(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_e6} :catch_e7

    goto :goto_eb

    :catch_e7
    move-exception p0

    .line 3998
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_eb
    :goto_eb
    return-void
.end method

.method public processAppSeparationInstallation(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_28

    .line 4206
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v1

    if-nez v1, :cond_28

    .line 4207
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 4208
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 4209
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v2, 0x4a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4210
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4211
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4212
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->disableAppInOwner(Ljava/lang/String;Z)V

    goto :goto_4e

    .line 4214
    :cond_28
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v2, 0x49

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4215
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4216
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4217
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processAppSeparationInstallation packageName - "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4e
    return v0
.end method

.method public processAppSeparationInstallationInternal(Ljava/lang/String;)I
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4255
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    .line 4256
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->checkNullParameter([Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "PersonaManagerService"

    if-eqz v1, :cond_1c

    const-string/jumbo p0, "processAppSeparationInstallationInternal null"

    .line 4257
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1c
    const-string v1, "APP_SEPARATION_OUTSIDE"

    .line 4261
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 4262
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationAppsList(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    .line 4263
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4264
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v0

    .line 4265
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processAppSeparationInstallationInternal is called for isOutside - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", packageName - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4267
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v2

    .line 4268
    invoke-virtual {p0, v6}, Lcom/android/server/pm/PersonaManagerService;->checkNullParameter([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_de

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_62

    goto/16 :goto_de

    :cond_62
    const/16 v2, -0x6e

    .line 4275
    :try_start_64
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processAppSeparationInstallationInternal Non system app - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", Is in allowlist ? - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",  wlAppsSet size - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4276
    invoke-virtual {p0, v1, v5, p1}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationInstallationRequired(ZLjava/util/HashSet;Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 4277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processAppSeparationInstallationInternal Disable package in Owner space and Install package in PO - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4278
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PersonaManagerService;->installPackageForAppSeparation(ILandroid/content/pm/PackageInfo;)I

    move-result p0

    return p0

    .line 4281
    :cond_b7
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledInAppSeparation(ILandroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 4283
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PersonaManagerService;->deletePackageForAppSeparation(ILandroid/content/pm/PackageInfo;)Z

    move-result p0
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_c1} :catch_c5

    if-nez p0, :cond_c4

    return v2

    :cond_c4
    return v3

    :catch_c5
    move-exception p0

    .line 4289
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception in processAppSeparationAllowListInternal "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4290
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2

    :cond_de
    :goto_de
    const-string/jumbo p0, "processAppSeparationInstallationInternal Return false due to null or IndependentApp"

    .line 4269
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public final readPersonaCacheLocked()V
    .registers 11

    const-string v0, "PersonaManagerService"

    const-string/jumbo v1, "readPersonaCacheLocked is called..."

    .line 732
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 736
    :try_start_10
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_99
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_14} :catch_8c
    .catchall {:try_start_10 .. :try_end_14} :catchall_8a

    .line 737
    :try_start_14
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 738
    invoke-interface {v4, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 740
    :goto_1b
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v2, v6, :cond_26

    if-eq v2, v5, :cond_26

    goto :goto_1b

    :cond_26
    if-eq v2, v6, :cond_36

    .line 746
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    const-string v2, "Unable to read persona cache"

    .line 747
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_30} :catch_87
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_30} :catch_84
    .catchall {:try_start_14 .. :try_end_30} :catchall_81

    if-eqz v3, :cond_35

    .line 768
    :try_start_32
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_35

    :catch_35
    :cond_35
    return-void

    .line 751
    :cond_36
    :goto_36
    :try_start_36
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v5, :cond_7b

    if-ne v2, v6, :cond_36

    .line 752
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v7, "cache"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const/4 v2, 0x0

    .line 753
    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    .line 754
    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 755
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PersonaCache entry - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_7a} :catch_87
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_7a} :catch_84
    .catchall {:try_start_36 .. :try_end_7a} :catchall_81

    goto :goto_36

    :cond_7b
    if-eqz v3, :cond_a3

    .line 768
    :try_start_7d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_a3

    goto :goto_a3

    :catchall_81
    move-exception p0

    move-object v2, v3

    goto :goto_a4

    :catch_84
    move-exception v0

    move-object v2, v3

    goto :goto_8d

    :catch_87
    move-exception v0

    move-object v2, v3

    goto :goto_9a

    :catchall_8a
    move-exception p0

    goto :goto_a4

    :catch_8c
    move-exception v0

    .line 763
    :goto_8d
    :try_start_8d
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    .line 764
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_93
    .catchall {:try_start_8d .. :try_end_93} :catchall_8a

    if-eqz v2, :cond_a3

    .line 768
    :goto_95
    :try_start_95
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_a3

    goto :goto_a3

    :catch_99
    move-exception v0

    .line 760
    :goto_9a
    :try_start_9a
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    .line 761
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a0
    .catchall {:try_start_9a .. :try_end_a0} :catchall_8a

    if-eqz v2, :cond_a3

    goto :goto_95

    :catch_a3
    :cond_a3
    :goto_a3
    return-void

    :goto_a4
    if-eqz v2, :cond_a9

    .line 768
    :try_start_a6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_a9

    .line 772
    :catch_a9
    :cond_a9
    throw p0
.end method

.method public final recoverContainerInfo()V
    .registers 3

    :try_start_0
    const-string/jumbo v0, "persist.sys.knox.userinfo"

    .line 1346
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1347
    invoke-virtual {p0, v1, v1}, Lcom/android/server/pm/PersonaManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_31

    if-eqz v0, :cond_1c

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_1c
    const-string v0, "PersonaManagerService"

    const-string v1, "UserInfo currupted, set again"

    .line 1348
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    if-eqz p0, :cond_31

    invoke-static {p0}, Lcom/android/server/knox/ContainerDependencyWrapper;->setContainerInfo(Lcom/android/server/pm/UserManagerService;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception p0

    .line 1352
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_31
    :goto_31
    return-void
.end method

.method public refreshLockTimer(I)V
    .registers 4

    const-string/jumbo v0, "refreshLockTimer"

    .line 2220
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RefreshLockTimer for user : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTimeoutLocked(I)I

    move-result v0

    int-to-long v0, v0

    .line 2224
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getPowerManagerInternal()Landroid/os/PowerManagerInternal;

    move-result-object p0

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/knox/ContainerDependencyWrapper;->setMaximumScreenOffTimeoutFromKnox(Landroid/os/PowerManagerInternal;IJ)V

    return-void
.end method

.method public final registerContentObserver()V
    .registers 5

    const-string v0, "PersonaManagerService"

    const-string/jumbo v1, "registerContentObserver - 0"

    .line 1932
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "knox_screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->analyticsObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final registerPackageReceiver()V
    .registers 9

    .line 1059
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_33

    .line 1060
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 1061
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1062
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1063
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1064
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1065
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_33
    return-void
.end method

.method public registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    .registers 3

    const-string/jumbo v0, "registerSystemPersonaObserver"

    .line 724
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 725
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mLegacyStateMonitor:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    if-eqz p0, :cond_f

    .line 726
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->register(Landroid/content/pm/ISystemPersonaObserver;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final removeDisallowedSFpackages()V
    .registers 4

    const-string v0, "PersonaManagerService:FOTA"

    const-string/jumbo v1, "removeDisallowedSFpackages() called."

    .line 1549
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    if-nez v1, :cond_15

    const-string/jumbo p0, "removeDisallowedSFpackages() - user manager is null"

    .line 1552
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    const/4 v0, 0x0

    .line 1556
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 1557
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1558
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_1e

    .line 1562
    :cond_31
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1563
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->removeDisallowedSecureFolderPackages(Landroid/content/pm/UserInfo;)V

    goto :goto_1e

    :cond_3b
    return-void
.end method

.method public final removeDisallowedSecureFolderPackages(Landroid/content/pm/UserInfo;)V
    .registers 8

    const-string v0, "PersonaManagerService:FOTA"

    .line 1570
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeDisallowedSecureFolderPackages() user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10701b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1573
    new-instance v2, Landroid/util/ArraySet;

    const-string v3, "AllowPackage"

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1574
    new-instance v3, Landroid/util/ArraySet;

    const-string v4, "DefaultPackage"

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1575
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1576
    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1577
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1578
    sget-boolean v3, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz v3, :cond_75

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dsallowedPackage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    :cond_75
    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3, v2}, Lcom/android/server/pm/PersonaManagerService;->deletePkg(ILjava/lang/String;)Z
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7a} :catch_7b

    goto :goto_51

    :catch_7b
    move-exception p0

    .line 1582
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception occurred in removeDisallowedSecureFolderPackages()! "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_94
    return-void
.end method

.method public revokeSUWAgreements(Landroid/content/Context;)V
    .registers 2

    .line 2454
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/android/server/knox/ContainerDependencyWrapper;->revokeSUWAgreements(Landroid/os/UserManager;Landroid/content/Context;)V

    return-void
.end method

.method public final sendMessageAndLockTimeout(II)V
    .registers 6

    .line 1319
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    .line 1320
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_70

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/UserInfo;

    .line 1321
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    .line 1322
    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    .line 1323
    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_c

    .line 1327
    :cond_33
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1328
    iget v0, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTimeoutLocked(I)I

    move-result v0

    if-eqz v0, :cond_52

    const/4 v1, -0x2

    if-ne v0, v1, :cond_c

    .line 1333
    :cond_52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1334
    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1335
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p2}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v1

    const-string/jumbo p2, "knox.container.proxy.EVENT_LOCK_TIMEOUT"

    .line 1336
    invoke-static {p2, v0}, Lcom/samsung/android/knox/ContainerProxy;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1337
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p2, v1, v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    goto :goto_c

    :cond_70
    return-void
.end method

.method public sendProxyMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    const-string/jumbo v0, "sendProxyMessage"

    .line 2540
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendProxyMessage() name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bundle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1f

    const-string/jumbo v1, "null"

    goto :goto_23

    .line 2542
    :cond_1f
    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaManagerService"

    .line 2541
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaServiceProxy:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PersonaServiceProxy;->sendProxyMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public sendRequestKeyStatus(I)V
    .registers 6

    .line 2982
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    :try_start_6
    const-string v2, "com.sec.knox.containeragent.klms.licensekey.check"

    .line 2985
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "container_id"

    .line 2987
    invoke-virtual {v3, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.samsung.klmsagent"

    .line 2988
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2989
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_22

    .line 2991
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return-void

    :catchall_22
    move-exception p1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 2992
    throw p1
.end method

.method public setAppSeparationDefaultPolicy(I)V
    .registers 2

    .line 3523
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->setOwnership(I)V

    .line 3524
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->applyDefaultPolicyForAppSeparation(I)V

    return-void
.end method

.method public setAttributes(II)Z
    .registers 4

    const-string/jumbo v0, "setAttributes"

    .line 2571
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2572
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_29

    .line 2574
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "user not found "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2578
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/server/knox/ContainerDependencyWrapper;->setAttributes(Lcom/android/server/pm/UserManagerInternal;II)Z

    move-result p0

    return p0
.end method

.method public final setComponentEnabledSetting(Ljava/lang/String;IILjava/lang/String;)V
    .registers 6

    .line 3808
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3810
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, v0, p2, p1, p3}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p0

    .line 3812
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_12
    return-void
.end method

.method public final setDpmScreenTimeoutFlag(I)V
    .registers 9

    .line 2463
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2465
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_f

    .line 2466
    invoke-virtual {v1, v0, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v0

    goto :goto_11

    :cond_f
    const-wide/16 v0, 0x0

    :goto_11
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    const v3, 0x7fffffff

    if-lez v2, :cond_1d

    move v0, v3

    goto :goto_1e

    :cond_1d
    long-to-int v0, v0

    :goto_1e
    const/4 v1, 0x1

    if-lez v0, :cond_25

    if-ge v0, v3, :cond_25

    move v2, v1

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    .line 2472
    :goto_26
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    const/4 v4, -0x1

    const-string/jumbo v5, "knox_screen_off_timeout"

    if-eqz v3, :cond_3b

    .line 2473
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v5, v4, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    goto :goto_45

    .line 2476
    :cond_3b
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v5, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    :goto_45
    int-to-long v3, p1

    if-eqz v2, :cond_57

    int-to-long v5, v0

    cmp-long p1, v3, v5

    if-lez p1, :cond_57

    .line 2480
    iput-boolean v1, p0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    const-string p0, "PersonaManagerService:KnoxAnalytics"

    const-string/jumbo p1, "setting mKALockscreenTimeoutAdminFlag true (at boot)"

    .line 2481
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    return-void
.end method

.method public setDualDARProfile(Landroid/os/Bundle;)I
    .registers 2

    .line 3341
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->setDualDARProfile(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public setFocusedLauncherId(I)V
    .registers 5

    const-string/jumbo v0, "setFocusedLauncherId"

    .line 1702
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1703
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLauncherLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1704
    :try_start_9
    iput p1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedLauncherId:I

    const-string p1, "PersonaManagerService"

    .line 1705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFocusedUser: Focus changed - current uesr id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedLauncherId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public setFocusedUser(I)V
    .registers 6

    .line 3211
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3212
    :try_start_3
    sget-boolean v1, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz v1, :cond_1f

    const-string v1, "PersonaManagerService"

    .line 3213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current focused persona service handled id set to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3214
    :cond_1f
    iput p1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    .line 3215
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public final setOwnership(I)V
    .registers 2

    .line 3528
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->setOwnership(Landroid/content/Context;I)V

    return-void
.end method

.method public setPackageSettingInstalled(Ljava/lang/String;ZI)Z
    .registers 5

    const-string/jumbo v0, "setPackageSettingInstalled"

    .line 2213
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2215
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/knox/ContainerDependencyWrapper;->setPackageSettingInstalled(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public setPersonalModeName(ILjava/lang/String;)Z
    .registers 5

    const-string v0, "PersonaManagerService:FOTA"

    .line 2957
    :try_start_2
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/PersonaPolicyManagerService;->setCustomNamePersonalMode(ILjava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    const-string/jumbo p0, "setPersonalModeName unable to set PersonalModeName"

    .line 2959
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    :goto_e
    sget-boolean p0, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    const/4 p1, 0x0

    if-eqz p0, :cond_30

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPersonalModeName name - "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return p1
.end method

.method public setProfileName(ILjava/lang/String;)Z
    .registers 3

    .line 2947
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/PersonaPolicyManagerService;->setCustomNamePersona(ILjava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    const-string p0, "PersonaManagerService:FOTA"

    const-string/jumbo p1, "setProfileName unable to setProfileName"

    .line 2949
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    const/4 p0, 0x0

    return p0
.end method

.method public setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 3373
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/PersonaPolicyManagerService;->setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setSecureFolderPolicy(Ljava/lang/String;Ljava/util/List;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3382
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    move-result v1

    if-eqz v1, :cond_1a

    const-string p0, "PersonaManagerService"

    const-string/jumbo p1, "setSecureFolderPolicy failed."

    .line 3383
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_19} :catch_21

    return v0

    .line 3391
    :cond_1a
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/PersonaPolicyManagerService;->setSecureFolderPolicy(Ljava/lang/String;Ljava/util/List;I)Z

    move-result p0

    return p0

    :catch_21
    move-exception p0

    .line 3387
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public startActivityThroughPersona(Landroid/content/Intent;)Z
    .registers 4

    const-string/jumbo v0, "startActivityThroughPersona"

    .line 1957
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startActivityThroughPersona Intent ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-eqz p0, :cond_2e

    if-nez p1, :cond_25

    goto :goto_2e

    .line 1961
    :cond_25
    :try_start_25
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_28} :catch_2a

    const/4 p0, 0x1

    return p0

    :catch_2a
    move-exception p0

    .line 1963
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_2e
    :goto_2e
    return v0
.end method

.method public startCountrySelectionActivity(Z)V
    .registers 6

    .line 4405
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    const/high16 v2, 0x10000000

    if-nez p1, :cond_2a

    .line 4409
    :try_start_a
    new-instance p1, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.secsetupwizard.NET_TSS_SETUP"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4410
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4411
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_19
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a .. :try_end_19} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_3c
    .catchall {:try_start_a .. :try_end_19} :catchall_3a

    goto :goto_40

    .line 4413
    :catch_1a
    :try_start_1a
    new-instance p1, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.secsetupwizard.TSS_SETUP"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4414
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4415
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_40

    .line 4418
    :cond_2a
    new-instance p1, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.secsetupwizard.COUNTRY_SELECTION"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4419
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4420
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_39} :catch_3c
    .catchall {:try_start_1a .. :try_end_39} :catchall_3a

    goto :goto_40

    :catchall_3a
    move-exception p1

    goto :goto_46

    :catch_3c
    move-exception p1

    .line 4423
    :try_start_3d
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_3a

    .line 4425
    :goto_40
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return-void

    :goto_46
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 4426
    throw p1
.end method

.method public startTermsActivity()V
    .registers 5

    .line 4392
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 4394
    :try_start_6
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.secsetupwizard.TERMS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    .line 4395
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4396
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_1a
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    goto :goto_1e

    :catchall_18
    move-exception v2

    goto :goto_24

    :catch_1a
    move-exception v2

    .line 4398
    :try_start_1b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_18

    .line 4400
    :goto_1e
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return-void

    :goto_24
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 4401
    throw v2
.end method

.method public systemReady()V
    .registers 16

    const-string/jumbo v0, "systemReady"

    .line 914
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string v1, "PersonaManagerService"

    .line 917
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 919
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 920
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceInteractive:Z

    .line 921
    new-instance v0, Lcom/android/server/pm/PersonaServiceProxy;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/pm/PersonaServiceProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaServiceProxy:Lcom/android/server/pm/PersonaServiceProxy;

    .line 923
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->isQuickSwitchToSecureFolderSupported()Z

    move-result v0

    if-eqz v0, :cond_47

    const-string v0, "Quick Switch is supported"

    .line 924
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    new-instance v0, Lcom/android/server/knox/SeamLessSwitchHandler;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, v2, v3, p0}, Lcom/android/server/knox/SeamLessSwitchHandler;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mSeamLessSwitchHandler:Lcom/android/server/knox/SeamLessSwitchHandler;

    .line 928
    :cond_47
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 929
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 931
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 933
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 934
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 935
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/pm/PersonaManagerService$BootReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PersonaManagerService$BootReceiver;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 937
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 938
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 939
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_STOPPED"

    .line 940
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_UNLOCKED"

    .line 941
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_PRESENT"

    .line 942
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 943
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.app.action.DEVICE_OWNER_CHANGED"

    .line 944
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 945
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 949
    :try_start_b0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    invoke-interface {v0, v3, v1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_b0 .. :try_end_b9} :catch_ba

    goto :goto_be

    :catch_ba
    move-exception v0

    .line 952
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 955
    :goto_be
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    .line 956
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 957
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mSetupWizardCompleteReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 959
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    .line 960
    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_PASSWORD_UPDATED"

    .line 961
    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    .line 962
    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    .line 963
    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 964
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mFingerPrintReceiver:Landroid/content/BroadcastReceiver;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 967
    invoke-virtual {p0, v0, v0}, Lcom/android/server/pm/PersonaManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v3

    move v4, v0

    move v5, v4

    .line 968
    :goto_fe
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_120

    .line 969
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 970
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Lcom/android/server/pm/PersonaManagerService$LocalService;->isKnoxId(I)Z

    move-result v7

    if-eqz v7, :cond_11d

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v6

    if-nez v6, :cond_11d

    const/4 v5, 0x1

    :cond_11d
    add-int/lit8 v4, v4, 0x1

    goto :goto_fe

    .line 974
    :cond_120
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v3

    if-nez v3, :cond_128

    if-eqz v5, :cond_12b

    .line 975
    :cond_128
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->registerPackageReceiver()V

    .line 977
    :cond_12b
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 978
    invoke-virtual {v9, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 979
    invoke-virtual {v9, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    .line 980
    invoke-virtual {v9, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 981
    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_INFO_CHANGED"

    .line 982
    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    .line 983
    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "samsung.knox.intent.action.rcp.MOVEMENT"

    .line 984
    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "samsung.knox.intent.action.CHANGE_LOCK_TYPE"

    .line 985
    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 986
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mAnalyticsReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 988
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->registerContentObserver()V

    const-string v2, "com.samsung.android.knox.containeragent"

    .line 990
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->clearHomeCrossProfileFilter(Ljava/lang/String;)Z

    .line 993
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_187

    .line 994
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 995
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v2

    if-eqz v2, :cond_187

    const-string v2, "Device is super locked - start lock screen"

    .line 996
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_187
    :try_start_187
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mCorePackageUid:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.knox.securefolder"

    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_187 .. :try_end_19c} :catch_19d

    goto :goto_1a2

    :catch_19d
    const-string v2, "Cannot get UID for securefolder"

    .line 1003
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :goto_1a2
    :try_start_1a2
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mCorePackageUid:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.android.knox.containercore"

    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a2 .. :try_end_1b7} :catch_1b8

    goto :goto_1bd

    :catch_1b8
    const-string v2, "Cannot get UID for KnoxCore package"

    .line 1009
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :goto_1bd
    :try_start_1bd
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mCorePackageUid:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.android.appseparation"

    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1d2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1bd .. :try_end_1d2} :catch_1d3

    goto :goto_1d8

    :catch_1d3
    const-string v0, "Cannot get UID for App separation"

    .line 1015
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :goto_1d8
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->migrateNewPo()V

    return-void
.end method

.method public final trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1375
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "trimHiddenVersion("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PersonaManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x5f

    .line 1377
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2e

    const/4 v0, 0x0

    .line 1378
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2e
    return-object p1
.end method

.method public unsetTwoFactorValueIfNeeded(I)V
    .registers 3

    .line 3346
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0, p0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->unsetTwoFactorValueIfNeeded(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    return-void
.end method

.method public updatePersonaCache(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const-string/jumbo v0, "updatePersonaCache"

    .line 2165
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_7b

    .line 2169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7b

    .line 2170
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_12
    const-string v2, "fwversion"

    .line 2171
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_76

    const-string v2, "fotaversion"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_76

    .line 2175
    :cond_23
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3b

    if-nez p2, :cond_3b

    const-string v0, "PersonaManagerService"

    const-string v2, "Remove cache entry request"

    .line 2176
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    .line 2182
    :cond_3b
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    if-eqz p2, :cond_52

    const-string v0, "PersonaManagerService"

    const-string v2, "Add cache entry request"

    .line 2183
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    .line 2189
    :cond_52
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    if-eqz p2, :cond_6f

    const-string v0, "PersonaManagerService"

    const-string/jumbo v2, "update cache entry request"

    .line 2190
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2192
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    :cond_6f
    if-eqz v0, :cond_74

    .line 2197
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->writePersonaCacheLocked()V

    .line 2199
    :cond_74
    monitor-exit v1

    goto :goto_7b

    .line 2172
    :cond_76
    :goto_76
    monitor-exit v1

    return v0

    :catchall_78
    move-exception p0

    .line 2199
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_12 .. :try_end_7a} :catchall_78

    throw p0

    :cond_7b
    :goto_7b
    const-string p0, "PersonaManagerService"

    .line 2201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updatePersonaCache status - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public updateProfileActivityTimeFromKnox(IJ)V
    .registers 5

    const-string/jumbo v0, "updateProfileActivityTimeFromKnox"

    .line 3350
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3351
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getPowerManagerInternal()Landroid/os/PowerManagerInternal;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/knox/ContainerDependencyWrapper;->updateProfileActivityTimeFromKnox(Landroid/os/PowerManagerInternal;IJ)V

    return-void
.end method

.method public final writePersonaCacheLocked()V
    .registers 11

    const-string v0, "cache"

    const-string/jumbo v1, "personacache"

    const-string v2, "PersonaManagerService"

    const-string/jumbo v3, "writeUsersWithPersona() is called..."

    .line 787
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    new-instance v3, Landroid/util/AtomicFile;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheFile:Ljava/io/File;

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v4, 0x0

    .line 790
    :try_start_15
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_19} :catch_79

    .line 791
    :try_start_19
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 794
    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v8, "utf-8"

    .line 795
    invoke-interface {v7, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 796
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    .line 797
    invoke-interface {v7, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 799
    invoke-interface {v7, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 801
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_42
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 802
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 803
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v9, "volatile."

    .line 806
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_64

    goto :goto_42

    .line 808
    :cond_64
    invoke-interface {v7, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 809
    invoke-interface {v7, v4, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 810
    invoke-interface {v7, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_42

    .line 813
    :cond_6e
    invoke-interface {v7, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 815
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 816
    invoke-virtual {v3, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_77} :catch_78

    goto :goto_82

    :catch_78
    move-object v4, v5

    .line 818
    :catch_79
    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string/jumbo p0, "writePersonaCacheLocked() Error writing persona cache list"

    .line 819
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_82
    return-void
.end method
