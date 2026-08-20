.class public Lcom/android/server/pm/UserManagerService;
.super Landroid/os/IUserManager$Stub;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserManagerService$LocalService;,
        Lcom/android/server/pm/UserManagerService$MainHandler;,
        Lcom/android/server/pm/UserManagerService$Shell;,
        Lcom/android/server/pm/UserManagerService$LifeCycle;,
        Lcom/android/server/pm/UserManagerService$WatchedUserStates;,
        Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;,
        Lcom/android/server/pm/UserManagerService$UserData;
    }
.end annotation


# static fields
.field public static final ACTION_NOTIFY_KPU:Ljava/lang/String; = "com.samsung.android.knox.intent.action.NOTIFY_KPU_INTERNAL"

.field public static final ACTION_REQUEST_AT_COMMAND:Ljava/lang/String; = "com.samsung.intent.action.BCS_REQUEST"

.field public static final ACTION_RESPONSE_AT_COMMAND:Ljava/lang/String; = "com.samsung.intent.action.BCS_RESPONSE"

.field public static final ALLOWED_FLAGS_FOR_CREATE_USERS_PERMISSION:I = 0x172c

.field public static final ATTR_ATTRIBUTES:Ljava/lang/String; = "attributes"

.field public static final ATTR_CONVERTED_FROM_PRE_CREATED:Ljava/lang/String; = "convertedFromPreCreated"

.field public static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field public static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field public static final ATTR_GUEST_TO_REMOVE:Ljava/lang/String; = "guestToRemove"

.field public static final ATTR_ICON_PATH:Ljava/lang/String; = "icon"

.field public static final ATTR_ID:Ljava/lang/String; = "id"

.field public static final ATTR_KEY:Ljava/lang/String; = "key"

.field public static final ATTR_LAST_LOGGED_IN_FINGERPRINT:Ljava/lang/String; = "lastLoggedInFingerprint"

.field public static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field public static final ATTR_MULTIPLE:Ljava/lang/String; = "m"

.field public static final ATTR_NEXT_SERIAL_NO:Ljava/lang/String; = "nextSerialNumber"

.field public static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field public static final ATTR_PRE_CREATED:Ljava/lang/String; = "preCreated"

.field public static final ATTR_PROFILE_BADGE:Ljava/lang/String; = "profileBadge"

.field public static final ATTR_PROFILE_GROUP_ID:Ljava/lang/String; = "profileGroupId"

.field public static final ATTR_RESTRICTED_PROFILE_PARENT_ID:Ljava/lang/String; = "restrictedProfileParentId"

.field public static final ATTR_SEED_ACCOUNT_NAME:Ljava/lang/String; = "seedAccountName"

.field public static final ATTR_SEED_ACCOUNT_TYPE:Ljava/lang/String; = "seedAccountType"

.field public static final ATTR_SERIAL_NO:Ljava/lang/String; = "serialNumber"

.field public static final ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final ATTR_TYPE_BOOLEAN:Ljava/lang/String; = "b"

.field public static final ATTR_TYPE_BUNDLE:Ljava/lang/String; = "B"

.field public static final ATTR_TYPE_BUNDLE_ARRAY:Ljava/lang/String; = "BA"

.field public static final ATTR_TYPE_INTEGER:Ljava/lang/String; = "i"

.field public static final ATTR_TYPE_STRING:Ljava/lang/String; = "s"

.field public static final ATTR_TYPE_STRING_ARRAY:Ljava/lang/String; = "sa"

.field public static final ATTR_USER_TYPE_VERSION:Ljava/lang/String; = "userTypeConfigVersion"

.field public static final ATTR_USER_VERSION:Ljava/lang/String; = "version"

.field public static final ATTR_VALUE_TYPE:Ljava/lang/String; = "type"

.field public static final AT_COMMAND_1_3:Ljava/lang/String; = "AT+SVCIFPGM=1,3"

.field public static final DBG:Z = false

.field public static final DBG_ALLOCATION:Z = false

.field public static final DBG_WITH_STACKTRACE:Z = false

.field public static final EPOCH_PLUS_30_YEARS:J = 0xdc46c32800L

.field public static final LOG_TAG:Ljava/lang/String; = "UserManagerService"

.field public static final MAX_RECENTLY_REMOVED_IDS_SIZE:I = 0x64
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MAX_USER_ID:I = 0x53e2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MIN_USER_ID:I = 0xa
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final RELEASE_DELETED_USER_ID:Z = false

.field public static final RESTRICTIONS_FILE_PREFIX:Ljava/lang/String; = "res_"

.field public static final TAG_ACCOUNT:Ljava/lang/String; = "account"

.field public static final TAG_DEVICE_OWNER_USER_ID:Ljava/lang/String; = "deviceOwnerUserId"

.field public static final TAG_DEVICE_POLICY_GLOBAL_RESTRICTIONS:Ljava/lang/String; = "device_policy_global_restrictions"

.field public static final TAG_DEVICE_POLICY_LOCAL_RESTRICTIONS:Ljava/lang/String; = "device_policy_local_restrictions"

.field public static final TAG_DEVICE_POLICY_RESTRICTIONS:Ljava/lang/String; = "device_policy_restrictions"

.field public static final TAG_ENTRY:Ljava/lang/String; = "entry"

.field public static final TAG_GLOBAL_RESTRICTION_OWNER_ID:Ljava/lang/String; = "globalRestrictionOwnerUserId"

.field public static final TAG_GUEST_RESTRICTIONS:Ljava/lang/String; = "guestRestrictions"

.field public static final TAG_IGNORE_PREPARE_STORAGE_ERRORS:Ljava/lang/String; = "ignorePrepareStorageErrors"

.field public static final TAG_LAST_REQUEST_QUIET_MODE_ENABLED_CALL:Ljava/lang/String; = "lastRequestQuietModeEnabledCall"

.field public static final TAG_NAME:Ljava/lang/String; = "name"

.field public static final TAG_RESTRICTIONS:Ljava/lang/String; = "restrictions"

.field public static final TAG_SEED_ACCOUNT_OPTIONS:Ljava/lang/String; = "seedAccountOptions"

.field public static final TAG_USER:Ljava/lang/String; = "user"

.field public static final TAG_USERS:Ljava/lang/String; = "users"

.field public static final TAG_VALUE:Ljava/lang/String; = "value"

.field public static final TRON_DEMO_CREATED:Ljava/lang/String; = "users_demo_created"

.field public static final TRON_GUEST_CREATED:Ljava/lang/String; = "users_guest_created"

.field public static final TRON_USER_CREATED:Ljava/lang/String; = "users_user_created"

.field public static final USER_INFO_DIR:Ljava/lang/String;

.field public static final USER_LIST_FILENAME:Ljava/lang/String; = "userlist.xml"

.field public static final USER_PHOTO_FILENAME:Ljava/lang/String; = "photo.png"

.field public static final USER_PHOTO_FILENAME_TMP:Ljava/lang/String; = "photo.png.tmp"

.field public static final USER_VERSION:I = 0x9

.field public static final WRITE_USER_DELAY:I = 0x7d0

.field public static final WRITE_USER_MSG:I = 0x1

.field public static final XML_SUFFIX:Ljava/lang/String; = ".xml"

.field public static final mUserRestriconToken:Landroid/os/IBinder;

.field public static sContext:Landroid/content/Context;

.field public static sInstance:Lcom/android/server/pm/UserManagerService;


# instance fields
.field public final ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

.field public final mATCommandReceiver:Landroid/content/BroadcastReceiver;

.field public mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field public final mAppRestrictionsLock:Ljava/lang/Object;

.field public final mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation
.end field

.field public final mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation
.end field

.field public final mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation
.end field

.field public final mConfigurationChangeReceiver:Landroid/content/BroadcastReceiver;

.field public final mContext:Landroid/content/Context;

.field public mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

.field public mDeviceOwnerUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation
.end field

.field public final mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation
.end field

.field public final mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/RestrictionsSet;",
            ">;"
        }
    .end annotation
.end field

.field public mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field public final mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

.field public mForceEphemeralUsers:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation
.end field

.field public final mGuestRestrictions:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mGuestRestrictions"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public mIsDeviceManaged:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation
.end field

.field public final mIsUserManaged:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation
.end field

.field public final mLastConfiguration:Landroid/content/res/Configuration;

.field public final mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mMaintenanceModeServiceUtils:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

.field public mNextSerialNumber:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPackagesLock"
        }
    .end annotation
.end field

.field public final mOwnerName:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mOwnerNameTypedValue:Landroid/util/TypedValue;

.field public final mPackagesLock:Ljava/lang/Object;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mRecentlyRemovedIds:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mRemovingUserIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation
.end field

.field public final mRestrictionsLock:Ljava/lang/Object;

.field public mSdpManager:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

.field public mSdpManagerInternal:Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

.field public final mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

.field public final mUser0Allocations:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

.field public mUserIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation
.end field

.field public mUserIdsIncludingPreCreated:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation
.end field

.field public final mUserLifecycleListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUserRemovedListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserListFile:Ljava/io/File;

.field public final mUserRestrictionsListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUserRestrictionsListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUserStates"
        }
    .end annotation
.end field

.field public mUserTypeVersion:I

.field public final mUserTypes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/UserTypeDetails;",
            ">;"
        }
    .end annotation
.end field

.field public mUserVersion:I

.field public final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/UserManagerService$UserData;",
            ">;"
        }
    .end annotation
.end field

.field public final mUsersDir:Ljava/io/File;

.field public final mUsersLock:Ljava/lang/Object;

.field public final sPersonaManager:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public static synthetic $r8$lambda$0qOXZf3kBda9m_JduHOxrT13Ep4(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->lambda$convertPreCreatedUserIfPossible$4(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4a3dS3tpZT9XKU-UkLUpiPdMRcs(Lcom/android/server/pm/UserManagerService;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->lambda$someUserHasAccountNoChecks$5(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9hvRa515D2waVDqa0OnyJ7PYUwc()Ljava/lang/Integer;
    .registers 1

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->lambda$isUserForeground$0()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$AYubsZ0dSWXXQBS1l2prS4Gk6DA(Ljava/lang/String;ZIILjava/lang/String;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->lambda$setUserRestriction$2(Ljava/lang/String;ZIILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fIk7HY6Rb7kc_b9wEf70etZcb94(Landroid/os/IUserRestrictionsListener;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->lambda$addUserRestrictionsListener$1(Landroid/os/IUserRestrictionsListener;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rBHs504BJNwsRe0tJ--hzgnQgcI(Lcom/android/server/pm/UserManagerService;ILjava/util/List;)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->onPullAtom(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOpsService(Lcom/android/server/pm/UserManagerService;)Lcom/android/internal/app/IAppOpsService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/pm/UserManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsDeviceManaged(Lcom/android/server/pm/UserManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsUserManaged(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaintenanceModeServiceUtils(Lcom/android/server/pm/UserManagerService;)Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mMaintenanceModeServiceUtils:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackagesLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPm(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/PackageManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRestrictionsLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemPackageInstaller(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserSystemPackageInstaller;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserLifecycleListeners(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserRestrictionsListeners(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserStates(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsers(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmForceEphemeralUsers(Lcom/android/server/pm/UserManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsDeviceManaged(Lcom/android/server/pm/UserManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapplyUserRestrictionsLR(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcleanupPartialUsers(Lcom/android/server/pm/UserManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->cleanupPartialUsers()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcleanupPreCreatedUsers(Lcom/android/server/pm/UserManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->cleanupPreCreatedUsers()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcleanupSecondaryAndGuestUsers(Lcom/android/server/pm/UserManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->cleanupSecondaryAndGuestUsers()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateUserInternalUnchecked(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;
    .registers 8

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfinishRemoveUser(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->finishRemoveUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetDevicePolicyManagerInternal(Lcom/android/server/pm/UserManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetEffectiveUserRestrictions(Lcom/android/server/pm/UserManagerService;I)Landroid/os/Bundle;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetProfileParentLU(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserDataLU(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserDataNoChecks(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserInfoLU(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserInfoNoChecks(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserTypeDetailsNoChecks(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserTypeDetails;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUsersInternal(Lcom/android/server/pm/UserManagerService;ZZZ)Ljava/util/List;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minvalidateOwnerNameIfNecessary(Lcom/android/server/pm/UserManagerService;Landroid/content/res/Resources;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->invalidateOwnerNameIfNecessary(Landroid/content/res/Resources;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogUserRemoveJourneyFinish(Lcom/android/server/pm/UserManagerService;JIZ)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->logUserRemoveJourneyFinish(JIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterStatsCallbacks(Lcom/android/server/pm/UserManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->registerStatsCallbacks()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveNonSystemUsers(Lcom/android/server/pm/UserManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->removeNonSystemUsers()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveUserState(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveUserUnchecked(Lcom/android/server/pm/UserManagerService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msendATCommandResponse(Lcom/android/server/pm/UserManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->sendATCommandResponse()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendUserInfoChangedBroadcast(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDefaultCrossProfileIntentFilters(Lcom/android/server/pm/UserManagerService;ILcom/android/server/pm/UserTypeDetails;Landroid/os/Bundle;I)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->setDefaultCrossProfileIntentFilters(ILcom/android/server/pm/UserTypeDetails;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDevicePolicyUserRestrictionsInner(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Lcom/android/server/pm/RestrictionsSet;Z)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;Lcom/android/server/pm/RestrictionsSet;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetQuietModeEnabled(Lcom/android/server/pm/UserManagerService;IZLandroid/content/IntentSender;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteBitmapLP(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteUserLP(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetmUserRestriconToken()Landroid/os/IBinder;
    .registers 1

    sget-object v0, Lcom/android/server/pm/UserManagerService;->mUserRestriconToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 296
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

    sput-object v0, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    .line 362
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/pm/UserManagerService;->mUserRestriconToken:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 796
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;Lcom/android/server/pm/PersonaManagerService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Lcom/android/server/pm/PersonaManagerService;)V
    .registers 13

    .line 806
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;Lcom/android/server/pm/PersonaManagerService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;Lcom/android/server/pm/PersonaManagerService;)V
    .registers 12

    .line 810
    invoke-direct {p0}, Landroid/os/IUserManager$Stub;-><init>()V

    const/4 v0, 0x2

    .line 352
    invoke-static {v0}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 353
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    .line 355
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 380
    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 384
    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mSdpManager:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    .line 385
    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mSdpManagerInternal:Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

    .line 458
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 478
    new-instance v1, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v1}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 493
    new-instance v1, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v1}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 502
    new-instance v1, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v1}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 511
    new-instance v1, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v1}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    const/16 v1, -0x2710

    .line 517
    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    .line 528
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    .line 532
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 540
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    .line 546
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    const/4 v1, 0x0

    .line 557
    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 558
    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    .line 567
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    .line 570
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    .line 574
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    const-string v2, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    .line 579
    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

    .line 582
    new-instance v2, Lcom/android/server/pm/UserManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/UserManagerService$1;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    .line 600
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mOwnerName:Ljava/util/concurrent/atomic/AtomicReference;

    .line 602
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mOwnerNameTypedValue:Landroid/util/TypedValue;

    .line 604
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 606
    new-instance v2, Lcom/android/server/pm/UserManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/pm/UserManagerService$2;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mConfigurationChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 696
    new-instance v2, Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    invoke-direct {v2, p0}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    .line 708
    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mMaintenanceModeServiceUtils:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    .line 5088
    new-instance v3, Lcom/android/server/pm/UserManagerService$6;

    invoke-direct {v3, p0}, Lcom/android/server/pm/UserManagerService$6;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mATCommandReceiver:Landroid/content/BroadcastReceiver;

    .line 811
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 812
    iput-object p2, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 813
    iput-object p4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    .line 815
    new-instance p2, Landroid/os/HandlerThread;

    const-string v3, "UserManagerHandler"

    invoke-direct {p2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 817
    new-instance v3, Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v3, p0, p2}, Lcom/android/server/pm/UserManagerService$MainHandler;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    .line 821
    iput-object p3, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    .line 822
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getUserTypes()Landroid/util/ArrayMap;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    .line 823
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const/4 v4, 0x1

    invoke-virtual {p0, p3, v4}, Lcom/android/server/pm/UserManagerService;->invalidateOwnerNameIfNecessary(Landroid/content/res/Resources;Z)V

    .line 825
    sput-object p1, Lcom/android/server/pm/UserManagerService;->sContext:Landroid/content/Context;

    .line 826
    iput-object p6, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 828
    monitor-enter p4

    .line 829
    :try_start_e3
    new-instance p3, Ljava/io/File;

    sget-object p6, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {p3, p5, p6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    .line 830
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 832
    new-instance p5, Ljava/io/File;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p6

    invoke-direct {p5, p3, p6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 833
    invoke-virtual {p5}, Ljava/io/File;->mkdirs()Z

    .line 834
    invoke-virtual {p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p5

    const/16 p6, 0x1fd

    const/4 v4, -0x1

    invoke-static {p5, p6, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 837
    new-instance p5, Ljava/io/File;

    const-string/jumbo p6, "userlist.xml"

    invoke-direct {p5, p3, p6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p5, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    .line 838
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 839
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->readUserListLP()V

    .line 840
    sput-object p0, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    .line 841
    monitor-exit p4
    :try_end_118
    .catchall {:try_start_e3 .. :try_end_118} :catchall_13f

    .line 842
    new-instance p3, Lcom/android/server/pm/UserSystemPackageInstaller;

    invoke-direct {p3, p0, p2}, Lcom/android/server/pm/UserSystemPackageInstaller;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;)V

    iput-object p3, p0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    .line 843
    new-instance p2, Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-direct {p2, p0, v0}, Lcom/android/server/pm/UserManagerService$LocalService;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$LocalService-IA;)V

    iput-object p2, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 844
    const-class p3, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p3, p2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 845
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 847
    new-instance p2, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    invoke-direct {p2, p1, v3, p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/pm/UserManagerService;)V

    iput-object p2, p0, Lcom/android/server/pm/UserManagerService;->mMaintenanceModeServiceUtils:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    .line 850
    invoke-virtual {v2, v1, v1}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->put(II)V

    .line 851
    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUser0Allocations:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void

    :catchall_13f
    move-exception p0

    .line 841
    :try_start_140
    monitor-exit p4
    :try_end_141
    .catchall {:try_start_140 .. :try_end_141} :catchall_13f

    throw p0
.end method

.method public static checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 3

    .line 7643
    sget-object v0, Lcom/android/server/pm/UserManagerService;->sContext:Landroid/content/Context;

    const-string v1, "UserManagerService"

    invoke-static {v0, v1, p0}, Lcom/android/server/knox/ContainerDependencyWrapper;->checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final checkCreateUsersPermission(I)V
    .registers 4

    and-int/lit16 v0, p0, -0x172d

    if-nez v0, :cond_22

    .line 2981
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_28

    .line 2982
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS or CREATE_USERS permission to create an user with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2985
    :cond_22
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_29

    :goto_28
    return-void

    .line 2986
    :cond_29
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to create an user  with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final checkCreateUsersPermission(Ljava/lang/String;)V
    .registers 4

    .line 2933
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2934
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS or CREATE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V
    .registers 4

    .line 2884
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_33

    if-nez v0, :cond_b

    goto :goto_33

    :cond_b
    const-string v1, "android.permission.MANAGE_USERS"

    .line 2891
    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 2892
    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    return-void

    .line 2897
    :cond_1c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS and INTERACT_ACROSS_USERS_FULL permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    :goto_33
    return-void
.end method

.method public static final checkManageUsersPermission(Ljava/lang/String;)V
    .registers 4

    .line 2917
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2918
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final checkQueryOrCreateUsersPermission(Ljava/lang/String;)V
    .registers 4

    .line 2966
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryOrCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2967
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS, CREATE_USERS, or QUERY_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final checkQueryUsersPermission(Ljava/lang/String;)V
    .registers 4

    .line 2949
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2950
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS or QUERY_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkSystemOrRoot(Ljava/lang/String;)V
    .registers 4

    .line 3057
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    .line 3058
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_26

    if-nez v0, :cond_f

    goto :goto_26

    .line 3059
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only system may: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    :goto_26
    return-void
.end method

.method public static checkUserTypeConsistency(I)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    and-int/lit16 v0, p0, 0x120c

    .line 4811
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->isAtMostOneFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    and-int/lit16 v0, p0, 0x1400

    .line 4812
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->isAtMostOneFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    and-int/lit16 p0, p0, 0x1800

    .line 4813
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->isAtMostOneFlag(I)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public static cleanAppRestrictionsForPackageLAr(Ljava/lang/String;I)Z
    .registers 3

    .line 4096
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    .line 4097
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4098
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 4099
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static debug(Ljava/lang/String;)V
    .registers 2

    .line 7519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UserManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_c

    const-string p1, "<unknown>"

    .line 6913
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1c

    :cond_c
    const/4 v0, 0x0

    .line 6915
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    sub-long/2addr p2, p4

    .line 6916
    invoke-static {p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string p2, " ago"

    .line 6917
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6918
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_1c
    return-void
.end method

.method public static getInstance()Lcom/android/server/pm/UserManagerService;
    .registers 2

    .line 702
    const-class v0, Lcom/android/server/pm/UserManagerService;

    monitor-enter v0

    .line 703
    :try_start_3
    sget-object v1, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 704
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static getMaxUsersOfTypePerParent(Lcom/android/server/pm/UserTypeDetails;)I
    .registers 3

    .line 7542
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->getMaxAllowedPerParent()I

    move-result v0

    .line 7543
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v1, :cond_9

    return v0

    .line 7546
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isManagedProfile()Z

    move-result p0

    if-eqz p0, :cond_17

    const-string/jumbo p0, "persist.sys.max_profiles"

    .line 7547
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_17
    return v0
.end method

.method public static final hasCreateUsersPermission()Z
    .registers 1

    const-string v0, "android.permission.CREATE_USERS"

    .line 3026
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final hasManageUsersOrPermission(Ljava/lang/String;)Z
    .registers 3

    .line 3015
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3016
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission(I)Z

    move-result v1

    if-nez v1, :cond_13

    .line 3017
    invoke-static {p0, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static final hasManageUsersPermission()Z
    .registers 1

    .line 2996
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2997
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission(I)Z

    move-result v0

    return v0
.end method

.method public static hasManageUsersPermission(I)Z
    .registers 2

    const/16 v0, 0x3e8

    .line 3005
    invoke-static {p0, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz p0, :cond_15

    const-string v0, "android.permission.MANAGE_USERS"

    .line 3007
    invoke-static {v0, p0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public static hasPermissionGranted(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 2902
    invoke-static {p0, p1, v0, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public static final hasQueryOrCreateUsersPermission()Z
    .registers 2

    .line 3045
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasCreateUsersPermission()Z

    move-result v0

    if-nez v0, :cond_15

    .line 3046
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "android.permission.QUERY_USERS"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public static final hasQueryUsersPermission()Z
    .registers 1

    const-string v0, "android.permission.QUERY_USERS"

    .line 3035
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAtMostOneFlag(I)Z
    .registers 2

    add-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .registers 4

    .line 1249
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v1, :cond_13

    iget p0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_11

    iget p1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne p0, p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static isUserTypeEligibleForPreCreation(Lcom/android/server/pm/UserTypeDetails;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 4909
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isProfile()Z

    move-result v1

    if-nez v1, :cond_17

    .line 4910
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "android.os.usertype.full.RESTRICTED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public static synthetic lambda$addUserRestrictionsListener$1(Landroid/os/IUserRestrictionsListener;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 4

    .line 2408
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/os/IUserRestrictionsListener;->onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1f

    :catch_4
    move-exception p0

    .line 2410
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to invoke listener: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2411
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IUserRestrictionsListener"

    .line 2410
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return-void
.end method

.method private synthetic lambda$convertPreCreatedUserIfPossible$4(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4799
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->onNewUserCreated(IZ)V

    .line 4800
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->dispatchUserAdded(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$createUserInternalUncheckedNoTracing$3(ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .registers 2

    .line 4641
    invoke-virtual {p1, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->welcomeNewUser(I)V

    return-void
.end method

.method public static synthetic lambda$isUserForeground$0()Ljava/lang/Integer;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1825
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$setSdpPolicy$6(ILcom/android/server/knox/dar/sdp/SdpManagerInternal;)Ljava/lang/Boolean;
    .registers 2

    .line 7878
    invoke-virtual {p1, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;->setSdpPolicy(I)Z

    move-result p0

    .line 7877
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$setUserRestriction$2(Ljava/lang/String;ZIILjava/lang/String;)V
    .registers 7

    .line 2511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updated restriction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ") for User "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", callingUid: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", stack: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfo(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$someUserHasAccountNoChecks$5(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6441
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->someUserHasAccount(Landroid/accounts/Account;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 6442
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/UserManagerService;->someUserHasSeedAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    .line 6441
    :goto_16
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 6329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".xml"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppRestrictionsLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "UserManagerService"

    .line 5897
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5898
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5899
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_17

    return-object v1

    :cond_17
    const/4 v3, 0x0

    .line 5905
    :try_start_18
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 5906
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v4

    .line 5907
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5908
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_46

    .line 5909
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read restrictions file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5910
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5909
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_42} :catch_57
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_42} :catch_57
    .catchall {:try_start_18 .. :try_end_42} :catchall_55

    .line 5919
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    .line 5913
    :cond_46
    :goto_46
    :try_start_46
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_51

    .line 5914
    invoke-static {v1, v2, v4}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/TypedXmlPullParser;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_50} :catch_57
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46 .. :try_end_50} :catch_57
    .catchall {:try_start_46 .. :try_end_50} :catchall_55

    goto :goto_46

    .line 5919
    :cond_51
    :goto_51
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_71

    :catchall_55
    move-exception p0

    goto :goto_72

    :catch_57
    move-exception v2

    .line 5917
    :try_start_58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catchall {:try_start_58 .. :try_end_70} :catchall_55

    goto :goto_51

    :goto_71
    return-object v1

    .line 5919
    :goto_72
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5920
    throw p0
.end method

.method public static readApplicationRestrictionsLAr(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppRestrictionsLock"
        }
    .end annotation

    .line 5888
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 5889
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    .line 5890
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 5891
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static readBundleEntry(Landroid/util/TypedXmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 5969
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5970
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 5971
    :goto_9
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 5972
    invoke-static {v0, p1, p0}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/TypedXmlPullParser;)V

    goto :goto_9

    :cond_13
    return-object v0
.end method

.method public static readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/TypedXmlPullParser;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/TypedXmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5926
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_cd

    .line 5927
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "entry"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    const/4 v0, 0x0

    const-string/jumbo v2, "key"

    .line 5928
    invoke-interface {p2, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "type"

    .line 5929
    invoke-interface {p2, v0, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "m"

    const/4 v5, -0x1

    .line 5930
    invoke-interface {p2, v0, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_62

    .line 5932
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_2f
    :goto_2f
    if-lez v0, :cond_55

    .line 5933
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_55

    if-ne v3, v1, :cond_2f

    .line 5935
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 5936
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_2f

    .line 5940
    :cond_55
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 5941
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5942
    invoke-virtual {p0, v2, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_cd

    :cond_62
    const-string v0, "B"

    .line 5943
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 5944
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Landroid/util/TypedXmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_cd

    :cond_72
    const-string v0, "BA"

    .line 5945
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 5946
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 5947
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5948
    :goto_83
    invoke-static {p2, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 5949
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Landroid/util/TypedXmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v3

    .line 5950
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 5953
    :cond_91
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    .line 5952
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_cd

    .line 5955
    :cond_a1
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "b"

    .line 5956
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b9

    .line 5957
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_cd

    :cond_b9
    const-string/jumbo p2, "i"

    .line 5958
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ca

    .line 5959
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_cd

    .line 5961
    :cond_ca
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_cd
    :goto_cd
    return-void
.end method

.method public static validateName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5851
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    :goto_8
    if-ge v3, v0, :cond_4e

    .line 5854
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x61

    if-lt v5, v6, :cond_16

    const/16 v6, 0x7a

    if-le v5, v6, :cond_1e

    :cond_16
    const/16 v6, 0x41

    if-lt v5, v6, :cond_20

    const/16 v6, 0x5a

    if-gt v5, v6, :cond_20

    :cond_1e
    move v4, v1

    goto :goto_34

    :cond_20
    if-nez v4, :cond_37

    const/16 v6, 0x30

    if-lt v5, v6, :cond_2a

    const/16 v6, 0x39

    if-le v5, v6, :cond_34

    :cond_2a
    const/16 v6, 0x5f

    if-ne v5, v6, :cond_2f

    goto :goto_34

    :cond_2f
    const/16 v4, 0x2e

    if-ne v5, v4, :cond_37

    move v4, v2

    :cond_34
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 5868
    :cond_37
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bad character \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppRestrictionsLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string/jumbo v0, "restrictions"

    const/4 v1, 0x0

    .line 5991
    :try_start_4
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_2b

    .line 5992
    :try_start_8
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v3

    .line 5993
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    .line 5994
    invoke-interface {v3, v4, v5}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 5996
    invoke-interface {v3, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5997
    invoke-static {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Landroid/util/TypedXmlSerializer;)V

    .line 5998
    invoke-interface {v3, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6000
    invoke-interface {v3}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 6001
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_27} :catch_28

    goto :goto_36

    :catch_28
    move-exception p0

    move-object v1, v2

    goto :goto_2c

    :catch_2b
    move-exception p0

    .line 6003
    :goto_2c
    invoke-virtual {p1, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string p1, "UserManagerService"

    const-string v0, "Error writing application restrictions list"

    .line 6004
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_36
    return-void
.end method

.method public static writeApplicationRestrictionsLAr(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppRestrictionsLock"
        }
    .end annotation

    .line 5980
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 5981
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p2

    .line 5982
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 5983
    invoke-static {p1, v0}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V

    return-void
.end method

.method public static writeBundle(Landroid/os/Bundle;Landroid/util/TypedXmlSerializer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6010
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6011
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "entry"

    .line 6012
    invoke-interface {p1, v3, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "key"

    .line 6013
    invoke-interface {p1, v3, v5, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6015
    instance-of v1, v2, Ljava/lang/Boolean;

    const-string/jumbo v5, "type"

    if-eqz v1, :cond_39

    const-string v1, "b"

    .line 6016
    invoke-interface {p1, v3, v5, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6017
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_c7

    .line 6018
    :cond_39
    instance-of v1, v2, Ljava/lang/Integer;

    if-eqz v1, :cond_4c

    const-string/jumbo v1, "i"

    .line 6019
    invoke-interface {p1, v3, v5, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6020
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_c7

    :cond_4c
    const-string v1, ""

    if-eqz v2, :cond_b9

    .line 6021
    instance-of v6, v2, Ljava/lang/String;

    if-eqz v6, :cond_55

    goto :goto_b9

    .line 6024
    :cond_55
    instance-of v6, v2, Landroid/os/Bundle;

    const-string v7, "B"

    if-eqz v6, :cond_64

    .line 6025
    invoke-interface {p1, v3, v5, v7}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6026
    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Landroid/util/TypedXmlSerializer;)V

    goto :goto_c7

    .line 6027
    :cond_64
    instance-of v6, v2, [Landroid/os/Parcelable;

    const/4 v8, 0x0

    if-eqz v6, :cond_92

    const-string v1, "BA"

    .line 6028
    invoke-interface {p1, v3, v5, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6029
    check-cast v2, [Landroid/os/Parcelable;

    .line 6030
    array-length v1, v2

    :goto_71
    if-ge v8, v1, :cond_c7

    aget-object v6, v2, v8

    .line 6031
    instance-of v9, v6, Landroid/os/Bundle;

    if-eqz v9, :cond_8a

    .line 6034
    invoke-interface {p1, v3, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6035
    invoke-interface {p1, v3, v5, v7}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6036
    check-cast v6, Landroid/os/Bundle;

    invoke-static {v6, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Landroid/util/TypedXmlSerializer;)V

    .line 6037
    invoke-interface {p1, v3, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_71

    .line 6032
    :cond_8a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bundle-array can only hold Bundles"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_92
    const-string/jumbo v6, "sa"

    .line 6040
    invoke-interface {p1, v3, v5, v6}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6041
    check-cast v2, [Ljava/lang/String;

    .line 6042
    array-length v5, v2

    const-string/jumbo v6, "m"

    invoke-interface {p1, v3, v6, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 6043
    array-length v5, v2

    :goto_a2
    if-ge v8, v5, :cond_c7

    aget-object v6, v2, v8

    const-string/jumbo v7, "value"

    .line 6044
    invoke-interface {p1, v3, v7}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v6, :cond_af

    goto :goto_b0

    :cond_af
    move-object v6, v1

    .line 6045
    :goto_b0
    invoke-interface {p1, v6}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6046
    invoke-interface {p1, v3, v7}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_a2

    :cond_b9
    :goto_b9
    const-string/jumbo v6, "s"

    .line 6022
    invoke-interface {p1, v3, v5, v6}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v2, :cond_c4

    .line 6023
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    :cond_c4
    invoke-interface {p1, v1}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6049
    :cond_c7
    :goto_c7
    invoke-interface {p1, v3, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_8

    :cond_cc
    return-void
.end method


# virtual methods
.method public addRemovingUserIdLocked(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5491
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5492
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5494
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_1e

    .line 5495
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_1e
    return-void
.end method

.method public addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V
    .registers 4

    .line 2398
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_13

    .line 2405
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    new-instance v0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda3;-><init>(Landroid/os/IUserRestrictionsListener;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService$LocalService;->addUserRestrictionsListener(Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;)V

    return-void

    .line 2399
    :cond_13
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Non-system caller"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final applyDefaultUserSettings(Lcom/android/server/pm/UserTypeDetails;I)V
    .registers 12

    .line 4684
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->getDefaultSystemSettings()Landroid/os/Bundle;

    move-result-object v0

    .line 4685
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->getDefaultSecureSettings()Landroid/os/Bundle;

    move-result-object p1

    .line 4686
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    .line 4690
    :cond_15
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v1

    .line 4691
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    move v4, v3

    :goto_27
    const-string v5, "UserManagerService"

    if-ge v4, v1, :cond_54

    .line 4694
    aget-object v6, v2, v4

    .line 4695
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 4696
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4695
    invoke-static {v7, v6, v8, p2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_51

    .line 4698
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to insert default system setting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 4702
    :cond_54
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v0

    .line 4703
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :goto_64
    if-ge v3, v0, :cond_8f

    .line 4706
    aget-object v2, v1, v3

    .line 4707
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 4708
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4707
    invoke-static {v4, v2, v6, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_8c

    .line 4710
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to insert default secure setting: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8c
    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    :cond_8f
    return-void
.end method

.method public final applyUserRestrictionsForAllUsersLR()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .line 2624
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0}, Lcom/android/server/pm/RestrictionsSet;->removeAllRestrictions()V

    .line 2628
    new-instance v0, Lcom/android/server/pm/UserManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UserManagerService$5;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 2650
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final applyUserRestrictionsLR(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2614
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    return-void
.end method

.method public final broadcastProfileAvailabilityChanges(Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V
    .registers 6

    .line 1256
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p3, :cond_d

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 1258
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_12

    :cond_d
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 1260
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_12
    const-string v1, "android.intent.extra.QUIET_MODE"

    .line 1262
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "android.intent.extra.USER"

    .line 1263
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1264
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const-string p3, "android.intent.extra.user_handle"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1265
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, v0, p2, p3}, Landroid/app/admin/DevicePolicyManagerInternal;->broadcastIntentToManifestReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    const/high16 p1, 0x40000000    # 2.0f

    .line 1267
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1268
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final canAddMoreDualApp(I)Z
    .registers 6

    const-string v0, "check if more DualApp can be added."

    .line 7788
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 7789
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    return v1

    .line 7792
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.software.managed_users"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    return v1

    :cond_1c
    const/4 v0, 0x1

    .line 7796
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object p0

    move p1, v1

    move v2, p1

    .line 7797
    :goto_23
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_3a

    .line 7798
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v3

    if-eqz v3, :cond_37

    add-int/lit8 v2, v2, 0x1

    :cond_37
    add-int/lit8 p1, p1, 0x1

    goto :goto_23

    :cond_3a
    if-lt v2, v0, :cond_3d

    return v1

    :cond_3d
    return v0
.end method

.method public canAddMoreManagedProfiles(IZ)Z
    .registers 4

    const-string v0, "android.os.usertype.profile.MANAGED"

    .line 2769
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z
    .registers 4

    .line 2777
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->getRemainingCreatableProfileCount(Ljava/lang/String;IZ)I

    move-result p0

    if-lez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final canAddMoreProfilesToUser(Ljava/lang/String;IZI)Z
    .registers 7

    const-string v0, "check if more managed profiles can be added."

    .line 7746
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 7747
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserTypeDetails;

    const/4 v0, 0x0

    if-nez p1, :cond_11

    return v0

    .line 7751
    :cond_11
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p1

    if-eqz p1, :cond_18

    return v0

    .line 7754
    :cond_18
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "android.software.managed_users"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_27

    return v0

    .line 7759
    :cond_27
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter p1

    .line 7760
    :try_start_2a
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 7761
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v1

    if-nez v1, :cond_37

    goto :goto_44

    .line 7764
    :cond_37
    monitor-exit p1
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_46

    const/4 p1, 0x1

    .line 7766
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object p1

    .line 7767
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p3, p4, p1}, Lcom/android/server/pm/PersonaServiceHelper;->canAddMoreManagedProfiles(Landroid/content/Context;ZILjava/util/List;)Z

    move-result p0

    return p0

    .line 7762
    :cond_44
    :goto_44
    :try_start_44
    monitor-exit p1

    return v0

    :catchall_46
    move-exception p0

    .line 7764
    monitor-exit p1
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public final canAddMoreUsersOfType(Lcom/android/server/pm/UserTypeDetails;)Z
    .registers 6

    .line 2672
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2675
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->getMaxAllowed()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_11

    return v3

    .line 2679
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getNumberOfUsersOfType(Ljava/lang/String;)I

    move-result p0

    if-ge p0, v0, :cond_1c

    move v1, v3

    :cond_1c
    return v1
.end method

.method public canAddMoreUsersOfType(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "check if more users can be added."

    .line 2754
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 2755
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserTypeDetails;

    if-eqz p1, :cond_17

    .line 2756
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->canAddMoreUsersOfType(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public canHaveRestrictedProfile(I)Z
    .registers 6

    const-string v0, "canHaveRestrictedProfile"

    .line 1962
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1963
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1964
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    .line 1965
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_2d

    .line 1968
    :cond_16
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1969
    monitor-exit v0

    return v2

    .line 1972
    :cond_1e
    iget-boolean v1, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    if-nez v1, :cond_2b

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-nez p0, :cond_2b

    const/4 v2, 0x1

    :cond_2b
    monitor-exit v0

    return v2

    .line 1966
    :cond_2d
    :goto_2d
    monitor-exit v0

    return v2

    :catchall_2f
    move-exception p0

    .line 1973
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public final checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V
    .registers 4

    .line 1884
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_38

    .line 1885
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_38

    .line 1888
    :cond_d
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result p0

    if-eqz p0, :cond_14

    return-void

    .line 1892
    :cond_14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const-string p1, "android.permission.INTERACT_ACROSS_USERS"

    .line 1891
    invoke-static {p1, p0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_21

    return-void

    .line 1895
    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "You need INTERACT_ACROSS_USERS or MANAGE_USERS permission to: check "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    :goto_38
    return-void
.end method

.method public final checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V
    .registers 4

    .line 1912
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_38

    .line 1913
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_38

    .line 1916
    :cond_d
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryUsersPermission()Z

    move-result p0

    if-eqz p0, :cond_14

    return-void

    .line 1920
    :cond_14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const-string p1, "android.permission.INTERACT_ACROSS_USERS"

    .line 1919
    invoke-static {p1, p0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_21

    return-void

    .line 1923
    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "You need INTERACT_ACROSS_USERS, MANAGE_USERS, or QUERY_USERS permission to: check "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    :goto_38
    return-void
.end method

.method public final cleanUpMaintenanceModeUserDebris(Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 2

    .line 5148
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->markMaintenanceModeUserForDeletion(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 5149
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mMaintenanceModeServiceUtils:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    const-string p1, "Failed to enable"

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->reboot(Ljava/lang/String;)V

    return-void
.end method

.method public final cleanupPartialUsers()V
    .registers 9

    .line 904
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 905
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 906
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v2, :cond_4b

    .line 908
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 923
    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v6, :cond_24

    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v6, :cond_48

    :cond_24
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-eqz v6, :cond_48

    .line 924
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 926
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    :cond_3a
    const/4 v6, 0x1

    .line 928
    iput-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    .line 929
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 930
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PersonaManagerService;->enforceSeparatedAppsRemove()V

    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 934
    :cond_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_8 .. :try_end_4c} :catchall_88

    .line 935
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_50
    if-ge v3, v1, :cond_87

    .line 937
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    const-string v4, "UserManagerService"

    .line 938
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing partially created user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " (name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    :cond_87
    return-void

    :catchall_88
    move-exception p0

    .line 934
    :try_start_89
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw p0
.end method

.method public final cleanupPreCreatedUsers()V
    .registers 8

    .line 950
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 951
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 952
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v1, :cond_34

    .line 954
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 955
    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v6, :cond_31

    .line 956
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 958
    iget v6, v5, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v6, v6, 0x40

    iput v6, v5, Landroid/content/pm/UserInfo;->flags:I

    const/4 v6, 0x1

    .line 959
    iput-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 962
    :cond_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_62

    .line 963
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_39
    if-ge v3, v0, :cond_61

    .line 965
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    const-string v4, "UserManagerService"

    .line 966
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing pre-created user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_61
    return-void

    :catchall_62
    move-exception p0

    .line 962
    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw p0
.end method

.method public final cleanupSecondaryAndGuestUsers()V
    .registers 9

    .line 5178
    sget-boolean v0, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->IS_TABLET:Z

    if-eqz v0, :cond_5

    return-void

    .line 5182
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5183
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5184
    :try_start_d
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ge v4, v2, :cond_42

    .line 5186
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 5187
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-eqz v6, :cond_3f

    .line 5188
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v6

    if-nez v6, :cond_3f

    .line 5189
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isMaintenanceMode()Z

    move-result v6

    if-eqz v6, :cond_32

    goto :goto_3f

    .line 5193
    :cond_32
    iget-object v6, v5, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    const-string v7, "android.os.usertype.full.SECONDARY"

    if-eq v6, v7, :cond_3c

    const-string v7, "android.os.usertype.full.GUEST"

    if-ne v6, v7, :cond_3f

    .line 5195
    :cond_3c
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    :goto_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 5198
    :cond_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_d .. :try_end_43} :catchall_87

    .line 5199
    :goto_43
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_86

    .line 5200
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 5201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing disabled secondary or guest user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (name="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    .line 5203
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :cond_86
    return-void

    :catchall_87
    move-exception p0

    .line 5198
    :try_start_88
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw p0
.end method

.method public clearSeedAccountData(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Cannot clear seed account information"

    .line 6389
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 6390
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6392
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_20

    .line 6393
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    if-nez p1, :cond_14

    .line 6394
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_1d

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_20

    return-void

    .line 6395
    :cond_14
    :try_start_14
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$UserData;->clearSeedAccountData()V

    .line 6396
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_1d

    .line 6397
    :try_start_18
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 6398
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_20

    return-void

    :catchall_1d
    move-exception p0

    .line 6396
    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw p0

    :catchall_20
    move-exception p0

    .line 6398
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_20

    throw p0
.end method

.method public final computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .line 2327
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 2328
    invoke-virtual {v0, p1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 2329
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1}, Lcom/android/server/pm/RestrictionsSet;->mergeAll()Landroid/os/Bundle;

    move-result-object v1

    .line 2330
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyLocalRestrictionsForTargetUserLR(I)Lcom/android/server/pm/RestrictionsSet;

    move-result-object p0

    .line 2332
    invoke-static {v1}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-virtual {p0}, Lcom/android/server/pm/RestrictionsSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_21

    return-object v0

    .line 2336
    :cond_21
    invoke-static {v0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 2337
    invoke-static {p1, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 2338
    invoke-virtual {p0}, Lcom/android/server/pm/RestrictionsSet;->mergeAll()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public final convertPreCreatedUserIfPossible(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;
    .registers 11

    .line 4763
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4764
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getPreCreatedUserLU(Ljava/lang/String;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 4765
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_e0

    const/4 v0, 0x0

    if-nez v1, :cond_c

    return-object v0

    .line 4769
    :cond_c
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v2

    .line 4770
    :try_start_f
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->has(I)Z

    move-result v3

    if-eqz v3, :cond_3c

    const-string p0, "UserManagerService"

    .line 4771
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot reuse pre-created user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " because it didn\'t stop yet"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4773
    monitor-exit v2

    return-object v0

    .line 4775
    :cond_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_f .. :try_end_3d} :catchall_dd

    .line 4776
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4777
    iget v3, v2, Landroid/content/pm/UserInfo;->flags:I

    or-int/2addr v3, p2

    .line 4778
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkUserTypeConsistency(I)Z

    move-result v4

    if-nez v4, :cond_88

    const-string p0, "UserManagerService"

    .line 4779
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot reuse pre-created user "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " of type "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because flags are inconsistent. Flags ("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4781
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "); preCreatedUserFlags ( "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 4782
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4779
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_88
    const-string v0, "UserManagerService"

    .line 4785
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reusing pre-created user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and bestowing on it flags "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4786
    invoke-static {p2}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4785
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4787
    iput-object p3, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 4788
    iput v3, v2, Landroid/content/pm/UserInfo;->flags:I

    const/4 p1, 0x0

    .line 4789
    iput-boolean p1, v2, Landroid/content/pm/UserInfo;->preCreated:Z

    const/4 p1, 0x1

    .line 4790
    iput-boolean p1, v2, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    .line 4791
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCreationTime()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/content/pm/UserInfo;->creationTime:J

    .line 4793
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4794
    :try_start_c7
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 4795
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 4796
    monitor-exit p1
    :try_end_ce
    .catchall {:try_start_c7 .. :try_end_ce} :catchall_da

    .line 4797
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 4798
    new-instance p1, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v2, p4}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-object v2

    :catchall_da
    move-exception p0

    .line 4796
    :try_start_db
    monitor-exit p1
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_da

    throw p0

    :catchall_dd
    move-exception p0

    .line 4775
    :try_start_de
    monitor-exit v2
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_dd

    throw p0

    :catchall_e0
    move-exception p0

    .line 4765
    :try_start_e1
    monitor-exit v0
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_e0

    throw p0
.end method

.method public final copyUserFallbackLP(I)V
    .registers 6

    const-string v0, ".xml"

    .line 3642
    :try_start_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3643
    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".fallback"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3644
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 3645
    invoke-static {v1, v2}, Landroid/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)J
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3c} :catch_3c

    :catch_3c
    :cond_3c
    return-void
.end method

.method public final copyUserlistFallbackLP()V
    .registers 4

    .line 3669
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    .line 3670
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".fallback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3671
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 3672
    invoke-static {p0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)J
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_25

    :catch_25
    :cond_25
    return-void
.end method

.method public createProfileForUserEvenWhenDisallowedWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 4130
    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 4132
    :try_start_b
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_f
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_b .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p0

    .line 4135
    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 4114
    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    .line 4116
    :try_start_3
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_7
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_3 .. :try_end_7} :catch_8

    return-object p0

    :catch_8
    move-exception p0

    .line 4118
    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public createRestrictedProfileWithThrow(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 10

    const-string/jumbo v0, "setupRestrictedProfile"

    .line 5039
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    const-string v3, "android.os.usertype.full.RESTRICTED"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    .line 5040
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-nez p1, :cond_15

    const/4 p0, 0x0

    return-object p0

    .line 5045
    :cond_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_19
    const-string/jumbo p2, "no_modify_accounts"

    .line 5047
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x1

    invoke-virtual {p0, p2, v3, v2}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 5050
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v2, "location_mode"

    const/4 v4, 0x0

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p2, v2, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo p2, "no_share_location"

    .line 5053
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p2, v3, v2}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_3d

    .line 5055
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_3d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5056
    throw p0
.end method

.method public final createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$CheckedUserOperationException;
        }
    .end annotation

    .line 4215
    invoke-static {p2}, Landroid/os/UserManager;->isUserTypeCloneProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "no_add_clone_profile"

    goto :goto_17

    .line 4217
    :cond_a
    invoke-static {p2}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "no_add_managed_profile"

    goto :goto_17

    :cond_14
    const-string/jumbo v0, "no_add_user"

    .line 4221
    :goto_17
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-string v2, "Cannot add user"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->enforceUserRestriction(Ljava/lang/String;ILjava/lang/String;)V

    and-int/lit8 v0, p3, 0x20

    const/4 v1, 0x1

    if-eqz v0, :cond_27

    move v0, v1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    .line 4226
    :goto_28
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    .line 4227
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v3

    if-eqz v3, :cond_53

    if-nez v0, :cond_53

    .line 4228
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getMultiUserManager()Lcom/samsung/android/knox/multiuser/MultiUserManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isUserCreationAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 4229
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getMultiUserManager()Lcom/samsung/android/knox/multiuser/MultiUserManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_53

    :cond_4a
    const-string p0, "UserManagerService"

    const-string p1, "MultiUserManager policy blocked to create user"

    .line 4230
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_53
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 4236
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public final createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$CheckedUserOperationException;
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v0, p3

    .line 4245
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableId()I

    move-result v11

    .line 4246
    new-instance v12, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v12}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 4247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createUser-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    move-object/from16 v3, p2

    .line 4248
    invoke-virtual {v10, v11, v3, v0}, Lcom/android/server/pm/UserManagerService;->logUserCreateJourneyBegin(ILjava/lang/String;I)J

    move-result-wide v13

    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    const/4 v9, 0x0

    if-eqz v1, :cond_30

    const/16 v16, 0x1

    goto :goto_32

    :cond_30
    move/from16 v16, v9

    :goto_32
    if-eqz v16, :cond_3e

    .line 4254
    iget-object v1, v10, Lcom/android/server/pm/UserManagerService;->mMaintenanceModeServiceUtils:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    invoke-virtual {v1}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->openUserCreationSession()Z

    move-result v1

    if-nez v1, :cond_3e

    const/4 v0, 0x0

    return-object v0

    :cond_3e
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, v12

    move v15, v9

    move-object/from16 v9, p7

    .line 4260
    :try_start_50
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/UserManagerService;->createUserInternalUncheckedNoTracing(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object v1
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_65

    if-eqz v1, :cond_57

    const/4 v15, 0x1

    .line 4264
    :cond_57
    invoke-virtual {v10, v13, v14, v11, v15}, Lcom/android/server/pm/UserManagerService;->logUserCreateJourneyFinish(JIZ)V

    .line 4265
    invoke-virtual {v12}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v16, :cond_64

    .line 4268
    iget-object v0, v10, Lcom/android/server/pm/UserManagerService;->mMaintenanceModeServiceUtils:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->closeUserCreationSession()V

    :cond_64
    return-object v1

    :catchall_65
    move-exception v0

    move-object v1, v0

    .line 4264
    invoke-virtual {v10, v13, v14, v11, v15}, Lcom/android/server/pm/UserManagerService;->logUserCreateJourneyFinish(JIZ)V

    .line 4265
    invoke-virtual {v12}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v16, :cond_74

    .line 4268
    iget-object v0, v10, Lcom/android/server/pm/UserManagerService;->mMaintenanceModeServiceUtils:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->closeUserCreationSession()V

    .line 4271
    :cond_74
    throw v1
.end method

.method public final createUserInternalUncheckedNoTracing(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/Object;)Landroid/content/pm/UserInfo;
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$CheckedUserOperationException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    .line 4284
    iget-object v6, v1, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserTypeDetails;

    const/4 v7, 0x0

    if-nez v6, :cond_2e

    const-string v1, "UserManagerService"

    .line 4286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create user of invalid user type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    .line 4289
    :cond_2e
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 4290
    invoke-virtual {v6}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v8

    or-int v8, p3, v8

    .line 4291
    invoke-static {v8}, Lcom/android/server/pm/UserManagerService;->checkUserTypeConsistency(I)Z

    move-result v9

    if-nez v9, :cond_66

    const-string v1, "UserManagerService"

    .line 4292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot add user. Flags ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") and userTypeDetails ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") are inconsistent."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_66
    and-int/lit16 v9, v8, 0x800

    if-eqz v9, :cond_8a

    const-string v0, "UserManagerService"

    .line 4297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add user. Flags ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") indicated SYSTEM user, which cannot be created."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    .line 4301
    :cond_8a
    invoke-virtual {v6}, Lcom/android/server/pm/UserTypeDetails;->isEnabled()Z

    move-result v9

    const/4 v10, 0x6

    if-nez v9, :cond_aa

    .line 4302
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot add a user of disabled type "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v10}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    .line 4307
    :cond_aa
    iget-object v9, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v9

    .line 4308
    :try_start_ad
    iget-boolean v11, v1, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    if-eqz v11, :cond_b3

    or-int/lit16 v8, v8, 0x100

    .line 4311
    :cond_b3
    monitor-exit v9
    :try_end_b4
    .catchall {:try_start_ad .. :try_end_b4} :catchall_4d9

    .line 4313
    sget-boolean v9, Lcom/samsung/android/rune/PMRune;->UM_BMODE:Z

    const/high16 v11, 0x10000

    if-eqz v9, :cond_c7

    and-int v9, v8, v11

    if-eqz v9, :cond_c7

    .line 4314
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v9

    if-nez v9, :cond_c7

    .line 4315
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->enableBMode()V

    :cond_c7
    const/high16 v9, 0x80000

    and-int/2addr v9, v8

    if-eqz v9, :cond_ce

    const/4 v13, 0x1

    goto :goto_cf

    :cond_ce
    const/4 v13, 0x0

    :goto_cf
    if-eqz v13, :cond_ec

    .line 4323
    iget-object v9, v1, Lcom/android/server/pm/UserManagerService;->mMaintenanceModeServiceUtils:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    invoke-virtual {v9}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->isAllowedToManage()Z

    move-result v9

    if-nez v9, :cond_da

    return-object v7

    .line 4326
    :cond_da
    iget-object v9, v1, Lcom/android/server/pm/UserManagerService;->mMaintenanceModeServiceUtils:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    invoke-virtual {v9}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->doesUserIdExist()Z

    move-result v9

    if-eqz v9, :cond_e3

    return-object v7

    .line 4329
    :cond_e3
    iget-object v9, v1, Lcom/android/server/pm/UserManagerService;->mMaintenanceModeServiceUtils:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    invoke-virtual {v9}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->hasSystemFeature()Z

    move-result v9

    if-nez v9, :cond_ec

    return-object v7

    :cond_ec
    if-nez v3, :cond_101

    if-gez v2, :cond_101

    .line 4337
    invoke-static {v6}, Lcom/android/server/pm/UserManagerService;->isUserTypeEligibleForPreCreation(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v9

    if-eqz v9, :cond_101

    if-nez v13, :cond_101

    move-object/from16 v12, p1

    .line 4339
    invoke-virtual {v1, v0, v8, v12, v5}, Lcom/android/server/pm/UserManagerService;->convertPreCreatedUserIfPossible(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object v9

    if-eqz v9, :cond_103

    return-object v9

    :cond_101
    move-object/from16 v12, p1

    .line 4346
    :cond_103
    const-class v9, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 4347
    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 4348
    invoke-interface {v9}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->isMemoryLow()Z

    move-result v9

    if-eqz v9, :cond_117

    const-string v9, "Cannot add user. Not enough space on disk."

    const/4 v7, 0x5

    .line 4349
    invoke-virtual {v1, v9, v7}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    .line 4353
    :cond_117
    invoke-virtual {v6}, Lcom/android/server/pm/UserTypeDetails;->isProfile()Z

    move-result v7

    .line 4354
    invoke-static {v0}, Landroid/os/UserManager;->isUserTypeGuest(Ljava/lang/String;)Z

    move-result v17

    .line 4355
    invoke-static {v0}, Landroid/os/UserManager;->isUserTypeRestricted(Ljava/lang/String;)Z

    move-result v18

    .line 4356
    invoke-static {v0}, Landroid/os/UserManager;->isUserTypeDemo(Ljava/lang/String;)Z

    move-result v9

    and-int/2addr v11, v8

    if-eqz v11, :cond_12c

    const/4 v11, 0x1

    goto :goto_12d

    :cond_12c
    const/4 v11, 0x0

    .line 4360
    :goto_12d
    invoke-static {v0}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result v19

    const/high16 v20, 0x20000

    and-int v20, v8, v20

    if-eqz v20, :cond_139

    const/4 v14, 0x1

    goto :goto_13a

    :cond_139
    const/4 v14, 0x0

    :goto_13a
    const/high16 v20, 0x20000000

    and-int v20, v8, v20

    if-eqz v20, :cond_14a

    .line 4363
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    const/16 v15, 0x3e8

    if-ne v10, v15, :cond_14a

    const/4 v10, 0x1

    goto :goto_14b

    :cond_14a
    const/4 v10, 0x0

    :goto_14b
    if-eqz v14, :cond_150

    const/high16 v15, 0x40000

    or-int/2addr v8, v15

    .line 4380
    :cond_150
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    if-eqz v13, :cond_162

    .line 4387
    :try_start_156
    iget-object v15, v1, Lcom/android/server/pm/UserManagerService;->mMaintenanceModeServiceUtils:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    invoke-virtual {v15}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->notifyOtherServices()V
    :try_end_15b
    .catchall {:try_start_156 .. :try_end_15b} :catchall_15c

    goto :goto_162

    :catchall_15c
    move-exception v0

    move v14, v13

    const/4 v7, 0x0

    :goto_15f
    const/4 v9, 0x0

    goto/16 :goto_4c3

    .line 4390
    :cond_162
    :goto_162
    :try_start_162
    iget-object v15, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_165
    .catchall {:try_start_162 .. :try_end_165} :catchall_4bf

    const/16 v5, -0x2710

    if-eq v2, v5, :cond_194

    .line 4393
    :try_start_169
    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_16c
    .catchall {:try_start_169 .. :try_end_16c} :catchall_18e

    .line 4394
    :try_start_16c
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v23

    .line 4395
    monitor-exit v5
    :try_end_171
    .catchall {:try_start_16c .. :try_end_171} :catchall_18b

    if-nez v23, :cond_188

    .line 4397
    :try_start_173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot find user data for parent user "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x1

    invoke-virtual {v1, v5, v12}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V
    :try_end_188
    .catchall {:try_start_173 .. :try_end_188} :catchall_18e

    :cond_188
    move-object/from16 v5, v23

    goto :goto_195

    :catchall_18b
    move-exception v0

    .line 4395
    :try_start_18c
    monitor-exit v5
    :try_end_18d
    .catchall {:try_start_18c .. :try_end_18d} :catchall_18b

    :try_start_18d
    throw v0

    :catchall_18e
    move-exception v0

    move v14, v13

    const/4 v7, 0x0

    :goto_191
    const/4 v9, 0x0

    goto/16 :goto_4b9

    :cond_194
    const/4 v5, 0x0

    :goto_195
    if-nez v3, :cond_1b9

    .line 4402
    invoke-virtual {v1, v6}, Lcom/android/server/pm/UserManagerService;->canAddMoreUsersOfType(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v12

    if-nez v12, :cond_1b9

    if-nez v13, :cond_1b9

    .line 4404
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot add more users of type "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Maximum number of that type already exists."

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x6

    invoke-virtual {v1, v4, v12}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    :cond_1b9
    if-nez v17, :cond_1d1

    if-nez v19, :cond_1d1

    if-nez v9, :cond_1d1

    .line 4409
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->isUserLimitReached()Z

    move-result v4

    if-eqz v4, :cond_1d1

    if-nez v13, :cond_1d1

    if-nez v10, :cond_1d1

    if-nez v11, :cond_1d1

    const-string v4, "Cannot add user. Maximum user limit is reached."

    const/4 v9, 0x6

    .line 4415
    invoke-virtual {v1, v4, v9}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V
    :try_end_1d1
    .catchall {:try_start_18d .. :try_end_1d1} :catchall_18e

    :cond_1d1
    if-eqz v7, :cond_1ff

    if-nez v10, :cond_1ff

    const/4 v4, 0x0

    .line 4420
    :try_start_1d6
    invoke-virtual {v1, v0, v2, v4, v8}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(Ljava/lang/String;IZI)Z

    move-result v9
    :try_end_1da
    .catchall {:try_start_1d6 .. :try_end_1da} :catchall_1fa

    if-nez v9, :cond_1ff

    .line 4421
    :try_start_1dc
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot add more profiles of type "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " for user "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x6

    invoke-virtual {v1, v4, v9}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V
    :try_end_1f9
    .catchall {:try_start_1dc .. :try_end_1f9} :catchall_18e

    goto :goto_1ff

    :catchall_1fa
    move-exception v0

    move v9, v4

    move v14, v13

    goto/16 :goto_4b8

    .line 4427
    :cond_1ff
    :goto_1ff
    :try_start_1ff
    sget-boolean v4, Lcom/samsung/android/rune/PMRune;->UM_BMODE:Z
    :try_end_201
    .catchall {:try_start_1ff .. :try_end_201} :catchall_4b5

    if-eqz v4, :cond_21e

    if-eqz v11, :cond_21e

    :try_start_205
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->findCurrentBModeUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_21e

    .line 4429
    monitor-exit v15
    :try_end_20c
    .catchall {:try_start_205 .. :try_end_20c} :catchall_18e

    if-eqz v13, :cond_219

    .line 4656
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mMaintenanceModeServiceUtils:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->waitForOtherServices(Z)V

    const/4 v2, 0x0

    .line 4661
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService;->cleanUpMaintenanceModeUserDebris(Lcom/android/server/pm/UserManagerService$UserData;)V

    goto :goto_21a

    :cond_219
    const/4 v2, 0x0

    .line 4665
    :goto_21a
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_21e
    if-eqz v18, :cond_22e

    .line 4433
    :try_start_220
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v4

    if-nez v4, :cond_22e

    if-eqz v2, :cond_22e

    const-string v4, "Cannot add restricted profile - parent user must be owner"

    const/4 v9, 0x1

    .line 4435
    invoke-virtual {v1, v4, v9}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    :cond_22e
    if-eqz v18, :cond_25b

    .line 4439
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v4

    if-eqz v4, :cond_25b

    if-nez v5, :cond_23e

    const-string v4, "Cannot add restricted profile - parent user must be specified"

    const/4 v9, 0x1

    .line 4441
    invoke-virtual {v1, v4, v9}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    .line 4445
    :cond_23e
    iget-object v4, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v4

    if-nez v4, :cond_25b

    .line 4446
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot add restricted profile - profiles cannot be created for the specified parent user id "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    invoke-virtual {v1, v4, v9}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V
    :try_end_25b
    .catchall {:try_start_220 .. :try_end_25b} :catchall_18e

    :cond_25b
    if-eqz v10, :cond_292

    .line 4454
    :try_start_25d
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService;->canAddMoreDualApp(I)Z

    move-result v4

    if-nez v4, :cond_292

    const-string v0, "UserManagerService"

    .line 4455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot add more dual app for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4456
    monitor-exit v15
    :try_end_27a
    .catchall {:try_start_25d .. :try_end_27a} :catchall_28c

    if-eqz v13, :cond_287

    .line 4656
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mMaintenanceModeServiceUtils:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->waitForOtherServices(Z)V

    const/4 v4, 0x0

    .line 4661
    invoke-virtual {v1, v4}, Lcom/android/server/pm/UserManagerService;->cleanUpMaintenanceModeUserDebris(Lcom/android/server/pm/UserManagerService$UserData;)V

    goto :goto_288

    :cond_287
    const/4 v4, 0x0

    .line 4665
    :goto_288
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :catchall_28c
    move-exception v0

    const/4 v4, 0x0

    move-object v7, v4

    move v14, v13

    goto/16 :goto_191

    :cond_292
    const/4 v4, 0x0

    if-eqz v13, :cond_299

    const/16 v9, 0x4d

    :goto_297
    move v14, v9

    goto :goto_29e

    .line 4469
    :cond_299
    :try_start_299
    invoke-virtual {v1, v14, v10}, Lcom/android/server/pm/UserManagerService;->getNextAvailableId(ZZ)I

    move-result v9

    goto :goto_297

    :goto_29e
    const-string v9, "UserManagerService"

    .line 4474
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Creating user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " of type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4475
    invoke-static {v14}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 4477
    iget-object v12, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_2c6
    .catchall {:try_start_299 .. :try_end_2c6} :catchall_4b5

    if-eqz v5, :cond_2db

    .line 4479
    :try_start_2c8
    iget-object v9, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v9
    :try_end_2ce
    .catchall {:try_start_2c8 .. :try_end_2ce} :catchall_2d3

    if-eqz v9, :cond_2db

    or-int/lit16 v8, v8, 0x100

    goto :goto_2db

    :catchall_2d3
    move-exception v0

    move-object v7, v4

    move-object/from16 v19, v12

    move v14, v13

    :goto_2d8
    const/4 v9, 0x0

    goto/16 :goto_4b1

    :cond_2db
    :goto_2db
    if-eqz v3, :cond_2df

    and-int/lit16 v8, v8, -0x101

    :cond_2df
    move/from16 v16, v8

    .line 4490
    :try_start_2e1
    new-instance v11, Landroid/content/pm/UserInfo;
    :try_end_2e3
    .catchall {:try_start_2e1 .. :try_end_2e3} :catchall_4ab

    const/16 v19, 0x0

    move-object v8, v11

    move v9, v14

    move-object/from16 v10, p1

    move-object v4, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v12

    move/from16 v12, v16

    move/from16 v24, v13

    move-object v13, v0

    :try_start_2f3
    invoke-direct/range {v8 .. v13}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 4497
    iget v8, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iput v8, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 4500
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getCreationTime()J

    move-result-wide v8

    iput-wide v8, v4, Landroid/content/pm/UserInfo;->creationTime:J

    const/4 v8, 0x1

    .line 4501
    iput-boolean v8, v4, Landroid/content/pm/UserInfo;->partial:Z

    .line 4502
    iput-boolean v3, v4, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 4503
    sget-object v8, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iput-object v8, v4, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 4504
    invoke-virtual {v6}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v8
    :try_end_311
    .catchall {:try_start_2f3 .. :try_end_311} :catchall_4a7

    if-eqz v8, :cond_323

    const/16 v8, -0x2710

    if-eq v2, v8, :cond_323

    .line 4505
    :try_start_317
    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/UserManagerService;->getFreeProfileBadgeLU(ILjava/lang/String;)I

    move-result v8

    iput v8, v4, Landroid/content/pm/UserInfo;->profileBadge:I
    :try_end_31d
    .catchall {:try_start_317 .. :try_end_31d} :catchall_31e

    goto :goto_323

    :catchall_31e
    move-exception v0

    move/from16 v14, v24

    const/4 v7, 0x0

    goto :goto_2d8

    .line 4507
    :cond_323
    :goto_323
    :try_start_323
    new-instance v8, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v8}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V
    :try_end_328
    .catchall {:try_start_323 .. :try_end_328} :catchall_4a7

    .line 4508
    :try_start_328
    iput-object v4, v8, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4509
    iget-object v9, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v14, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4510
    monitor-exit v19
    :try_end_330
    .catchall {:try_start_328 .. :try_end_330} :catchall_4a1

    .line 4511
    :try_start_330
    invoke-virtual {v1, v8}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 4512
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V
    :try_end_336
    .catchall {:try_start_330 .. :try_end_336} :catchall_49b

    if-eqz v5, :cond_36d

    if-eqz v7, :cond_356

    .line 4515
    :try_start_33a
    iget-object v7, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v7, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v10, -0x2710

    if-ne v9, v10, :cond_349

    .line 4516
    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    iput v9, v7, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 4517
    invoke-virtual {v1, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 4519
    :cond_349
    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    iput v5, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    goto :goto_36d

    :catchall_350
    move-exception v0

    move-object v7, v8

    move/from16 v14, v24

    goto/16 :goto_191

    :cond_356
    if-eqz v18, :cond_36d

    .line 4521
    iget-object v7, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v7, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    const/16 v10, -0x2710

    if-ne v9, v10, :cond_367

    .line 4522
    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    iput v9, v7, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 4523
    invoke-virtual {v1, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 4525
    :cond_367
    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iput v5, v4, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I
    :try_end_36d
    .catchall {:try_start_33a .. :try_end_36d} :catchall_350

    .line 4528
    :cond_36d
    :goto_36d
    :try_start_36d
    monitor-exit v15
    :try_end_36e
    .catchall {:try_start_36d .. :try_end_36e} :catchall_49b

    :try_start_36e
    const-string v5, "createUserKey"

    move-object/from16 v7, p7

    .line 4543
    invoke-virtual {v7, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4544
    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v9, Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 4545
    iget v9, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v10

    invoke-virtual {v5, v14, v9, v10}, Landroid/os/storage/StorageManager;->createUserKey(IIZ)V

    .line 4546
    invoke-virtual/range {p7 .. p7}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v5, "prepareUserData"

    .line 4548
    invoke-virtual {v7, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4549
    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    iget v9, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v10, 0x3

    invoke-virtual {v5, v14, v9, v10}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    .line 4551
    invoke-virtual/range {p7 .. p7}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4573
    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    .line 4574
    invoke-virtual {v5, v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getInstallablePackagesForUserType(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    const-string v5, "PM.createNewUser"

    .line 4575
    invoke-virtual {v7, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4576
    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v9, p6

    invoke-virtual {v5, v14, v0, v9}, Lcom/android/server/pm/PackageManagerService;->createNewUser(ILjava/util/Set;[Ljava/lang/String;)V

    .line 4577
    invoke-virtual/range {p7 .. p7}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_3b1
    .catchall {:try_start_36e .. :try_end_3b1} :catchall_495

    const/4 v5, 0x0

    .line 4579
    :try_start_3b2
    iput-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z
    :try_end_3b4
    .catchall {:try_start_3b2 .. :try_end_3b4} :catchall_490

    .line 4580
    :try_start_3b4
    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3b7
    .catchall {:try_start_3b4 .. :try_end_3b7} :catchall_495

    .line 4581
    :try_start_3b7
    invoke-virtual {v1, v8}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 4582
    monitor-exit v5
    :try_end_3bb
    .catchall {:try_start_3b7 .. :try_end_3bb} :catchall_486

    .line 4583
    :try_start_3bb
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 4585
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_3c3
    .catchall {:try_start_3bb .. :try_end_3c3} :catchall_495

    if-eqz v17, :cond_3d8

    .line 4588
    :try_start_3c5
    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v5
    :try_end_3c8
    .catchall {:try_start_3c5 .. :try_end_3c8} :catchall_3d2

    .line 4589
    :try_start_3c8
    iget-object v9, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 4590
    monitor-exit v5

    goto :goto_3db

    :catchall_3cf
    move-exception v0

    monitor-exit v5
    :try_end_3d1
    .catchall {:try_start_3c8 .. :try_end_3d1} :catchall_3cf

    :try_start_3d1
    throw v0
    :try_end_3d2
    .catchall {:try_start_3d1 .. :try_end_3d2} :catchall_3d2

    :catchall_3d2
    move-exception v0

    move-object v7, v8

    move/from16 v14, v24

    goto/16 :goto_15f

    .line 4592
    :cond_3d8
    :try_start_3d8
    invoke-virtual {v6, v0}, Lcom/android/server/pm/UserTypeDetails;->addDefaultRestrictionsTo(Landroid/os/Bundle;)V

    .line 4594
    :goto_3db
    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3de
    .catchall {:try_start_3d8 .. :try_end_3de} :catchall_495

    .line 4595
    :try_start_3de
    iget-object v9, v1, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v9, v14, v0}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 4596
    monitor-exit v5
    :try_end_3e4
    .catchall {:try_start_3de .. :try_end_3e4} :catchall_47e

    .line 4598
    :try_start_3e4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PM.onNewUserCreated-"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4599
    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    :try_end_3fa
    .catchall {:try_start_3e4 .. :try_end_3fa} :catchall_495

    const/4 v9, 0x0

    :try_start_3fb
    invoke-virtual {v5, v14, v9}, Lcom/android/server/pm/PackageManagerService;->onNewUserCreated(IZ)V

    .line 4600
    invoke-virtual/range {p7 .. p7}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4601
    invoke-virtual {v1, v6, v14}, Lcom/android/server/pm/UserManagerService;->applyDefaultUserSettings(Lcom/android/server/pm/UserTypeDetails;I)V

    .line 4602
    invoke-virtual {v1, v14, v6, v0, v2}, Lcom/android/server/pm/UserManagerService;->setDefaultCrossProfileIntentFilters(ILcom/android/server/pm/UserTypeDetails;Landroid/os/Bundle;I)V
    :try_end_407
    .catchall {:try_start_3fb .. :try_end_407} :catchall_47c

    if-eqz v3, :cond_44c

    :try_start_409
    const-string v0, "UserManagerService"

    .line 4615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "starting pre-created user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4616
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0
    :try_end_428
    .catchall {:try_start_409 .. :try_end_428} :catchall_445

    .line 4618
    :try_start_428
    invoke-interface {v0, v14}, Landroid/app/IActivityManager;->startUserInBackground(I)Z
    :try_end_42b
    .catch Landroid/os/RemoteException; {:try_start_428 .. :try_end_42b} :catch_42c
    .catchall {:try_start_428 .. :try_end_42b} :catchall_445

    goto :goto_451

    :catch_42c
    move-exception v0

    move-object v2, v0

    :try_start_42e
    const-string v0, "UserManagerService"

    .line 4620
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not start pre-created user "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_444
    .catchall {:try_start_42e .. :try_end_444} :catchall_445

    goto :goto_451

    :catchall_445
    move-exception v0

    move-object v7, v8

    move/from16 v9, v24

    move v14, v9

    goto/16 :goto_4c3

    :cond_44c
    move-object/from16 v0, p8

    .line 4628
    :try_start_44e
    invoke-virtual {v1, v4, v0}, Lcom/android/server/pm/UserManagerService;->dispatchUserAdded(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V

    .line 4648
    :goto_451
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_ENABLE_GMS:Z
    :try_end_453
    .catchall {:try_start_44e .. :try_end_453} :catchall_476

    if-eqz v0, :cond_45e

    .line 4649
    :try_start_455
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mChinaGmsToggleUtils:Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

    if-eqz v0, :cond_45e

    .line 4650
    invoke-virtual {v0, v14}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->setGmsEnabledSetting(I)V
    :try_end_45e
    .catchall {:try_start_455 .. :try_end_45e} :catchall_445

    :cond_45e
    move/from16 v14, v24

    if-eqz v14, :cond_472

    .line 4656
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mMaintenanceModeServiceUtils:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    invoke-virtual {v0, v14}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->waitForOtherServices(Z)V

    if-eqz v14, :cond_46f

    .line 4658
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mMaintenanceModeServiceUtils:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->finishUserCreation()V

    goto :goto_472

    .line 4661
    :cond_46f
    invoke-virtual {v1, v8}, Lcom/android/server/pm/UserManagerService;->cleanUpMaintenanceModeUserDebris(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 4665
    :cond_472
    :goto_472
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :catchall_476
    move-exception v0

    move/from16 v14, v24

    move-object v7, v8

    move v9, v14

    goto :goto_4c3

    :catchall_47c
    move-exception v0

    goto :goto_492

    :catchall_47e
    move-exception v0

    move/from16 v14, v24

    const/4 v9, 0x0

    .line 4596
    :goto_482
    :try_start_482
    monitor-exit v5
    :try_end_483
    .catchall {:try_start_482 .. :try_end_483} :catchall_484

    :try_start_483
    throw v0
    :try_end_484
    .catchall {:try_start_483 .. :try_end_484} :catchall_48c

    :catchall_484
    move-exception v0

    goto :goto_482

    :catchall_486
    move-exception v0

    move/from16 v14, v24

    const/4 v9, 0x0

    .line 4582
    :goto_48a
    :try_start_48a
    monitor-exit v5
    :try_end_48b
    .catchall {:try_start_48a .. :try_end_48b} :catchall_48e

    :try_start_48b
    throw v0
    :try_end_48c
    .catchall {:try_start_48b .. :try_end_48c} :catchall_48c

    :catchall_48c
    move-exception v0

    goto :goto_499

    :catchall_48e
    move-exception v0

    goto :goto_48a

    :catchall_490
    move-exception v0

    move v9, v5

    :goto_492
    move/from16 v14, v24

    goto :goto_499

    :catchall_495
    move-exception v0

    move/from16 v14, v24

    const/4 v9, 0x0

    :goto_499
    move-object v7, v8

    goto :goto_4c3

    :catchall_49b
    move-exception v0

    move/from16 v14, v24

    const/4 v9, 0x0

    move-object v7, v8

    goto :goto_4b9

    :catchall_4a1
    move-exception v0

    move/from16 v14, v24

    const/4 v9, 0x0

    move-object v7, v8

    goto :goto_4b1

    :catchall_4a7
    move-exception v0

    move/from16 v14, v24

    goto :goto_4af

    :catchall_4ab
    move-exception v0

    move-object/from16 v19, v12

    move v14, v13

    :goto_4af
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 4510
    :goto_4b1
    :try_start_4b1
    monitor-exit v19
    :try_end_4b2
    .catchall {:try_start_4b1 .. :try_end_4b2} :catchall_4b3

    :try_start_4b2
    throw v0

    :catchall_4b3
    move-exception v0

    goto :goto_4b1

    :catchall_4b5
    move-exception v0

    move v14, v13

    const/4 v9, 0x0

    :goto_4b8
    const/4 v7, 0x0

    .line 4528
    :goto_4b9
    monitor-exit v15
    :try_end_4ba
    .catchall {:try_start_4b2 .. :try_end_4ba} :catchall_4bd

    :try_start_4ba
    throw v0
    :try_end_4bb
    .catchall {:try_start_4ba .. :try_end_4bb} :catchall_4bb

    :catchall_4bb
    move-exception v0

    goto :goto_4c3

    :catchall_4bd
    move-exception v0

    goto :goto_4b9

    :catchall_4bf
    move-exception v0

    move v14, v13

    const/4 v9, 0x0

    const/4 v7, 0x0

    :goto_4c3
    if-eqz v14, :cond_4d5

    .line 4656
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mMaintenanceModeServiceUtils:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    invoke-virtual {v2, v9}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->waitForOtherServices(Z)V

    if-eqz v9, :cond_4d2

    .line 4658
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mMaintenanceModeServiceUtils:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    invoke-virtual {v1}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->finishUserCreation()V

    goto :goto_4d5

    .line 4661
    :cond_4d2
    invoke-virtual {v1, v7}, Lcom/android/server/pm/UserManagerService;->cleanUpMaintenanceModeUserDebris(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 4665
    :cond_4d5
    :goto_4d5
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4666
    throw v0

    :catchall_4d9
    move-exception v0

    .line 4311
    :try_start_4da
    monitor-exit v9
    :try_end_4db
    .catchall {:try_start_4da .. :try_end_4db} :catchall_4d9

    throw v0
.end method

.method public createUserWithAttributes(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/os/UserHandle;
    .registers 15

    .line 4177
    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    .line 4179
    invoke-virtual {p0, p5, p6}, Lcom/android/server/pm/UserManagerService;->someUserHasAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    const/16 v5, -0x2710

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 4186
    :try_start_10
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1
    :try_end_14
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_10 .. :try_end_14} :catch_35

    if-eqz p1, :cond_2e

    if-eqz p4, :cond_1f

    .line 4197
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    iget p3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, p3, p4}, Lcom/android/server/pm/UserManagerService$LocalService;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 4200
    :cond_1f
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;->setSeedAccountDataNoChecks(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V

    .line 4202
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    .line 4190
    :cond_2e
    :try_start_2e
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0
    :try_end_35
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_2e .. :try_end_35} :catch_35

    :catch_35
    move-exception p0

    .line 4193
    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0

    .line 4180
    :cond_3b
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0
.end method

.method public createUserWithThrow(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 4143
    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    const/16 v4, -0x2710

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 4145
    :try_start_a
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_e
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_a .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 4148
    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public final deleteUserFallback(I)V
    .registers 4

    .line 3656
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".xml"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".fallback"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3657
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 3658
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_26

    :catch_26
    :cond_26
    return-void
.end method

.method public final disableBMode()V
    .registers 3

    .line 5217
    invoke-static {}, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->getConfigMaxMultiUsers()I

    move-result p0

    .line 5218
    invoke-static {}, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->getConfigStatusMultiUser()Z

    move-result v0

    .line 5219
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.show_multiuserui"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5220
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "persist.sys.max_users"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "UserManagerService"

    const-string v0, "Disabling multi user due to BMODE"

    .line 5221
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dispatchUserAdded(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .registers 6

    .line 4847
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 4848
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 4849
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;

    invoke-interface {v2, p1, p2}, Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;->onUserCreated(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4851
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_81

    .line 4854
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.USER_ADDED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    .line 4855
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.user_handle"

    .line 4856
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.USER"

    .line 4859
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4860
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.MANAGE_USERS"

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 4862
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string/jumbo v0, "users_guest_created"

    goto :goto_5b

    .line 4863
    :cond_4e
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v0

    if-eqz v0, :cond_58

    const-string/jumbo v0, "users_demo_created"

    goto :goto_5b

    :cond_58
    const-string/jumbo v0, "users_user_created"

    :goto_5b
    const/4 v1, 0x1

    .line 4862
    invoke-static {p2, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4865
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p1

    if-nez p1, :cond_80

    .line 4867
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "user_switcher_enabled"

    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_80

    .line 4869
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "user_switcher_enabled"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_80
    return-void

    :catchall_81
    move-exception p0

    .line 4851
    :try_start_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move-object/from16 v1, p3

    .line 6619
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string v3, "UserManagerService"

    invoke-static {v2, v3, v9}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    if-nez v2, :cond_11

    return-void

    .line 6621
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 6622
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 6624
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "klm_eula_shown"

    const/4 v14, 0x0

    invoke-static {v2, v3, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 6626
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x1

    if-eqz v1, :cond_4e

    .line 6628
    array-length v2, v1

    if-lez v2, :cond_4e

    aget-object v2, v1, v14

    const-string v3, "--user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 6629
    aget-object v1, v1, v7

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, v16

    move-wide v5, v10

    move-wide v7, v12

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/UserManagerService;->dumpUser(Ljava/io/PrintWriter;ILjava/lang/StringBuilder;JJ)V

    return-void

    .line 6633
    :cond_4e
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 6634
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    const-string v2, "Current user: "

    .line 6635
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v1, :cond_65

    .line 6637
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_6a

    :cond_65
    const-string v1, "N/A"

    .line 6639
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6642
    :goto_6a
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 6643
    iget-object v8, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 6644
    :try_start_70
    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_379

    :try_start_73
    const-string v1, "Users:"

    .line 6645
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v6, v14

    .line 6646
    :goto_79
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v6, v1, :cond_af

    .line 6647
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;
    :try_end_8a
    .catchall {:try_start_73 .. :try_end_8a} :catchall_370

    if-nez v3, :cond_94

    move-object/from16 v17, v5

    move/from16 v18, v6

    move v14, v7

    move-object/from16 v19, v8

    goto :goto_a6

    :cond_94
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, v16

    move-object/from16 v17, v5

    move/from16 v18, v6

    move-wide v5, v10

    move v14, v7

    move-object/from16 v19, v8

    move-wide v7, v12

    .line 6651
    :try_start_a3
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/UserManagerService;->dumpUserLocked(Ljava/io/PrintWriter;Lcom/android/server/pm/UserManagerService$UserData;Ljava/lang/StringBuilder;JJ)V

    :goto_a6
    add-int/lit8 v6, v18, 0x1

    move v7, v14

    move-object/from16 v5, v17

    move-object/from16 v8, v19

    const/4 v14, 0x0

    goto :goto_79

    :cond_af
    move-object/from16 v17, v5

    move v14, v7

    move-object/from16 v19, v8

    .line 6653
    monitor-exit v17
    :try_end_b5
    .catchall {:try_start_a3 .. :try_end_b5} :catchall_377

    .line 6655
    :try_start_b5
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 6657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  agree Knox Privacy Policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v15, v14, :cond_c8

    const-string/jumbo v2, "true"

    goto :goto_ca

    :cond_c8
    const-string v2, "false"

    :goto_ca
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6658
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v1, "Device properties:"

    .line 6660
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Device owner id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6662
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  Guest restrictions:"

    .line 6663
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6664
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v1
    :try_end_fd
    .catchall {:try_start_b5 .. :try_end_fd} :catchall_37e

    :try_start_fd
    const-string v2, "    "

    .line 6665
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-static {v9, v2, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6666
    monitor-exit v1
    :try_end_105
    .catchall {:try_start_fd .. :try_end_105} :catchall_36d

    .line 6667
    :try_start_105
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_108
    .catchall {:try_start_105 .. :try_end_108} :catchall_37e

    .line 6668
    :try_start_108
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 6669
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Device managed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6670
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_142

    .line 6671
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 6672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Recently removed userIds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6674
    :cond_142
    monitor-exit v1
    :try_end_143
    .catchall {:try_start_108 .. :try_end_143} :catchall_36a

    .line 6675
    :try_start_143
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v1
    :try_end_146
    .catchall {:try_start_143 .. :try_end_146} :catchall_37e

    :try_start_146
    const-string v2, "  Started users state: ["

    .line 6676
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6677
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_154
    if-ge v3, v2, :cond_181

    .line 6679
    iget-object v4, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 6680
    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 6681
    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x3d

    .line 6682
    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 6683
    invoke-static {v5}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v4, v2, -0x1

    if-eq v3, v4, :cond_17e

    const-string v4, ", "

    .line 6684
    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_17e
    add-int/lit8 v3, v3, 0x1

    goto :goto_154

    :cond_181
    const/16 v2, 0x5d

    .line 6686
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 6687
    monitor-exit v1
    :try_end_187
    .catchall {:try_start_146 .. :try_end_187} :catchall_367

    .line 6688
    :try_start_187
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_18a
    .catchall {:try_start_187 .. :try_end_18a} :catchall_37e

    :try_start_18a
    const-string v2, "  Cached user IDs: "

    .line 6689
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6690
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  Cached user IDs (including pre-created): "

    .line 6691
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6692
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mUserIdsIncludingPreCreated:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6693
    monitor-exit v1
    :try_end_1a7
    .catchall {:try_start_18a .. :try_end_1a7} :catchall_364

    .line 6695
    :try_start_1a7
    monitor-exit v19
    :try_end_1a8
    .catchall {:try_start_1a7 .. :try_end_1a8} :catchall_37e

    .line 6698
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 6699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Max users: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (limit reached: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->isUserLimitReached()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Supports switchable users: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  All guests ephemeral: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110165

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Force ephemeral users: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Is split-system user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Is headless-system mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  User version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Owner name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getOwnerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6713
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v1, "Number of listeners for"

    .line 6714
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6715
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 6716
    :try_start_296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  restrictions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6717
    monitor-exit v1
    :try_end_2b1
    .catchall {:try_start_296 .. :try_end_2b1} :catchall_361

    .line 6718
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 6719
    :try_start_2b4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  user lifecycle events: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6720
    monitor-exit v2
    :try_end_2cf
    .catchall {:try_start_2b4 .. :try_end_2cf} :catchall_35e

    .line 6723
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 6724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User types version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User types ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " types):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 6726
    :goto_308
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v14, v1, :cond_341

    .line 6727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6728
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v1, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserTypeDetails;

    const-string v2, "        "

    invoke-virtual {v1, v9, v2}, Lcom/android/server/pm/UserTypeDetails;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_308

    .line 6733
    :cond_341
    new-instance v1, Landroid/util/IndentingPrintWriter;

    invoke-direct {v1, v9}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 6736
    :try_start_346
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6737
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserSystemPackageInstaller;->dump(Landroid/util/IndentingPrintWriter;)V
    :try_end_34e
    .catchall {:try_start_346 .. :try_end_34e} :catchall_352

    .line 6741
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->close()V

    return-void

    :catchall_352
    move-exception v0

    move-object v2, v0

    .line 6733
    :try_start_354
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_357
    .catchall {:try_start_354 .. :try_end_357} :catchall_358

    goto :goto_35d

    :catchall_358
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_35d
    throw v2

    :catchall_35e
    move-exception v0

    .line 6720
    :try_start_35f
    monitor-exit v2
    :try_end_360
    .catchall {:try_start_35f .. :try_end_360} :catchall_35e

    throw v0

    :catchall_361
    move-exception v0

    .line 6717
    :try_start_362
    monitor-exit v1
    :try_end_363
    .catchall {:try_start_362 .. :try_end_363} :catchall_361

    throw v0

    :catchall_364
    move-exception v0

    .line 6693
    :try_start_365
    monitor-exit v1
    :try_end_366
    .catchall {:try_start_365 .. :try_end_366} :catchall_364

    :try_start_366
    throw v0
    :try_end_367
    .catchall {:try_start_366 .. :try_end_367} :catchall_37e

    :catchall_367
    move-exception v0

    .line 6687
    :try_start_368
    monitor-exit v1
    :try_end_369
    .catchall {:try_start_368 .. :try_end_369} :catchall_367

    :try_start_369
    throw v0
    :try_end_36a
    .catchall {:try_start_369 .. :try_end_36a} :catchall_37e

    :catchall_36a
    move-exception v0

    .line 6674
    :try_start_36b
    monitor-exit v1
    :try_end_36c
    .catchall {:try_start_36b .. :try_end_36c} :catchall_36a

    :try_start_36c
    throw v0
    :try_end_36d
    .catchall {:try_start_36c .. :try_end_36d} :catchall_37e

    :catchall_36d
    move-exception v0

    .line 6666
    :try_start_36e
    monitor-exit v1
    :try_end_36f
    .catchall {:try_start_36e .. :try_end_36f} :catchall_36d

    :try_start_36f
    throw v0
    :try_end_370
    .catchall {:try_start_36f .. :try_end_370} :catchall_37e

    :catchall_370
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v19, v8

    .line 6653
    :goto_375
    :try_start_375
    monitor-exit v17
    :try_end_376
    .catchall {:try_start_375 .. :try_end_376} :catchall_377

    :try_start_376
    throw v0

    :catchall_377
    move-exception v0

    goto :goto_375

    :catchall_379
    move-exception v0

    move-object/from16 v19, v8

    .line 6695
    :goto_37c
    monitor-exit v19
    :try_end_37d
    .catchall {:try_start_376 .. :try_end_37d} :catchall_37e

    throw v0

    :catchall_37e
    move-exception v0

    goto :goto_37c
.end method

.method public final dumpUser(Ljava/io/PrintWriter;ILjava/lang/StringBuilder;JJ)V
    .registers 18

    move-object v0, p0

    move-object v2, p1

    const/4 v1, -0x2

    move v3, p2

    if-ne v3, v1, :cond_1b

    .line 6747
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 6748
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    if-nez v1, :cond_16

    const-string v0, "Cannot determine current user"

    .line 6750
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6753
    :cond_16
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v1

    goto :goto_1c

    :cond_1b
    move v1, v3

    .line 6756
    :goto_1c
    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v9

    .line 6757
    :try_start_1f
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v3, :cond_44

    .line 6759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6760
    monitor-exit v9

    return-void

    :cond_44
    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    .line 6762
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/UserManagerService;->dumpUserLocked(Ljava/io/PrintWriter;Lcom/android/server/pm/UserManagerService$UserData;Ljava/lang/StringBuilder;JJ)V

    .line 6763
    monitor-exit v9

    return-void

    :catchall_4f
    move-exception v0

    monitor-exit v9
    :try_end_51
    .catchall {:try_start_1f .. :try_end_51} :catchall_4f

    throw v0
.end method

.method public final dumpUserLocked(Ljava/io/PrintWriter;Lcom/android/server/pm/UserManagerService$UserData;Ljava/lang/StringBuilder;JJ)V
    .registers 19
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    move-object v0, p0

    move-object v7, p1

    move-object v8, p2

    .line 6769
    iget-object v9, v8, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 6770
    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    .line 6771
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v1, :cond_3b

    const-string v1, "  "

    .line 6772
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserInfo{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":xxx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Landroid/content/pm/UserInfo;->flags:I

    .line 6774
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6773
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_43

    :cond_3b
    const-string v1, "  "

    .line 6776
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :goto_43
    const-string v1, " serialNo="

    .line 6778
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v9, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " isPrimary="

    .line 6779
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 6780
    iget v1, v9, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v2, v9, Landroid/content/pm/UserInfo;->id:I

    if-eq v1, v2, :cond_6d

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_6d

    const-string v1, " parentId="

    .line 6782
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v9, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 6785
    :cond_6d
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7a

    const-string v1, " <removing> "

    .line 6786
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6788
    :cond_7a
    iget-boolean v1, v9, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_83

    const-string v1, " <partial>"

    .line 6789
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6791
    :cond_83
    iget-boolean v1, v9, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v1, :cond_8c

    const-string v1, " <pre-created>"

    .line 6792
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6794
    :cond_8c
    iget-boolean v1, v9, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    if-eqz v1, :cond_95

    const-string v1, " <converted>"

    .line 6795
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6797
    :cond_95
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "    Type: "

    .line 6798
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v9, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Flags: "

    .line 6799
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v9, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6800
    iget v1, v9, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v1}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    State: "

    .line 6801
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6803
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v1

    .line 6804
    :try_start_c7
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    const/4 v3, -0x1

    invoke-virtual {v2, v10, v3}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(II)I

    move-result v2

    .line 6805
    monitor-exit v1
    :try_end_cf
    .catchall {:try_start_c7 .. :try_end_cf} :catchall_25e

    .line 6806
    invoke-static {v2}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Created: "

    .line 6807
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6808
    iget-wide v5, v9, Landroid/content/pm/UserInfo;->creationTime:J

    move-object v1, p1

    move-object v2, p3

    move-wide v3, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    const-string v1, "    Last logged in: "

    .line 6810
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6811
    iget-wide v5, v9, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    const-string v1, "    Last logged in fingerprint: "

    .line 6813
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6814
    iget-object v1, v9, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Start time: "

    .line 6816
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6817
    iget-wide v5, v8, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    move-object v1, p1

    move-wide/from16 v3, p6

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    const-string v1, "    Unlock time: "

    .line 6819
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6820
    iget-wide v5, v8, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    const-string v1, "    Has profile owner: "

    .line 6822
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6823
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v1, "    Restrictions:"

    .line 6824
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6825
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_126
    const-string v1, "      "

    .line 6826
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v4, v9, Landroid/content/pm/UserInfo;->id:I

    .line 6827
    invoke-virtual {v3, v4}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v3

    .line 6826
    invoke-static {p1, v1, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "    Device policy global restrictions:"

    .line 6828
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      "

    .line 6829
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v4, v9, Landroid/content/pm/UserInfo;->id:I

    .line 6831
    invoke-virtual {v3, v4}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v3

    .line 6829
    invoke-static {p1, v1, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "    Device policy local restrictions:"

    .line 6832
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6833
    iget v1, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyLocalRestrictionsForTargetUserLR(I)Lcom/android/server/pm/RestrictionsSet;

    move-result-object v1

    const-string v3, "      "

    .line 6834
    invoke-virtual {v1, p1, v3}, Lcom/android/server/pm/RestrictionsSet;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string v1, "    Effective restrictions:"

    .line 6835
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      "

    .line 6836
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v3, v9, Landroid/content/pm/UserInfo;->id:I

    .line 6838
    invoke-virtual {v0, v3}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 6836
    invoke-static {p1, v1, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6839
    monitor-exit v2
    :try_end_168
    .catchall {:try_start_126 .. :try_end_168} :catchall_25b

    .line 6841
    iget-object v0, v8, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz v0, :cond_185

    .line 6842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Account name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6843
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6846
    :cond_185
    iget-object v0, v8, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v0, :cond_1cb

    .line 6847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Seed account name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6848
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6849
    iget-object v0, v8, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v0, :cond_1bf

    .line 6850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "         account type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6851
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6853
    :cond_1bf
    iget-object v0, v8, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_1cb

    const-string v0, "         account options exist"

    .line 6854
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6855
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6859
    :cond_1cb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Ignore errors preparing storage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6860
    invoke-virtual {p2}, Lcom/android/server/pm/UserManagerService$UserData;->getIgnorePrepareStorageErrors()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6859
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6862
    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_207

    const-string v0, "    KNOX attributes: "

    .line 6863
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6864
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6865
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v0

    if-eqz v0, :cond_204

    const-string v0, " <PREMIUM> "

    .line 6866
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6868
    :cond_204
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6871
    :cond_207
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_25a

    const-string v0, "    KNOX flags: "

    .line 6872
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6873
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "    KNOX attributes: "

    .line 6875
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6876
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6877
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v0

    if-eqz v0, :cond_230

    const-string v0, " <PREMIUM> "

    .line 6878
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6880
    :cond_230
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v0

    if-eqz v0, :cond_257

    .line 6881
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isAdminLocked()Z

    move-result v0

    if-eqz v0, :cond_241

    const-string v0, " <admin locked> "

    .line 6882
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6884
    :cond_241
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isLicenseLocked()Z

    move-result v0

    if-eqz v0, :cond_24c

    const-string v0, " <license expired> "

    .line 6885
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6887
    :cond_24c
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isDeviceCompromised()Z

    move-result v0

    if-eqz v0, :cond_257

    const-string v0, " <device compromise detected> "

    .line 6888
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6891
    :cond_257
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_25a
    return-void

    :catchall_25b
    move-exception v0

    .line 6839
    :try_start_25c
    monitor-exit v2
    :try_end_25d
    .catchall {:try_start_25c .. :try_end_25d} :catchall_25b

    throw v0

    :catchall_25e
    move-exception v0

    .line 6805
    :try_start_25f
    monitor-exit v1
    :try_end_260
    .catchall {:try_start_25f .. :try_end_260} :catchall_25e

    throw v0
.end method

.method public final enableBMode()V
    .registers 3

    .line 5210
    invoke-static {}, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->getConfigMaxMultiUsers()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    const-string/jumbo v0, "persist.sys.show_multiuserui"

    const-string/jumbo v1, "true"

    .line 5211
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5212
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "persist.sys.max_users"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "UserManagerService"

    const-string v0, "Enabling multi user due to BMODE"

    .line 5213
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final enforceUserRestriction(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$CheckedUserOperationException;
        }
    .end annotation

    .line 7479
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 7480
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_1f

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_21

    :cond_1f
    const-string p2, ""

    :goto_21
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is enabled."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    .line 7482
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7483
    new-instance p1, Landroid/os/UserManager$CheckedUserOperationException;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Landroid/os/UserManager$CheckedUserOperationException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_3c
    return-void
.end method

.method public final ensureCanModifyQuietMode(Ljava/lang/String;IIZZ)V
    .registers 7

    .line 1357
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->verifyCallingPackage(Ljava/lang/String;I)V

    .line 1359
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    if-nez p4, :cond_4a

    if-nez p5, :cond_42

    .line 1370
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    invoke-virtual {p0, p4, p3}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result p0

    if-eqz p0, :cond_3a

    const-string p0, "android.permission.MODIFY_QUIET_MODE"

    .line 1374
    invoke-static {p0, p2}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_21

    return-void

    .line 1380
    :cond_21
    const-class p0, Landroid/content/pm/ShortcutServiceInternal;

    .line 1381
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutServiceInternal;

    if-eqz p0, :cond_32

    .line 1384
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ShortcutServiceInternal;->isForegroundDefaultLauncher(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_32

    return-void

    .line 1389
    :cond_32
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can\'t modify quiet mode, caller is neither foreground default launcher nor has MANAGE_USERS/MODIFY_QUIET_MODE permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1371
    :cond_3a
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "MANAGE_USERS permission is required to modify quiet mode for a different profile group."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1367
    :cond_42
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "MANAGE_USERS permission is required to disable quiet mode without credentials."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1363
    :cond_4a
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "MANAGE_USERS permission is required to start intent after disabling quiet mode."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public evictCredentialEncryptionKey(I)V
    .registers 4

    const-string p0, "evict CE key"

    .line 1553
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1554
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p0

    .line 1555
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1557
    :try_start_d
    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->restartUserInBackground(I)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_16
    .catchall {:try_start_d .. :try_end_10} :catchall_14

    .line 1561
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    goto :goto_1c

    :catch_16
    move-exception p0

    .line 1559
    :try_start_17
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_14

    .line 1561
    :goto_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1562
    throw p0
.end method

.method public exists(I)Z
    .registers 2

    .line 2039
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result p0

    return p0
.end method

.method public final fallbackToSingleUserLP()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPackagesLock",
            "mRestrictionsLock"
        }
    .end annotation

    .line 3527
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    .line 3528
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->onUserRemoved(I)V

    .line 3531
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3533
    :try_start_10
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/log/debug_corrupted_userlist.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3534
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-static {v2, v0}, Landroid/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)J

    const/16 v2, 0x1ff

    .line 3535
    invoke-static {v0, v2, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    const-string v0, "Copying the corrupted userlist file"

    .line 3536
    invoke-static {v0}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_26} :catch_26

    .line 3545
    :catch_26
    :cond_26
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "android.os.usertype.system.HEADLESS"

    goto :goto_31

    :cond_2f
    const-string v0, "android.os.usertype.full.SYSTEM"

    :goto_31
    move-object v6, v0

    .line 3547
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v0

    or-int/lit16 v5, v0, 0x813

    .line 3548
    new-instance v0, Landroid/content/pm/UserInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 3549
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    const/16 v1, 0xa

    .line 3550
    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    const/16 v1, 0x9

    .line 3551
    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 3552
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getUserTypeVersion()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    .line 3554
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    .line 3556
    :try_start_61
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070099

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 3558
    array-length v4, v3

    move v5, v2

    :goto_70
    if-ge v5, v4, :cond_89

    aget-object v6, v3, v5

    .line 3559
    invoke-static {v6}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7e

    const/4 v7, 0x1

    .line 3560
    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_7e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_61 .. :try_end_7e} :catch_81

    :cond_7e
    add-int/lit8 v5, v5, 0x1

    goto :goto_70

    :catch_81
    move-exception v3

    const-string v4, "UserManagerService"

    const-string v5, "Couldn\'t find resource: config_defaultFirstUserRestrictions"

    .line 3564
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3567
    :cond_89
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9c

    .line 3568
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3569
    :try_start_92
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v4, v2, v1}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 3571
    monitor-exit v3

    goto :goto_9c

    :catchall_99
    move-exception p0

    monitor-exit v3
    :try_end_9b
    .catchall {:try_start_92 .. :try_end_9b} :catchall_99

    throw p0

    .line 3574
    :cond_9c
    :goto_9c
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 3575
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 3577
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3578
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    return-void
.end method

.method public final findCurrentBModeUser()Landroid/content/pm/UserInfo;
    .registers 7

    .line 5225
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5226
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_2b

    .line 5228
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 5229
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v4

    if-eqz v4, :cond_28

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_28

    .line 5230
    monitor-exit v0

    return-object v3

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 5233
    :cond_2b
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public findCurrentGuestUser()Landroid/content/pm/UserInfo;
    .registers 7

    const-string v0, "findCurrentGuestUser"

    .line 5069
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 5070
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5071
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_38

    .line 5073
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 5074
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-eqz v4, :cond_35

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v4, :cond_35

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v4, :cond_35

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 5075
    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_35

    .line 5076
    monitor-exit v0

    return-object v3

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 5079
    :cond_38
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_3b
    move-exception p0

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public findCurrentMaintenanceModeUser()Landroid/content/pm/UserInfo;
    .registers 7

    .line 5127
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5128
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_2b

    .line 5130
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 5131
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isMaintenanceMode()Z

    move-result v4

    if-eqz v4, :cond_28

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_28

    .line 5132
    monitor-exit v0

    return-object v3

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 5135
    :cond_2b
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public final finishRemoveUser(I)V
    .registers 13

    const-string v0, "UserManagerService"

    .line 5576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishRemoveUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5579
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5580
    :try_start_19
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 5581
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_a0

    if-eqz v1, :cond_49

    .line 5582
    iget-boolean v0, v1, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v0, :cond_49

    const-string v0, "UserManagerService"

    .line 5583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing a pre-created user with user id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5585
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUserStopped(I)V

    .line 5586
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    return-void

    .line 5590
    :cond_49
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v0, 0x0

    .line 5591
    :goto_4d
    :try_start_4d
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_63

    .line 5592
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;

    invoke-interface {v3, v1}, Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;->onUserRemoved(Landroid/content/pm/UserInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 5594
    :cond_63
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_4d .. :try_end_64} :catchall_9d

    .line 5598
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5600
    :try_start_68
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    .line 5601
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.extra.user_handle"

    .line 5602
    invoke-virtual {v3, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.intent.extra.USER"

    .line 5605
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5606
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.MANAGE_USERS"

    new-instance v6, Lcom/android/server/pm/UserManagerService$8;

    invoke-direct {v6, p0, p1}, Lcom/android/server/pm/UserManagerService$8;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_94
    .catchall {:try_start_68 .. :try_end_94} :catchall_98

    .line 5630
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_98
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5631
    throw p0

    :catchall_9d
    move-exception p0

    .line 5594
    :try_start_9e
    monitor-exit v2
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw p0

    :catchall_a0
    move-exception p0

    .line 5581
    :try_start_a1
    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a0

    throw p0
.end method

.method public final getAliveUsersExcludingGuestsCountLU()I
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .line 2856
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_3f

    .line 2859
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2860
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_3c

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-nez v4, :cond_3c

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v4, :cond_3c

    .line 2861
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v4

    if-nez v4, :cond_3c

    .line 2862
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v4

    if-nez v4, :cond_3c

    .line 2864
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-nez v3, :cond_3c

    add-int/lit8 v2, v2, 0x1

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_3f
    return v2
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3

    .line 5744
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 5

    .line 5749
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p2, :cond_14

    .line 5750
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUidForPackage(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_28

    .line 5751
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get application restrictions for other user/app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    .line 5753
    :cond_28
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter p0

    .line 5755
    :try_start_2b
    invoke-static {p1, p2}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLAr(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_31
    move-exception p1

    .line 5756
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_31

    throw p1
.end method

.method public getBModeDefaultIcon(I)Landroid/graphics/Bitmap;
    .registers 9

    .line 5244
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5245
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_55

    .line 5246
    iget-boolean v3, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_f

    goto :goto_55

    .line 5251
    :cond_f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 5252
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 5253
    iget v5, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v6, -0x2710

    if-eq v4, v6, :cond_23

    if-ne v4, v5, :cond_23

    const/4 v4, 0x1

    goto :goto_24

    :cond_23
    const/4 v4, 0x0

    :goto_24
    if-eq v3, p1, :cond_2d

    if-nez v4, :cond_2d

    const-string v3, "get the icon of a user who is not related"

    .line 5257
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 5260
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->findCurrentBModeUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_53

    .line 5261
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 5262
    :cond_3f
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 5263
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    .line 5262
    invoke-static {p0, p1, v1}, Lcom/android/internal/util/UserIcons;->getDefaultUserIconForBMode(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 5265
    :cond_53
    monitor-exit v0

    return-object v2

    :cond_55
    :goto_55
    const-string p0, "UserManagerService"

    .line 5247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUserIcon: unknown user #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5248
    monitor-exit v0

    return-object v2

    :catchall_6e
    move-exception p0

    .line 5265
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_3 .. :try_end_70} :catchall_6e

    throw p0
.end method

.method public final getCreationTime()J
    .registers 5

    .line 4841
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0xdc46c32800L

    cmp-long p0, v0, v2

    if-lez p0, :cond_e

    goto :goto_10

    :cond_e
    const-wide/16 v0, 0x0

    :goto_10
    return-wide v0
.end method

.method public getCredentialOwnerProfile(I)I
    .registers 3

    const-string v0, "get the credential owner"

    .line 1181
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1182
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1183
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1184
    :try_start_10
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 1186
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return p0

    .line 1188
    :cond_1a
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_1c

    throw p0

    :cond_1f
    :goto_1f
    return p1
.end method

.method public final getDarManagerService()Lcom/samsung/android/knox/dar/IDarManagerService;
    .registers 2

    .line 7812
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    if-nez v0, :cond_10

    const-string v0, "dar"

    .line 7814
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 7813
    invoke-static {v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 7816
    :cond_10
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    return-object p0
.end method

.method public getDefaultGuestRestrictions()Landroid/os/Bundle;
    .registers 3

    const-string v0, "getDefaultGuestRestrictions"

    .line 2178
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 2179
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 2180
    :try_start_8
    new-instance v1, Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {v1, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception p0

    .line 2181
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final getDevicePolicyLocalRestrictionsForTargetUserLR(I)Lcom/android/server/pm/RestrictionsSet;
    .registers 3

    .line 2317
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/RestrictionsSet;

    if-nez v0, :cond_14

    .line 2319
    new-instance v0, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v0}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    .line 2320
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public final getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 2

    .line 7622
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v0, :cond_e

    .line 7623
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 7624
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 7626
    :cond_e
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object p0
.end method

.method public final getEffectiveUserRestrictions(I)Landroid/os/Bundle;
    .registers 4

    .line 2352
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2353
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_14

    .line 2355
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object v1

    .line 2356
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 2358
    :cond_14
    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception p0

    .line 2359
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getFreeProfileBadgeLU(ILjava/lang/String;)I
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7556
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7557
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_3b

    .line 7559
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 7561
    iget-object v5, v4, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    iget v5, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v5, p1, :cond_38

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 7563
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_38

    .line 7564
    iget v4, v4, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 7567
    :cond_3b
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getMaxUsersOfTypePerParent(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_45

    const p0, 0x7fffffff

    :cond_45
    move p1, v2

    :goto_46
    if-ge p1, p0, :cond_56

    .line 7572
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_53

    return p1

    :cond_53
    add-int/lit8 p1, p1, 0x1

    goto :goto_46

    :cond_56
    return v2
.end method

.method public final getGuestName()Ljava/lang/String;
    .registers 2

    .line 3586
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const v0, 0x10405cf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInternalForInjectorOnly()Lcom/android/server/pm/UserManagerInternal;
    .registers 1

    .line 884
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    return-object p0
.end method

.method public getMaxUsersOfTypePerParent(Ljava/lang/String;)I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7526
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 7530
    :cond_c
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->getMaxUsersOfTypePerParent(Lcom/android/server/pm/UserTypeDetails;)I

    move-result p0

    return p0
.end method

.method public getNextAvailableId()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 6251
    invoke-virtual {p0, v0, v0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableId(ZZ)I

    move-result p0

    return p0
.end method

.method public getNextAvailableId(ZZ)I
    .registers 8

    .line 6260
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6263
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked(ZZ)I

    move-result v1

    if-ltz v1, :cond_b

    .line 6266
    monitor-exit v0

    return v1

    .line 6270
    :cond_b
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_40

    const-string v1, "UserManagerService"

    const-string v2, "All available IDs are used. Recycling LRU ids."

    .line 6271
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6272
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 6273
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 6274
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_25

    .line 6278
    :cond_3c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked(ZZ)I

    move-result v1

    .line 6281
    :cond_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_4f

    .line 6283
    invoke-static {}, Landroid/os/UserManager;->invalidateStaticUserProperties()V

    if-ltz v1, :cond_47

    return v1

    .line 6285
    :cond_47
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No user id available!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_4f
    move-exception p0

    .line 6281
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public final getNumberOfUsersOfType(Ljava/lang/String;)I
    .registers 9

    .line 2733
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2734
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v2, v1, :cond_36

    .line 2736
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2737
    iget-object v5, v4, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v5, :cond_33

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 2739
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_33

    iget-boolean v4, v4, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v4, :cond_33

    add-int/lit8 v3, v3, 0x1

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2744
    :cond_36
    monitor-exit v0

    return v3

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public final getOwnerName()Ljava/lang/String;
    .registers 1

    .line 3582
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mOwnerName:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .registers 2

    .line 7614
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_e

    .line 7615
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 7617
    :cond_e
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public final getPreCreatedUserLU(Ljava/lang/String;)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .line 4885
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_54

    .line 4887
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    .line 4889
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v4, :cond_51

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v4, :cond_51

    iget-object v3, v3, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 4890
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_50

    .line 4891
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found pre-created user of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", but it\'s not initialized yet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4892
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserManagerService"

    .line 4891
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    :cond_50
    return-object v2

    :cond_51
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_54
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreInstallableSystemPackages(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "getPreInstallableSystemPackages"

    .line 4831
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 4832
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    .line 4833
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getInstallablePackagesForUserType(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 4837
    :cond_10
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getPrimaryUser()Landroid/content/pm/UserInfo;
    .registers 7

    const-string/jumbo v0, "query users"

    .line 1005
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1006
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1007
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_31

    .line 1009
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1010
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_2e

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 1011
    monitor-exit v0

    return-object v3

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1014
    :cond_31
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public getProfileIds(ILjava/lang/String;Z)[I
    .registers 7

    .line 1084
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_1b

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getting profiles related to user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 1110
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1112
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_32

    .line 1113
    :try_start_22
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(ILjava/lang/String;Z)Landroid/util/IntArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_2f

    .line 1116
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_2f
    move-exception p0

    .line 1114
    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p0

    .line 1116
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1117
    throw p0
.end method

.method public getProfileIds(IZ)[I
    .registers 4

    const/4 v0, 0x0

    .line 1071
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/UserManagerService;->getProfileIds(ILjava/lang/String;Z)[I

    move-result-object p0

    return-object p0
.end method

.method public final getProfileIdsLU(ILjava/lang/String;Z)Landroid/util/IntArray;
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .line 1150
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1151
    new-instance v0, Landroid/util/IntArray;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    if-nez p1, :cond_12

    return-object v0

    .line 1156
    :cond_12
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_58

    .line 1158
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1159
    invoke-static {p1, v3}, Lcom/android/server/pm/UserManagerService;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v4

    if-nez v4, :cond_2c

    goto :goto_55

    :cond_2c
    if-eqz p3, :cond_35

    .line 1162
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_35

    goto :goto_55

    .line 1165
    :cond_35
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_40

    goto :goto_55

    .line 1168
    :cond_40
    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v4, :cond_45

    goto :goto_55

    :cond_45
    if-eqz p2, :cond_50

    .line 1171
    iget-object v4, v3, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    goto :goto_55

    .line 1174
    :cond_50
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_58
    return-object v0
.end method

.method public getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 3

    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    .line 1218
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1223
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1224
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 1225
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw p0

    .line 1219
    :cond_14
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "You need MANAGE_USERS or INTERACT_ACROSS_USERS permission to get the profile parent"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getProfileParentId(I)I
    .registers 3

    const-string v0, "get the profile parent"

    .line 1230
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1231
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->getProfileParentId(I)I

    move-result p0

    return p0
.end method

.method public final getProfileParentLU(I)Landroid/content/pm/UserInfo;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .line 1236
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 1240
    :cond_8
    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v0, p1, :cond_16

    const/16 p1, -0x2710

    if-ne v0, p1, :cond_11

    goto :goto_16

    .line 1244
    :cond_11
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0

    :cond_16
    :goto_16
    return-object v1
.end method

.method public getProfileType(I)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "getProfileType"

    .line 1764
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1765
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1766
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 1768
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_1a

    :cond_18
    const-string p0, ""

    :goto_1a
    monitor-exit v0

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    .line 1770
    monitor-exit v0

    return-object p0

    :catchall_1f
    move-exception p0

    .line 1771
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public getProfiles(IZ)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 1051
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_1d

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getting profiles related to user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_21

    .line 1055
    :cond_1d
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasCreateUsersPermission()Z

    move-result v0

    .line 1057
    :goto_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1059
    :try_start_25
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_35

    const/4 v4, 0x0

    .line 1060
    :try_start_29
    invoke-virtual {p0, p1, v4, p2, v0}, Lcom/android/server/pm/UserManagerService;->getProfilesLU(ILjava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_32

    .line 1063
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_32
    move-exception p0

    .line 1061
    :try_start_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    :try_start_34
    throw p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    :catchall_35
    move-exception p0

    .line 1063
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1064
    throw p0
.end method

.method public final getProfilesLU(ILjava/lang/String;ZZ)Ljava/util/List;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 1124
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(ILjava/lang/String;Z)Landroid/util/IntArray;

    move-result-object p1

    .line 1125
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p3, 0x0

    .line 1126
    :goto_e
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v0

    if-ge p3, v0, :cond_39

    .line 1127
    invoke-virtual {p1, p3}, Landroid/util/IntArray;->get(I)I

    move-result v0

    .line 1128
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    if-nez p4, :cond_2f

    .line 1131
    new-instance v1, Landroid/content/pm/UserInfo;

    invoke-direct {v1, v0}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    const/4 v0, 0x0

    .line 1132
    iput-object v0, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1133
    iput-object v0, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    goto :goto_33

    .line 1135
    :cond_2f
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1137
    :goto_33
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_e

    :cond_39
    return-object p2
.end method

.method public getRemainingCreatableProfileCount(Ljava/lang/String;I)I
    .registers 4

    const/4 v0, 0x0

    .line 2782
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->getRemainingCreatableProfileCount(Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public final getRemainingCreatableProfileCount(Ljava/lang/String;IZ)I
    .registers 11

    const-string v0, "get the remaining number of profiles that can be added to the given user."

    .line 2792
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 2794
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    const/4 v1, 0x0

    if-eqz v0, :cond_b4

    .line 2795
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_18

    goto/16 :goto_b4

    .line 2799
    :cond_18
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2801
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.software.managed_users"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    return v1

    .line 2806
    :cond_2d
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2808
    :try_start_30
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_af

    .line 2809
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v4

    if-nez v4, :cond_3e

    goto/16 :goto_af

    .line 2813
    :cond_3e
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/pm/UserManagerService;->getProfileIds(ILjava/lang/String;Z)[I

    move-result-object v4

    array-length v4, v4

    .line 2815
    invoke-virtual {p0, p2, v1}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object p2

    .line 2816
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4b
    :goto_4b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 2817
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v6

    if-nez v6, :cond_67

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v5

    if-eqz v5, :cond_4b

    :cond_67
    add-int/lit8 v4, v4, -0x1

    goto :goto_4b

    :cond_6a
    const/4 p2, 0x1

    if-lez v4, :cond_71

    if-eqz p3, :cond_71

    move p3, p2

    goto :goto_72

    :cond_71
    move p3, v1

    .line 2823
    :goto_72
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v5

    sub-int/2addr v5, p3

    .line 2827
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v6

    sub-int/2addr v6, v5

    if-gtz v6, :cond_83

    if-eqz v2, :cond_83

    if-ne v5, p2, :cond_83

    goto :goto_84

    :cond_83
    move p2, v6

    .line 2835
    :goto_84
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->getMaxUsersOfTypePerParent(Lcom/android/server/pm/UserTypeDetails;)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_91

    sub-int/2addr v4, p3

    sub-int/2addr v2, v4

    .line 2837
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_91
    if-gtz p2, :cond_95

    .line 2840
    monitor-exit v3

    return v1

    .line 2844
    :cond_95
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getMaxAllowed()I

    move-result v2

    if-eq v2, v5, :cond_a9

    .line 2845
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getMaxAllowed()I

    move-result v0

    .line 2846
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getNumberOfUsersOfType(Ljava/lang/String;)I

    move-result p0

    sub-int/2addr p0, p3

    sub-int/2addr v0, p0

    .line 2845
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2849
    :cond_a9
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    monitor-exit v3

    return p0

    .line 2810
    :cond_af
    :goto_af
    monitor-exit v3

    return v1

    :catchall_b1
    move-exception p0

    .line 2850
    monitor-exit v3
    :try_end_b3
    .catchall {:try_start_30 .. :try_end_b3} :catchall_b1

    throw p0

    :cond_b4
    :goto_b4
    return v1
.end method

.method public getRemainingCreatableUserCount(Ljava/lang/String;)I
    .registers 11

    const-string v0, "get the remaining number of users that can be added."

    .line 2688
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 2689
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    const/4 v1, 0x0

    if-eqz v0, :cond_7e

    .line 2690
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_18

    goto/16 :goto_7e

    .line 2693
    :cond_18
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2694
    :try_start_1b
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v3

    .line 2698
    invoke-static {p1}, Landroid/os/UserManager;->isUserTypeGuest(Ljava/lang/String;)Z

    move-result v4

    const v5, 0x7fffffff

    if-nez v4, :cond_35

    invoke-static {p1}, Landroid/os/UserManager;->isUserTypeDemo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    goto :goto_35

    .line 2700
    :cond_2f
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v4

    sub-int/2addr v4, v3

    goto :goto_36

    :cond_35
    :goto_35
    move v4, v5

    .line 2703
    :goto_36
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->isManagedProfile()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_5b

    .line 2704
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v8, "android.software.managed_users"

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4d

    .line 2706
    monitor-exit v2

    return v1

    :cond_4d
    if-gtz v4, :cond_51

    move v6, v7

    goto :goto_52

    :cond_51
    move v6, v1

    :goto_52
    if-ne v3, v7, :cond_56

    move v3, v7

    goto :goto_57

    :cond_56
    move v3, v1

    :goto_57
    and-int/2addr v3, v6

    if-eqz v3, :cond_5b

    move v4, v7

    :cond_5b
    if-gtz v4, :cond_5f

    .line 2714
    monitor-exit v2

    return v1

    .line 2719
    :cond_5f
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getMaxAllowed()I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_67

    goto :goto_71

    .line 2721
    :cond_67
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getMaxAllowed()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getNumberOfUsersOfType(Ljava/lang/String;)I

    move-result p0

    sub-int v5, v0, p0

    .line 2718
    :goto_71
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 2723
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    monitor-exit v2

    return p0

    :catchall_7b
    move-exception p0

    .line 2724
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_1b .. :try_end_7d} :catchall_7b

    throw p0

    :cond_7e
    :goto_7e
    return v1
.end method

.method public final getSdpManager()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/knox/dar/sdp/SdpManagerImpl;",
            ">;"
        }
    .end annotation

    .line 7855
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mSdpManager:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    if-nez v0, :cond_14

    const-string v0, "dar"

    .line 7856
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/dar/DarManagerService;

    if-eqz v0, :cond_14

    .line 7858
    invoke-virtual {v0}, Lcom/android/server/knox/dar/DarManagerService;->getSdpManager()Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mSdpManager:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    .line 7861
    :cond_14
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mSdpManager:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final getSdpManagerInternal()Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/knox/dar/sdp/SdpManagerInternal;",
            ">;"
        }
    .end annotation

    .line 7865
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mSdpManagerInternal:Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

    if-nez v0, :cond_29

    .line 7866
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getSdpManager()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 7867
    const-class v0, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mSdpManagerInternal:Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

    .line 7869
    :cond_29
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mSdpManagerInternal:Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getSeedAccountName(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Cannot get seed account information"

    .line 6362
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 6363
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6364
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-nez p0, :cond_10

    const/4 p0, 0x0

    goto :goto_12

    .line 6365
    :cond_10
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    :goto_12
    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    .line 6366
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public getSeedAccountOptions(I)Landroid/os/PersistableBundle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Cannot get seed account information"

    .line 6380
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 6381
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6382
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-nez p0, :cond_10

    const/4 p0, 0x0

    goto :goto_12

    .line 6383
    :cond_10
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    :goto_12
    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    .line 6384
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public getSeedAccountType(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Cannot get seed account information"

    .line 6371
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 6372
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6373
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-nez p0, :cond_10

    const/4 p0, 0x0

    goto :goto_12

    .line 6374
    :cond_10
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    :goto_12
    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    .line 6375
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final getUidForPackage(Ljava/lang/String;)I
    .registers 5

    .line 5874
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5876
    :try_start_4
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v2, 0x400000

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_12} :catch_1b
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 5881
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5882
    throw p0

    :catch_1b
    const/4 p0, -0x1

    .line 5881
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method public final getUpdatedTargetUserIdsFromLocalRestrictions(ILcom/android/server/pm/RestrictionsSet;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/pm/RestrictionsSet;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 2272
    :goto_7
    invoke-virtual {p2}, Lcom/android/server/pm/RestrictionsSet;->size()I

    move-result v3

    if-ge v2, v3, :cond_1b

    .line 2273
    invoke-virtual {p2, v2}, Lcom/android/server/pm/RestrictionsSet;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2277
    :cond_1b
    :goto_1b
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_47

    .line 2278
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2279
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/RestrictionsSet;

    .line 2280
    invoke-virtual {p2, v2}, Lcom/android/server/pm/RestrictionsSet;->containsKey(I)Z

    move-result v4

    if-nez v4, :cond_44

    .line 2281
    invoke-virtual {v3, p1}, Lcom/android/server/pm/RestrictionsSet;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 2282
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_47
    return-object v0
.end method

.method public getUserAccount(I)Ljava/lang/String;
    .registers 3

    const-string v0, "get user account"

    .line 973
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 974
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 975
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    .line 976
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public getUserBadgeColorResId(I)I
    .registers 4

    const-string/jumbo v0, "getUserBadgeColorResId"

    .line 1689
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1691
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1692
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz v0, :cond_20

    if-eqz p0, :cond_20

    .line 1693
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_20

    .line 1697
    :cond_19
    iget p1, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserTypeDetails;->getBadgeColor(I)I

    move-result p0

    return p0

    .line 1694
    :cond_20
    :goto_20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested badge dark color for non-badged user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getUserBadgeDarkColorResId(I)I
    .registers 4

    const-string/jumbo v0, "getUserBadgeDarkColorResId"

    .line 1705
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1707
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1708
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz v0, :cond_20

    if-eqz p0, :cond_20

    .line 1709
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_20

    .line 1713
    :cond_19
    iget p1, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserTypeDetails;->getDarkThemeBadgeColor(I)I

    move-result p0

    return p0

    .line 1710
    :cond_20
    :goto_20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested badge color for non-badged user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getUserBadgeLabelResId(I)I
    .registers 4

    const-string/jumbo v0, "getUserBadgeLabelResId"

    .line 1672
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1674
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1675
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz v0, :cond_20

    if-eqz p0, :cond_20

    .line 1676
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_20

    .line 1680
    :cond_19
    iget p1, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 1681
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserTypeDetails;->getBadgeLabel(I)I

    move-result p0

    return p0

    .line 1677
    :cond_20
    :goto_20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested badge label for non-badged user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getUserBadgeNoBackgroundResId(I)I
    .registers 3

    const-string/jumbo v0, "getUserBadgeNoBackgroundResId"

    .line 1740
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1742
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 1743
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_18

    .line 1747
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->getBadgeNoBackground()I

    move-result p0

    return p0

    .line 1744
    :cond_18
    :goto_18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested badge (no background) for non-badged user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getUserBadgeResId(I)I
    .registers 3

    const-string/jumbo v0, "getUserBadgeResId"

    .line 1729
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1730
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 1731
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_18

    .line 1735
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->getBadgePlain()I

    move-result p0

    return p0

    .line 1732
    :cond_18
    :goto_18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested badge for non-badged user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getUserCreationTime(I)J
    .registers 5

    .line 6091
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 6093
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    if-ne v0, p1, :cond_e

    .line 6095
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    goto :goto_1e

    .line 6097
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 6098
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v0, :cond_1d

    .line 6099
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    .line 6102
    :goto_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_2d

    if-eqz p0, :cond_24

    .line 6107
    iget-wide p0, p0, Landroid/content/pm/UserInfo;->creationTime:J

    return-wide p0

    .line 6104
    :cond_24
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "userId can only be the calling user or a profile associated with this user"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_2d
    move-exception p0

    .line 6102
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public final getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .line 2008
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz v0, :cond_1a

    .line 2010
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_1a

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x0

    return-object p0

    :cond_1a
    return-object v0
.end method

.method public final getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 3

    .line 2032
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2033
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService$UserData;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 2034
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getUserHandle(I)I
    .registers 8

    .line 6079
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6080
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_1a

    aget v4, v1, v3

    .line 6081
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 6082
    iget v5, v5, Landroid/content/pm/UserInfo;->serialNumber:I

    if-ne v5, p1, :cond_17

    monitor-exit v0

    return v4

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_1a
    const/4 p0, -0x1

    .line 6085
    monitor-exit v0

    return p0

    :catchall_1d
    move-exception p0

    .line 6086
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public getUserIcon(I)Landroid/os/ParcelFileDescriptor;
    .registers 8

    const-string v0, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    .line 2102
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 2107
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2108
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_51

    .line 2109
    iget-boolean v3, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_17

    goto :goto_51

    .line 2114
    :cond_17
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 2115
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 2116
    iget v4, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v5, -0x2710

    if-eq p0, v5, :cond_2b

    if-ne p0, v4, :cond_2b

    const/4 p0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p0, 0x0

    :goto_2c
    if-eq v3, p1, :cond_35

    if-nez p0, :cond_35

    const-string p0, "get the icon of a user who is not related"

    .line 2120
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 2123
    :cond_35
    iget-object p0, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-nez p0, :cond_3b

    .line 2124
    monitor-exit v0

    return-object v2

    .line 2127
    :cond_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_6a

    .line 2130
    :try_start_3c
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 p0, 0x10000000

    invoke-static {p1, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_47} :catch_48

    return-object p0

    :catch_48
    move-exception p0

    const-string p1, "UserManagerService"

    const-string v0, "Couldn\'t find icon file"

    .line 2133
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :cond_51
    :goto_51
    :try_start_51
    const-string p0, "UserManagerService"

    .line 2110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUserIcon: unknown user #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    monitor-exit v0

    return-object v2

    :catchall_6a
    move-exception p0

    .line 2127
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_51 .. :try_end_6c} :catchall_6a

    throw p0

    .line 2103
    :cond_6d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "You need MANAGE_USERS or GET_ACCOUNTS_PRIVILEGED permissions to: get user icon"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUserIconBadgeResId(I)I
    .registers 3

    const-string/jumbo v0, "getUserIconBadgeResId"

    .line 1718
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1719
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 1720
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_18

    .line 1724
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->getIconBadge()I

    move-result p0

    return p0

    .line 1721
    :cond_18
    :goto_18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested icon badge for non-badged user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getUserIds()[I
    .registers 2

    .line 3099
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3100
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 3101
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getUserIdsIncludingPreCreated()[I
    .registers 2

    .line 3116
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3117
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserIdsIncludingPreCreated:[I

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 3118
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 3

    const-string/jumbo v0, "query user"

    .line 1605
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 1613
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1614
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    .line 1615
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public final getUserInfoLU(I)Landroid/content/pm/UserInfo;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .line 1997
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 1999
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_31

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-nez p0, :cond_31

    .line 2000
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "getUserInfo: unknown user #"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_31
    if-eqz v0, :cond_35

    .line 2003
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    :cond_35
    return-object v1
.end method

.method public final getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;
    .registers 3

    .line 2021
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2022
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz p0, :cond_10

    .line 2023
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    .line 2024
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 3

    .line 1832
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1833
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryOrCreateUsersPermission()Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    .line 1834
    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_1b

    .line 1836
    :cond_13
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "You need MANAGE_USERS, CREATE_USERS, QUERY_USERS, or GET_ACCOUNTS_PRIVILEGED permissions to: get user name"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1839
    :cond_1b
    :goto_1b
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1840
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1841
    :try_start_22
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 1842
    iget-object p0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz p0, :cond_32

    .line 1843
    monitor-exit v1

    return-object p0

    :cond_32
    const-string p0, ""

    .line 1845
    monitor-exit v1

    return-object p0

    :catchall_36
    move-exception p0

    .line 1846
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_22 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public final getUserRemovalRestriction(I)Ljava/lang/String;
    .registers 3

    .line 5359
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5360
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 5361
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1d

    if-eqz p0, :cond_12

    .line 5362
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    if-eqz p0, :cond_19

    const-string/jumbo p0, "no_remove_managed_profile"

    goto :goto_1c

    :cond_19
    const-string/jumbo p0, "no_remove_user"

    :goto_1c
    return-object p0

    :catchall_1d
    move-exception p0

    .line 5361
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public getUserRestrictionSource(Ljava/lang/String;I)I
    .registers 4

    .line 2431
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 2434
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    :goto_b
    if-ltz p1, :cond_1b

    .line 2435
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager$EnforcingUser;

    invoke-virtual {v0}, Landroid/os/UserManager$EnforcingUser;->getUserRestrictionSource()I

    move-result v0

    or-int/2addr p2, v0

    add-int/lit8 p1, p1, -0x1

    goto :goto_b

    :cond_1b
    return p2
.end method

.method public getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserManager$EnforcingUser;",
            ">;"
        }
    .end annotation

    const-string v0, "call getUserRestrictionSources."

    .line 2443
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryUsersPermission(Ljava/lang/String;)V

    .line 2446
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2447
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 2450
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2453
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2454
    new-instance v1, Landroid/os/UserManager$EnforcingUser;

    const/16 v2, -0x2710

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2458
    :cond_26
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2460
    :try_start_29
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyLocalRestrictionsForTargetUserLR(I)Lcom/android/server/pm/RestrictionsSet;

    move-result-object p2

    iget v2, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-virtual {p2, p1, v2}, Lcom/android/server/pm/RestrictionsSet;->getEnforcingUsers(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2464
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget p0, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-virtual {p2, p1, p0}, Lcom/android/server/pm/RestrictionsSet;->getEnforcingUsers(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2466
    monitor-exit v1

    return-object v0

    :catchall_43
    move-exception p0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_29 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public getUserRestrictions(I)Landroid/os/Bundle;
    .registers 3

    const-string/jumbo v0, "getUserRestrictions"

    .line 2476
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2477
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getUserSerialNumber(I)I
    .registers 3

    .line 6055
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6056
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 6057
    iget p0, p0, Landroid/content/pm/UserInfo;->serialNumber:I

    goto :goto_d

    :cond_c
    const/4 p0, -0x1

    :goto_d
    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 6058
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getUserStartRealtime()J
    .registers 5

    .line 1851
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1852
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1853
    :try_start_b
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 1855
    iget-wide v2, p0, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    monitor-exit v1

    return-wide v2

    :cond_15
    const-wide/16 v2, 0x0

    .line 1857
    monitor-exit v1

    return-wide v2

    :catchall_19
    move-exception p0

    .line 1858
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 1599
    iget-object p1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_7

    :cond_6
    move-object p1, v0

    :goto_7
    if-eqz p1, :cond_12

    .line 1600
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    :cond_12
    return-object v0
.end method

.method public final getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;
    .registers 2

    .line 1591
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeNoChecks(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 1592
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method public final getUserTypeNoChecks(I)Ljava/lang/String;
    .registers 3

    .line 1580
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1581
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 1582
    iget-object p0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 1583
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getUserUnlockRealtime()J
    .registers 4

    .line 1863
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1864
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 1866
    iget-wide v1, p0, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    monitor-exit v0

    return-wide v1

    :cond_15
    const-wide/16 v1, 0x0

    .line 1868
    monitor-exit v0

    return-wide v1

    :catchall_19
    move-exception p0

    .line 1869
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public getUsers(Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1019
    invoke-virtual {p0, v0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUsers(ZZZ)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "query users"

    .line 1026
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getUsersInternal(ZZZ)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 1032
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1033
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1034
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_44

    .line 1036
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    if-eqz p1, :cond_27

    .line 1037
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_41

    :cond_27
    if-eqz p2, :cond_33

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1038
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_41

    :cond_33
    if-eqz p3, :cond_3a

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v5, :cond_3a

    goto :goto_41

    .line 1042
    :cond_3a
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1044
    :cond_44
    monitor-exit v0

    return-object v1

    :catchall_46
    move-exception p0

    .line 1045
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public hasBadge(I)Z
    .registers 3

    const-string/jumbo v0, "hasBadge"

    .line 1665
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1666
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 1667
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public hasBaseUserRestriction(Ljava/lang/String;I)Z
    .registers 5

    const-string/jumbo v0, "hasBaseUserRestriction"

    .line 2482
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 2483
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 2486
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2487
    :try_start_11
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 2488
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 v1, 0x1

    :cond_20
    monitor-exit v0

    return v1

    :catchall_22
    move-exception p0

    .line 2489
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public hasProfile(I)Z
    .registers 9

    .line 7585
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7586
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 7587
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v2, :cond_2b

    .line 7589
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 7590
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-eq p1, v6, :cond_28

    invoke-static {v1, v5}, Lcom/android/server/pm/UserManagerService;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 7591
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 7594
    :cond_2b
    monitor-exit v0

    return v3

    :catchall_2d
    move-exception p0

    .line 7595
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public hasRestrictedProfiles(I)Z
    .registers 8

    const-string/jumbo v0, "hasRestrictedProfiles"

    .line 1978
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1979
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1980
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v1, :cond_2b

    .line 1982
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1983
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-eq p1, v5, :cond_28

    iget v4, v4, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v4, p1, :cond_28

    .line 1985
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1988
    :cond_2b
    monitor-exit v0

    return v2

    :catchall_2d
    move-exception p0

    .line 1989
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .registers 4

    const-string/jumbo v0, "hasUserRestriction"

    .line 2365
    invoke-virtual {p0, p2, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2366
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z
    .registers 7

    .line 2372
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x1

    .line 2375
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    move v3, v1

    .line 2376
    :goto_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2c

    .line 2377
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 2378
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 2379
    invoke-virtual {v4, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    return v0

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_2c
    return v1
.end method

.method public final initDefaultGuestRestrictions()V
    .registers 4

    .line 2164
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 2165
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2166
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    const-string v2, "android.os.usertype.full.GUEST"

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserTypeDetails;

    if-nez v1, :cond_20

    const-string p0, "UserManagerService"

    const-string v1, "Can\'t set default guest restrictions: type doesn\'t exist."

    .line 2168
    invoke-static {p0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    monitor-exit v0

    return-void

    .line 2171
    :cond_20
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1, p0}, Lcom/android/server/pm/UserTypeDetails;->addDefaultRestrictionsTo(Landroid/os/Bundle;)V

    .line 2173
    :cond_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public installWhitelistedSystemPackages(ZZLandroid/util/ArraySet;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 4825
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/UserSystemPackageInstaller;->installWhitelistedSystemPackages(ZZLandroid/util/ArraySet;)Z

    move-result p0

    return p0
.end method

.method public final invalidateEffectiveUserRestrictionsLR(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .line 2348
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    return-void
.end method

.method public final invalidateOwnerNameIfNecessary(Landroid/content/res/Resources;Z)V
    .registers 5

    .line 3590
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    if-nez p2, :cond_13

    .line 3591
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mOwnerNameTypedValue:Landroid/util/TypedValue;

    iget p2, p2, Landroid/util/TypedValue;->changingConfigurations:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_2f

    :cond_13
    const p2, 0x10408a0

    .line 3592
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mOwnerNameTypedValue:Landroid/util/TypedValue;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 3593
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mOwnerNameTypedValue:Landroid/util/TypedValue;

    invoke-virtual {p1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p1

    .line 3594
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mOwnerName:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p1, :cond_2b

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    :goto_2c
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2f
    return-void
.end method

.method public isCredentialSharableWithParent(I)Z
    .registers 3

    const-string/jumbo v0, "isCredentialSharableWithParent"

    .line 1787
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1789
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1790
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 1791
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isProfile()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 1792
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isCredentialSharableWithParent()Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    monitor-exit v0

    return p0

    :catchall_20
    move-exception p0

    .line 1793
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public isDemoUser(I)Z
    .registers 4

    .line 1929
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_29

    .line 1930
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_29

    .line 1931
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You need MANAGE_USERS permission to query if u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is a demo user"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1934
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1935
    :try_start_2c
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 1936
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result p0

    if-eqz p0, :cond_3a

    const/4 p0, 0x1

    goto :goto_3b

    :cond_3a
    const/4 p0, 0x0

    :goto_3b
    monitor-exit v0

    return p0

    :catchall_3d
    move-exception p0

    .line 1937
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_2c .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public final isDeviceRootKeyInstalled()Z
    .registers 2

    const-string p0, "UserManagerService"

    const-string v0, "check Device Root Key - KPE is not supported on the device"

    .line 7848
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public isKPUAgent(Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    const-string v0, "com.samsung.android.knox.kpu"

    .line 5815
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 5818
    :cond_a
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.knox.permission.KNOX_KPU_INTERNAL"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_19

    if-nez p0, :cond_34

    return v1

    :catch_19
    move-exception p0

    .line 5822
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    const/4 p0, 0x0

    return p0
.end method

.method public isKPUPlatformSigned(Ljava/lang/String;I)Z
    .registers 3

    .line 5831
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    .line 5832
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isKPUPlatformSigned(Ljava/lang/String;I)Z

    move-result p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 5834
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isLowOnStorageForMaintenanceMode()Z
    .registers 1

    .line 5142
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mMaintenanceModeServiceUtils:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->isLowOnStorage()Z

    move-result p0

    return p0
.end method

.method public isMediaSharedWithParent(I)Z
    .registers 4

    const-string/jumbo v0, "isMediaSharedWithParent"

    .line 1776
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1778
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1779
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1d

    .line 1780
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isProfile()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1781
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isMediaSharedWithParent()Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p1, 0x1

    :cond_1d
    monitor-exit v0

    return p1

    :catchall_1f
    move-exception p0

    .line 1782
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public isPreCreated(I)Z
    .registers 3

    const-string/jumbo v0, "isPreCreated"

    .line 1942
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1943
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1944
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 1945
    iget-boolean p0, p0, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    monitor-exit v0

    return p0

    :catchall_18
    move-exception p0

    .line 1946
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public isProfile(I)Z
    .registers 3

    const-string/jumbo v0, "isProfile"

    .line 1751
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1752
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1753
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 1754
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    .line 1755
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public isQuietModeEnabled(I)Z
    .registers 4

    .line 1463
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1465
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_20

    .line 1466
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 1467
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_1d

    if-eqz p0, :cond_1a

    .line 1468
    :try_start_d
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_1a

    .line 1471
    :cond_14
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    .line 1469
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_20

    return p0

    :catchall_1d
    move-exception p0

    .line 1467
    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw p0

    :catchall_20
    move-exception p0

    .line 1472
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_20

    throw p0
.end method

.method public isRestricted(I)Z
    .registers 4

    .line 1951
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_1b

    .line 1952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "query isRestricted for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 1954
    :cond_1b
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1955
    :try_start_1e
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-nez p0, :cond_26

    const/4 p0, 0x0

    goto :goto_2a

    .line 1956
    :cond_26
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result p0

    :goto_2a
    monitor-exit v0

    return p0

    :catchall_2c
    move-exception p0

    .line 1957
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public isSameProfileGroup(II)Z
    .registers 4

    if-ne p1, p2, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const-string v0, "check if in the same profile group"

    .line 1197
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryUsersPermission(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result p0

    return p0
.end method

.method public final isSameProfileGroupNoChecks(II)Z
    .registers 7

    .line 1202
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1203
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_25

    .line 1204
    iget v2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_11

    goto :goto_25

    .line 1207
    :cond_11
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 1208
    iget p0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne p0, v3, :cond_1c

    goto :goto_23

    .line 1212
    :cond_1c
    iget p1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne p1, p0, :cond_21

    const/4 v1, 0x1

    :cond_21
    monitor-exit v0

    return v1

    .line 1210
    :cond_23
    :goto_23
    monitor-exit v0

    return v1

    .line 1205
    :cond_25
    :goto_25
    monitor-exit v0

    return v1

    :catchall_27
    move-exception p0

    .line 1213
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 7

    .line 2389
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_f

    .line 2392
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserRestrictionsUtils;->isSettingRestrictedForUser(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0

    return p0

    .line 2390
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Non-system caller"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isUserForeground(I)Z
    .registers 5

    .line 1817
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    if-eq p0, p1, :cond_33

    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    .line 1819
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_33

    .line 1820
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller from user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " needs MANAGE_USERS or INTERACT_ACROSS_USERS permission to check if another user ("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") is running in the foreground"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1825
    :cond_33
    :goto_33
    new-instance p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p1, :cond_46

    const/4 p0, 0x1

    goto :goto_47

    :cond_46
    const/4 p0, 0x0

    :goto_47
    return p0
.end method

.method public isUserInitialized(I)Z
    .registers 2

    .line 6956
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserInitialized(I)Z

    move-result p0

    return p0
.end method

.method public final isUserLimitReached()Z
    .registers 2

    .line 2658
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2659
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result p0

    .line 2660
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_12

    .line 2661
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    if-lt p0, v0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0

    :catchall_12
    move-exception p0

    .line 2660
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public isUserNameSet(I)Z
    .registers 5

    .line 6063
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6064
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 6065
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryOrCreateUsersPermission()Z

    move-result v2

    if-nez v2, :cond_21

    if-ne v1, p1, :cond_19

    const-string v1, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    .line 6066
    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_21

    .line 6068
    :cond_19
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "You need MANAGE_USERS, CREATE_USERS, QUERY_USERS, or GET_ACCOUNTS_PRIVILEGED permissions to: get whether user name is set"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6071
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6072
    :try_start_24
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 6073
    iget-object p0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz p0, :cond_30

    const/4 p0, 0x1

    goto :goto_31

    :cond_30
    const/4 p0, 0x0

    :goto_31
    monitor-exit v0

    return p0

    :catchall_33
    move-exception p0

    .line 6074
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public isUserOfType(ILjava/lang/String;)Z
    .registers 4

    const-string v0, "check user type"

    .line 1571
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    if-eqz p2, :cond_13

    .line 1572
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeNoChecks(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public isUserRunning(I)Z
    .registers 3

    const-string/jumbo v0, "isUserRunning"

    .line 1811
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1812
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserRunning(I)Z

    move-result p0

    return p0
.end method

.method public isUserTypeEnabled(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "check if user type is enabled."

    .line 2762
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 2763
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    if-eqz p0, :cond_17

    .line 2764
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public isUserTypeSubtypeOfFull(Ljava/lang/String;)Z
    .registers 2

    .line 1647
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    if-eqz p0, :cond_12

    .line 1648
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isFull()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isUserTypeSubtypeOfProfile(Ljava/lang/String;)Z
    .registers 2

    .line 1653
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    if-eqz p0, :cond_12

    .line 1654
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isProfile()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isUserTypeSubtypeOfSystem(Ljava/lang/String;)Z
    .registers 2

    .line 1659
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    if-eqz p0, :cond_12

    .line 1660
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isSystem()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isUserUnlocked(I)Z
    .registers 3

    const-string/jumbo v0, "isUserUnlocked"

    .line 1805
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1806
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlocked(I)Z

    move-result p0

    return p0
.end method

.method public isUserUnlockingOrUnlocked(I)Z
    .registers 3

    const-string/jumbo v0, "isUserUnlockingOrUnlocked"

    .line 1798
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1800
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlockingOrUnlocked(I)Z

    move-result p0

    return p0
.end method

.method public final logQuietModeEnabled(IZLjava/lang/String;)V
    .registers 14

    const-string v0, "UserManagerService"

    const-string/jumbo v1, "requestQuietModeEnabled called by package %s, with enableQuietMode %b."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    .line 1440
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    .line 1437
    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1442
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1443
    :try_start_18
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    .line 1444
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_56

    if-nez p0, :cond_20

    return-void

    .line 1448
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1449
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-eqz p1, :cond_33

    .line 1450
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v6

    goto :goto_37

    .line 1451
    :cond_33
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-wide v6, p1, Landroid/content/pm/UserInfo;->creationTime:J

    :goto_37
    sub-long v6, v0, v6

    const/16 p1, 0x37

    .line 1453
    invoke-static {p1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    new-array v2, v5, [Ljava/lang/String;

    aput-object p3, v2, v3

    .line 1454
    invoke-virtual {p1, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    .line 1455
    invoke-virtual {p1, p2}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    .line 1456
    invoke-virtual {p1, v6, v7}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    .line 1457
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 1458
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/UserManagerService$UserData;->setLastRequestQuietModeEnabledMillis(J)V

    return-void

    :catchall_56
    move-exception p0

    .line 1444
    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw p0
.end method

.method public final logUserCreateJourneyBegin(ILjava/lang/String;I)J
    .registers 5

    const/4 v0, 0x4

    .line 4915
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->logUserJourneyBegin(IILjava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final logUserCreateJourneyFinish(JIZ)V
    .registers 11

    if-eqz p4, :cond_4

    const/4 p0, 0x2

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    move v5, p0

    const/16 v0, 0x109

    const/4 v4, 0x3

    move-wide v1, p1

    move v3, p3

    .line 4921
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIII)V

    return-void
.end method

.method public final logUserJourneyBegin(IILjava/lang/String;I)J
    .registers 18

    move v8, p1

    .line 4943
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const-wide/16 v1, 0x1

    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v11

    .line 4947
    invoke-static/range {p3 .. p3}, Landroid/os/UserManager;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v6

    const/16 v0, 0x108

    const/4 v4, -0x1

    move-wide v1, v11

    move v3, p1

    move v5, p2

    move/from16 v7, p4

    .line 4945
    invoke-static/range {v0 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIIIII)V

    const/4 v0, 0x4

    if-eq v8, v0, :cond_44

    const/4 v0, 0x6

    if-ne v8, v0, :cond_28

    const/16 v0, 0x8

    goto :goto_45

    .line 4959
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Journey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not expected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    const/4 v0, 0x3

    :goto_45
    move v9, v0

    const/16 v5, 0x109

    const/4 v10, 0x1

    move-wide v6, v11

    move v8, p2

    .line 4962
    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIII)V

    return-wide v11
.end method

.method public final logUserRemoveJourneyBegin(ILjava/lang/String;I)J
    .registers 5

    const/4 v0, 0x6

    .line 4929
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->logUserJourneyBegin(IILjava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final logUserRemoveJourneyFinish(JIZ)V
    .registers 11

    if-eqz p4, :cond_4

    const/4 p0, 0x2

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    move v5, p0

    const/16 v0, 0x109

    const/16 v4, 0x8

    move-wide v1, p1

    move v3, p3

    .line 4935
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIII)V

    return-void
.end method

.method public makeInitialized(I)V
    .registers 6

    const-string/jumbo v0, "makeInitialized"

    .line 2140
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 2143
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2144
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz v1, :cond_2e

    .line 2145
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_1a

    goto :goto_2e

    .line 2149
    :cond_1a
    iget p1, v2, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v3, p1, 0x10

    if-nez v3, :cond_26

    or-int/lit8 p1, p1, 0x10

    .line 2150
    iput p1, v2, Landroid/content/pm/UserInfo;->flags:I

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    .line 2153
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_47

    if-eqz p1, :cond_2d

    .line 2155
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_2d
    return-void

    :cond_2e
    :goto_2e
    :try_start_2e
    const-string p0, "UserManagerService"

    .line 2146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeInitialized: unknown user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    monitor-exit v0

    return-void

    :catchall_47
    move-exception p0

    .line 2153
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_2e .. :try_end_49} :catchall_47

    throw p0
.end method

.method public final markEphemeralUsersForRemoval()V
    .registers 6

    .line 889
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 890
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_33

    .line 892
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 893
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v4

    if-eqz v4, :cond_30

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v4, :cond_30

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    if-eqz v4, :cond_30

    .line 894
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    const/4 v4, 0x1

    .line 895
    iput-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    .line 896
    iget v4, v3, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v3, Landroid/content/pm/UserInfo;->flags:I

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 899
    :cond_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public markGuestForDeletion(I)Z
    .registers 9

    const-string v0, "Only the system can remove users"

    .line 5278
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 5279
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "no_remove_user"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string p0, "UserManagerService"

    const-string p1, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    .line 5281
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 5285
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5288
    :try_start_23
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_6b

    .line 5289
    :try_start_26
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_68

    .line 5290
    :try_start_29
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz p1, :cond_5f

    if-eqz v5, :cond_5f

    .line 5291
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_3e

    goto :goto_5f

    .line 5294
    :cond_3e
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_29 .. :try_end_3f} :catchall_65

    .line 5295
    :try_start_3f
    iget-object p1, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p1

    if-nez p1, :cond_4c

    .line 5296
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_68

    .line 5310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 5303
    :cond_4c
    :try_start_4c
    iget-object p1, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v2, 0x1

    iput-boolean v2, p1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 5306
    iget v4, p1, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 5307
    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 5308
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_4c .. :try_end_5b} :catchall_68

    .line 5310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 5292
    :cond_5f
    :goto_5f
    :try_start_5f
    monitor-exit v4
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_65

    :try_start_60
    monitor-exit v3
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_68

    .line 5310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_65
    move-exception p0

    .line 5294
    :try_start_66
    monitor-exit v4
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    :try_start_67
    throw p0

    :catchall_68
    move-exception p0

    .line 5308
    monitor-exit v3
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_68

    :try_start_6a
    throw p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6b

    :catchall_6b
    move-exception p0

    .line 5310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5311
    throw p0
.end method

.method public final markMaintenanceModeUserForDeletion(Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 5

    if-eqz p1, :cond_28

    .line 5163
    iget-object v0, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    if-eqz v0, :cond_28

    .line 5164
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5165
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_25

    const/16 v2, 0x4d

    .line 5166
    :try_start_e
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 5167
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_22

    .line 5168
    :try_start_12
    iget-object v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    .line 5169
    iget v2, v1, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v1, Landroid/content/pm/UserInfo;->flags:I

    .line 5170
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 5171
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_25

    goto :goto_28

    :catchall_22
    move-exception p0

    .line 5167
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    throw p0

    :catchall_25
    move-exception p0

    .line 5171
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_25

    throw p0

    :cond_28
    :goto_28
    return-void
.end method

.method public onBeforeStartUser(I)V
    .registers 7

    .line 6160
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 6164
    :cond_7
    new-instance v1, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 6165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBeforeStartUser-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6166
    iget v2, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 6168
    sget-object v3, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    const-string/jumbo v4, "prepareUserData"

    .line 6170
    invoke-virtual {v1, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6171
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    invoke-virtual {v4, p1, v2, v3}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    .line 6172
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v2, "reconcileAppsData"

    .line 6173
    invoke-virtual {v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6174
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    invoke-virtual {v2, p1, v3, v0}, Landroid/content/pm/PackageManagerInternal;->reconcileAppsData(IIZ)V

    .line 6176
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz p1, :cond_60

    const-string v0, "applyUserRestrictions"

    .line 6179
    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6180
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6181
    :try_start_55
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 6182
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_5d

    .line 6183
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_60

    :catchall_5d
    move-exception p0

    .line 6182
    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw p0

    .line 6185
    :cond_60
    :goto_60
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public onBeforeUnlockUser(I)V
    .registers 7

    .line 6193
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 6197
    :cond_7
    iget v1, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 6199
    sget-object v2, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 6202
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 6203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareUserData-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6204
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v4, 0x2

    invoke-virtual {v3, p1, v1, v4}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    .line 6205
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6207
    const-class v1, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManagerInternal;

    .line 6208
    invoke-virtual {v1, p1}, Landroid/os/storage/StorageManagerInternal;->markCeStoragePrepared(I)V

    .line 6210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reconcileAppsData-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6211
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1, v4, v0}, Landroid/content/pm/PackageManagerInternal;->reconcileAppsData(IIZ)V

    .line 6213
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final onPullAtom(ILjava/util/List;)I
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x27a8

    move/from16 v4, p1

    if-eq v4, v3, :cond_1a

    const-string v0, "UserManagerService"

    const-string v3, "Unexpected atom tag: %d"

    new-array v5, v2, [Ljava/lang/Object;

    .line 4980
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    invoke-static {v0, v3, v5}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 4983
    :cond_1a
    invoke-virtual {v0, v2, v2, v2}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    move-result-object v3

    .line 4984
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v5, v1

    :goto_23
    if-ge v5, v4, :cond_6e

    .line 4986
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 4987
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    if-nez v7, :cond_32

    move-object/from16 v8, p2

    goto :goto_68

    .line 4993
    :cond_32
    iget-object v7, v6, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/UserManager;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_3d

    .line 4996
    iget-object v7, v6, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_3e

    :cond_3d
    const/4 v7, 0x0

    :goto_3e
    move-object v11, v7

    .line 4999
    iget-object v7, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v7

    .line 5000
    :try_start_42
    iget-object v8, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    const/4 v12, -0x1

    .line 5001
    invoke-virtual {v8, v9, v12}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(II)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_51

    move/from16 v17, v2

    goto :goto_53

    :cond_51
    move/from16 v17, v1

    .line 5002
    :goto_53
    monitor-exit v7
    :try_end_54
    .catchall {:try_start_42 .. :try_end_54} :catchall_6b

    const/16 v8, 0x27a8

    .line 5004
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    iget v12, v6, Landroid/content/pm/UserInfo;->flags:I

    iget-wide v13, v6, Landroid/content/pm/UserInfo;->creationTime:J

    iget-wide v6, v6, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    move-wide v15, v6

    invoke-static/range {v8 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIILjava/lang/String;IJJZ)Landroid/util/StatsEvent;

    move-result-object v6

    move-object/from16 v8, p2

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_68
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :catchall_6b
    move-exception v0

    .line 5002
    :try_start_6c
    monitor-exit v7
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v0

    :cond_6e
    return v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 6449
    new-instance v0, Lcom/android/server/pm/UserManagerService$Shell;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/UserManagerService$Shell;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$Shell-IA;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onUserLoggedIn(I)V
    .registers 7

    .line 6234
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 6235
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_d

    goto :goto_28

    .line 6240
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide v3, 0xdc46c32800L

    cmp-long p1, v1, v3

    if-lez p1, :cond_1e

    .line 6242
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-wide v1, p1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 6244
    :cond_1e
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    sget-object v1, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iput-object v1, p1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 6245
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    return-void

    .line 6236
    :cond_28
    :goto_28
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "userForeground: unknown user #"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public preCreateUserWithThrow(Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 4154
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    if-eqz v0, :cond_f

    .line 4155
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    move v5, v1

    .line 4157
    invoke-static {v5}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    .line 4159
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->isUserTypeEligibleForPreCreation(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot pre-create user of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 4161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pre-creating user of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/16 v6, -0x2710

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v4, p1

    .line 4164
    :try_start_4a
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_4e
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_4a .. :try_end_4e} :catch_4f

    return-object p0

    :catch_4f
    move-exception p0

    .line 4168
    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public final propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 6

    .line 2581
    invoke-static {p2, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2585
    :cond_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2586
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2588
    iget-object p3, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/UserManagerService$4;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/server/pm/UserManagerService$4;-><init>(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5019
    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    .line 5020
    iput-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 5021
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5022
    :try_start_a
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5023
    monitor-exit v1

    return-object v0

    :catchall_13
    move-exception p0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_13

    throw p0
.end method

.method public final readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 9

    const-string v0, "Error reading user list"

    const/4 v1, 0x0

    .line 3885
    :try_start_3
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3886
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3887
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_28} :catch_37
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_28} :catch_32
    .catchall {:try_start_3 .. :try_end_28} :catchall_30

    .line 3888
    :try_start_28
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/UserManagerService;->readUserLP(ILjava/io/InputStream;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2c} :catch_38
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28 .. :try_end_2c} :catch_33
    .catchall {:try_start_28 .. :try_end_2c} :catchall_3f

    .line 3902
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    :catchall_30
    move-exception p0

    goto :goto_41

    :catch_32
    move-object v2, v1

    .line 3897
    :catch_33
    :try_start_33
    invoke-static {v0}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    goto :goto_3b

    :catch_37
    move-object v2, v1

    .line 3891
    :catch_38
    invoke-static {v0}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_3f

    .line 3902
    :goto_3b
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    :catchall_3f
    move-exception p0

    move-object v1, v2

    :goto_41
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3903
    throw p0
.end method

.method public readUserLP(ILjava/io/InputStream;)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 47
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v7, p1

    .line 3937
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v1

    .line 3939
    :goto_8
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_13

    if-eq v2, v4, :cond_13

    goto :goto_8

    :cond_13
    const/4 v5, 0x0

    if-eq v2, v3, :cond_2b

    .line 3946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to read user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    return-object v5

    :cond_2b
    const/16 v6, -0x2710

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    if-ne v2, v3, :cond_1f3

    .line 3953
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f3

    const-string/jumbo v2, "id"

    const/4 v3, -0x1

    .line 3954
    invoke-interface {v1, v5, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v7, :cond_4f

    const-string v0, "User id does not match the file name"

    .line 3957
    invoke-static {v0}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    return-object v5

    :cond_4f
    const-string/jumbo v2, "serialNumber"

    .line 3963
    invoke-interface {v1, v5, v2, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "flags"

    .line 3964
    invoke-interface {v1, v5, v3, v10}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    const-string v11, "attributes"

    .line 3966
    invoke-interface {v1, v5, v11}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v12, "type"

    .line 3968
    invoke-interface {v1, v5, v12}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_70

    .line 3969
    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    goto :goto_71

    :cond_70
    move-object v12, v5

    :goto_71
    const-string/jumbo v13, "icon"

    .line 3970
    invoke-interface {v1, v5, v13}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "created"

    .line 3971
    invoke-interface {v1, v5, v14, v8, v9}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v14

    const-string/jumbo v4, "lastLoggedIn"

    .line 3972
    invoke-interface {v1, v5, v4, v8, v9}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v16

    const-string/jumbo v4, "lastLoggedInFingerprint"

    .line 3973
    invoke-interface {v1, v5, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "profileGroupId"

    .line 3975
    invoke-interface {v1, v5, v8, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v9, "profileBadge"

    .line 3977
    invoke-interface {v1, v5, v9, v10}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v10, "restrictedProfileParentId"

    .line 3978
    invoke-interface {v1, v5, v10, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v10, "partial"

    move/from16 v21, v2

    const/4 v2, 0x0

    .line 3980
    invoke-interface {v1, v5, v10, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    move/from16 v20, v3

    const-string/jumbo v3, "preCreated"

    .line 3981
    invoke-interface {v1, v5, v3, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    move/from16 v22, v3

    const-string v3, "convertedFromPreCreated"

    .line 3982
    invoke-interface {v1, v5, v3, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    move/from16 v23, v3

    const-string/jumbo v3, "guestToRemove"

    .line 3983
    invoke-interface {v1, v5, v3, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v2, "seedAccountName"

    .line 3985
    invoke-interface {v1, v5, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v25, v3

    const-string/jumbo v3, "seedAccountType"

    .line 3986
    invoke-interface {v1, v5, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_dd

    if-eqz v3, :cond_da

    goto :goto_dd

    :cond_da
    const/16 v24, 0x0

    goto :goto_df

    :cond_dd
    :goto_dd
    const/16 v24, 0x1

    .line 3991
    :goto_df
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    move-object/from16 v34, v2

    move/from16 v32, v24

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v33, 0x1

    .line 3992
    :goto_f9
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move-object/from16 v35, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1c3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_10c

    .line 3993
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v5, :cond_1c3

    const/4 v3, 0x3

    :cond_10c
    if-eq v2, v3, :cond_1bf

    const/4 v3, 0x4

    if-ne v2, v3, :cond_113

    goto/16 :goto_1bf

    .line 3997
    :cond_113
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "name"

    .line 3998
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12f

    .line 3999
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1bf

    .line 4001
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v26, v2

    goto/16 :goto_1bf

    :cond_12f
    const-string/jumbo v3, "restrictions"

    .line 4003
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13e

    .line 4004
    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Landroid/util/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v24

    goto/16 :goto_1bf

    :cond_13e
    const-string v3, "device_policy_restrictions"

    .line 4005
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14c

    .line 4006
    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Landroid/util/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v27

    goto/16 :goto_1bf

    :cond_14c
    const-string v3, "device_policy_local_restrictions"

    .line 4007
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15b

    const-string v2, "device_policy_local_restrictions"

    .line 4008
    invoke-static {v1, v2}, Lcom/android/server/pm/RestrictionsSet;->readRestrictions(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Lcom/android/server/pm/RestrictionsSet;

    move-result-object v28

    goto :goto_1bf

    :cond_15b
    const-string v3, "device_policy_global_restrictions"

    .line 4010
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_168

    .line 4011
    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Landroid/util/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v29

    goto :goto_1bf

    :cond_168
    const-string v3, "account"

    .line 4012
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17c

    .line 4013
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1bf

    .line 4015
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v18

    goto :goto_1bf

    :cond_17c
    const-string/jumbo v3, "seedAccountOptions"

    .line 4017
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18c

    .line 4018
    invoke-static {v1}, Landroid/os/PersistableBundle;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v19

    const/16 v32, 0x1

    goto :goto_1bf

    :cond_18c
    const-string/jumbo v3, "lastRequestQuietModeEnabledCall"

    .line 4020
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a5

    .line 4021
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1bf

    .line 4023
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    goto :goto_1bf

    :cond_1a5
    const-string/jumbo v3, "ignorePrepareStorageErrors"

    .line 4025
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1bf

    .line 4026
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1bf

    .line 4028
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move/from16 v33, v2

    :cond_1bf
    :goto_1bf
    move-object/from16 v3, v35

    goto/16 :goto_f9

    :cond_1c3
    move v1, v8

    move/from16 v38, v9

    move v7, v10

    move/from16 v39, v11

    move/from16 v5, v20

    move/from16 v8, v21

    move/from16 v0, v22

    move/from16 v10, v23

    move/from16 v22, v25

    move-object/from16 v3, v26

    move-object/from16 p2, v27

    move-object/from16 v2, v29

    move-wide/from16 v36, v30

    move/from16 v40, v32

    move-object v9, v4

    move/from16 v21, v6

    move-object/from16 v26, v12

    move-object v4, v13

    move-wide v13, v14

    move-wide/from16 v11, v16

    move-object/from16 v20, v18

    move-object/from16 v16, v19

    move-object/from16 v17, v24

    move-object/from16 v6, v28

    move-object/from16 v18, v34

    move-object/from16 v19, v35

    goto :goto_21e

    :cond_1f3
    move v1, v6

    move/from16 v21, v1

    move v8, v7

    const/16 p2, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v26, 0x0

    const/16 v33, 0x1

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    .line 4035
    :goto_21e
    new-instance v15, Landroid/content/pm/UserInfo;

    move/from16 v41, v1

    move-object v1, v15

    move-object/from16 v42, v2

    move/from16 v2, p1

    move-object/from16 v43, v6

    move-object/from16 v6, v26

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 4036
    iput v8, v15, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 4037
    iput-wide v13, v15, Landroid/content/pm/UserInfo;->creationTime:J

    .line 4038
    iput-wide v11, v15, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 4039
    iput-object v9, v15, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 4040
    iput-boolean v7, v15, Landroid/content/pm/UserInfo;->partial:Z

    .line 4041
    iput-boolean v0, v15, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 4042
    iput-boolean v10, v15, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    move/from16 v0, v22

    .line 4043
    iput-boolean v0, v15, Landroid/content/pm/UserInfo;->guestToRemove:Z

    move/from16 v6, v41

    .line 4044
    iput v6, v15, Landroid/content/pm/UserInfo;->profileGroupId:I

    move/from16 v9, v38

    .line 4045
    iput v9, v15, Landroid/content/pm/UserInfo;->profileBadge:I

    move/from16 v6, v21

    .line 4046
    iput v6, v15, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    move/from16 v11, v39

    .line 4048
    invoke-virtual {v15, v11}, Landroid/content/pm/UserInfo;->setAttributes(I)V

    .line 4052
    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    .line 4053
    iput-object v15, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v1, v20

    .line 4054
    iput-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    move-object/from16 v1, v18

    .line 4055
    iput-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    move-object/from16 v1, v19

    .line 4056
    iput-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    move/from16 v1, v40

    .line 4057
    iput-boolean v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    move-object/from16 v1, v16

    .line 4058
    iput-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    move-wide/from16 v1, v36

    .line 4059
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserManagerService$UserData;->setLastRequestQuietModeEnabledMillis(J)V

    if-eqz v33, :cond_276

    .line 4061
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService$UserData;->setIgnorePrepareStorageErrors()V

    :cond_276
    move-object/from16 v1, p0

    .line 4064
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz v17, :cond_289

    .line 4066
    :try_start_27d
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    move/from16 v4, p1

    move-object/from16 v5, v17

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    goto :goto_28b

    :catchall_287
    move-exception v0

    goto :goto_2c3

    :cond_289
    move/from16 v4, p1

    :goto_28b
    move-object/from16 v3, v43

    if-eqz v3, :cond_29e

    .line 4069
    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p2, :cond_2b8

    const-string v3, "UserManagerService"

    const-string v5, "Seeing both legacy and current local restrictions in xml"

    .line 4071
    invoke-static {v3, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b8

    :cond_29e
    if-eqz p2, :cond_2b8

    .line 4075
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2ac

    .line 4076
    new-instance v3, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v3}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    goto :goto_2b3

    .line 4077
    :cond_2ac
    new-instance v3, Lcom/android/server/pm/RestrictionsSet;

    move-object/from16 v5, p2

    invoke-direct {v3, v4, v5}, Lcom/android/server/pm/RestrictionsSet;-><init>(ILandroid/os/Bundle;)V

    .line 4078
    :goto_2b3
    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2b8
    :goto_2b8
    move-object/from16 v3, v42

    if-eqz v3, :cond_2c1

    .line 4081
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, v4, v3}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 4084
    :cond_2c1
    monitor-exit v2

    return-object v0

    :goto_2c3
    monitor-exit v2
    :try_end_2c4
    .catchall {:try_start_27d .. :try_end_2c4} :catchall_287

    throw v0
.end method

.method public final readUserListLP()V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock",
            "mPackagesLock"
        }
    .end annotation

    .line 3123
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "Userlist file not exist, fallback to single user"

    .line 3125
    invoke-static {v0}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    .line 3127
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V

    return-void

    .line 3131
    :cond_11
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    .line 3133
    :try_start_19
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1d} :catch_15d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_1d} :catch_15d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_19 .. :try_end_1d} :catch_15d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_15b

    .line 3134
    :try_start_1d
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v2

    .line 3136
    :goto_21
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2c

    if-eq v3, v4, :cond_2c

    goto :goto_21

    :cond_2c
    if-eq v3, v5, :cond_37

    const-string v1, "Unable to read user list"

    .line 3143
    invoke-static {v1}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_33} :catch_159
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_33} :catch_159
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1d .. :try_end_33} :catch_159
    .catchall {:try_start_1d .. :try_end_33} :catchall_156

    .line 3238
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :cond_37
    const/4 v3, -0x1

    .line 3150
    :try_start_38
    iput v3, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 3151
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "users"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    const-string/jumbo v3, "nextSerialNumber"

    .line 3152
    iget v6, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 3153
    invoke-interface {v2, v1, v3, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    const-string/jumbo v3, "version"

    .line 3154
    iget v6, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 3155
    invoke-interface {v2, v1, v3, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    const-string/jumbo v3, "userTypeConfigVersion"

    .line 3156
    iget v6, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    .line 3157
    invoke-interface {v2, v1, v3, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    :cond_68
    move-object v3, v1

    .line 3164
    :cond_69
    :goto_69
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6

    if-eq v6, v4, :cond_14f

    if-ne v6, v5, :cond_69

    .line 3166
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "user"

    .line 3167
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f3

    const-string/jumbo v7, "id"

    .line 3168
    invoke-interface {v2, v1, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 3169
    invoke-virtual {p0, v7}, Lcom/android/server/pm/UserManagerService;->readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v8

    if-nez v8, :cond_a9

    .line 3172
    invoke-virtual {p0, v7}, Lcom/android/server/pm/UserManagerService;->restoreUserFallbackLP(I)Z

    move-result v9

    if-eqz v9, :cond_a9

    .line 3173
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reading fallback file for User "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    .line 3174
    invoke-virtual {p0, v7}, Lcom/android/server/pm/UserManagerService;->readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v8

    :cond_a9
    if-eqz v8, :cond_db

    .line 3180
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_ae} :catch_159
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_38 .. :try_end_ae} :catch_159
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_38 .. :try_end_ae} :catch_159
    .catchall {:try_start_38 .. :try_end_ae} :catchall_156

    .line 3181
    :try_start_ae
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget-object v10, v8, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3182
    iget v9, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    if-ltz v9, :cond_c1

    iget-object v10, v8, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    if-gt v9, v10, :cond_c8

    .line 3184
    :cond_c1
    iget-object v9, v8, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    add-int/2addr v9, v4

    iput v9, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 3188
    :cond_c8
    iget v9, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    const/16 v10, 0x96

    if-lt v9, v10, :cond_d6

    const/16 v10, 0xa0

    if-gt v9, v10, :cond_d6

    const/16 v9, 0xa1

    .line 3189
    iput v9, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 3192
    :cond_d6
    monitor-exit v7

    goto :goto_db

    :catchall_d8
    move-exception v1

    monitor-exit v7
    :try_end_da
    .catchall {:try_start_ae .. :try_end_da} :catchall_d8

    :try_start_da
    throw v1

    :cond_db
    :goto_db
    if-nez v8, :cond_69

    .line 3195
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User data might be corrupted for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    goto/16 :goto_69

    :cond_f3
    const-string/jumbo v7, "guestRestrictions"

    .line 3197
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_122

    .line 3198
    :cond_fc
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6

    if-eq v6, v4, :cond_69

    const/4 v7, 0x3

    if-eq v6, v7, :cond_69

    if-ne v6, v5, :cond_fc

    .line 3201
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "restrictions"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 3202
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v6
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_117} :catch_159
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_da .. :try_end_117} :catch_159
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_da .. :try_end_117} :catch_159
    .catchall {:try_start_da .. :try_end_117} :catchall_156

    .line 3203
    :try_start_117
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 3204
    invoke-static {v2, v7}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Landroid/util/TypedXmlPullParser;Landroid/os/Bundle;)V

    .line 3205
    monitor-exit v6

    goto/16 :goto_69

    :catchall_11f
    move-exception v1

    monitor-exit v6
    :try_end_121
    .catchall {:try_start_117 .. :try_end_121} :catchall_11f

    :try_start_121
    throw v1

    :cond_122
    const-string v7, "deviceOwnerUserId"

    .line 3210
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_142

    const-string/jumbo v7, "globalRestrictionOwnerUserId"

    .line 3212
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_134

    goto :goto_142

    :cond_134
    const-string v7, "device_policy_restrictions"

    .line 3215
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 3218
    invoke-static {v2}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Landroid/util/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v3

    goto/16 :goto_69

    :cond_142
    :goto_142
    const-string/jumbo v6, "id"

    .line 3213
    iget v7, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    .line 3214
    invoke-interface {v2, v1, v6, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    goto/16 :goto_69

    .line 3223
    :cond_14f
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 3224
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessaryLP(Landroid/os/Bundle;)V
    :try_end_155
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_155} :catch_159
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_121 .. :try_end_155} :catch_159
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_121 .. :try_end_155} :catch_159
    .catchall {:try_start_121 .. :try_end_155} :catchall_156

    goto :goto_199

    :catchall_156
    move-exception p0

    move-object v1, v0

    goto :goto_1b5

    :catch_159
    move-exception v1

    goto :goto_161

    :catchall_15b
    move-exception p0

    goto :goto_1b5

    :catch_15d
    move-exception v0

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .line 3227
    :goto_161
    :try_start_161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO/Parser Exception occurred while parsing the userlist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    .line 3229
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->restoreUserListFallbackLP()Z

    move-result v1

    if-eqz v1, :cond_191

    const-string v1, "Reboot with the userlist fallback"

    .line 3230
    invoke-static {v1}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    .line 3231
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string/jumbo v2, "reboot with userlist fallback"

    .line 3232
    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    :cond_191
    const-string v1, "No userlist fallback file. Fallback to single user"

    .line 3234
    invoke-static {v1}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    .line 3236
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_199
    .catchall {:try_start_161 .. :try_end_199} :catchall_156

    .line 3238
    :goto_199
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3242
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3243
    :try_start_19f
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1b0

    const-string/jumbo v0, "mUsers is empty, fallback to single user"

    .line 3244
    invoke-static {v0}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    .line 3245
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V

    .line 3247
    :cond_1b0
    monitor-exit v1

    return-void

    :catchall_1b2
    move-exception p0

    monitor-exit v1
    :try_end_1b4
    .catchall {:try_start_19f .. :try_end_1b4} :catchall_1b2

    throw p0

    .line 3238
    :goto_1b5
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3239
    throw p0
.end method

.method public reconcileUsers(Ljava/lang/String;)V
    .registers 5

    .line 6222
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v1, v2}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/server/pm/UserDataPreparer;->reconcileUsers(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public final registerStatsCallbacks()V
    .registers 5

    .line 4969
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/StatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    .line 4973
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/UserManagerService;)V

    const/16 p0, 0x27a8

    const/4 v3, 0x0

    .line 4970
    invoke-virtual {v0, p0, v3, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final removeMaintenanceModeUser(Lcom/android/server/pm/UserManagerService$UserData;)Z
    .registers 3

    .line 5153
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mMaintenanceModeServiceUtils:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->isAllowedToManage()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 5157
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->markMaintenanceModeUserForDeletion(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 5158
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mMaintenanceModeServiceUtils:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->finishUserDeletion()V

    const/4 p0, 0x1

    return p0
.end method

.method public final removeNonSystemUsers()V
    .registers 7

    .line 7503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7504
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7505
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_25

    .line 7507
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 7508
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-eqz v5, :cond_22

    .line 7509
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 7512
    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 7513
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 7514
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->removeUser(I)Z

    goto :goto_2a

    :cond_3c
    return-void

    :catchall_3d
    move-exception p0

    .line 7512
    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public removeUser(I)Z
    .registers 5

    const-string v0, "UserManagerService"

    .line 5322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeUser u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Only the system can remove users"

    .line 5323
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    const/16 v0, 0x4d

    if-ne p1, v0, :cond_40

    .line 5328
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5329
    :try_start_23
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    .line 5330
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_3d

    if-eqz v1, :cond_40

    .line 5331
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    if-eqz v0, :cond_40

    .line 5332
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isMaintenanceMode()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 5333
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->removeMaintenanceModeUser(Lcom/android/server/pm/UserManagerService$UserData;)Z

    move-result p0

    return p0

    :catchall_3d
    move-exception p0

    .line 5330
    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p0

    .line 5338
    :cond_40
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRemovalRestriction(I)Ljava/lang/String;

    move-result-object v0

    .line 5339
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6f

    const-string p0, "UserManagerService"

    .line 5340
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot remove user. "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is enabled."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 5343
    :cond_6f
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result p0

    return p0
.end method

.method public removeUserEvenWhenDisallowed(I)Z
    .registers 3

    const-string v0, "Only the system can remove users"

    .line 5348
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 5349
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result p0

    return p0
.end method

.method public removeUserInfo(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5029
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5030
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5031
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final removeUserState(I)V
    .registers 8

    const-string v0, "UserManagerService"

    .line 5635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing user state of user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5637
    :try_start_16
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->destroyUserKey(I)V
    :try_end_23
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_23} :catch_24

    goto :goto_40

    :catch_24
    move-exception v0

    const-string v1, "UserManagerService"

    .line 5640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying key for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " failed, continuing anyway"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5645
    :goto_40
    :try_start_40
    invoke-static {}, Landroid/security/GateKeeper;->getService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 5647
    invoke-interface {v0, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_49} :catch_4a

    goto :goto_52

    :catch_4a
    const-string v0, "UserManagerService"

    const-string/jumbo v1, "unable to clear GK secure user id"

    .line 5650
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5654
    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUser(Lcom/android/server/pm/UserManagerService;I)V

    .line 5657
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserDataPreparer;->destroyUserData(II)V

    const/4 v0, 0x0

    .line 5663
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5664
    :try_start_61
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    .line 5665
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_61 .. :try_end_6a} :catchall_11f

    if-eqz v2, :cond_6e

    .line 5666
    iget-object v0, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 5675
    :cond_6e
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5676
    :try_start_71
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5677
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5678
    monitor-exit v2
    :try_end_7c
    .catchall {:try_start_71 .. :try_end_7c} :catchall_11c

    .line 5679
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v1

    .line 5680
    :try_start_7f
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->delete(I)V

    .line 5681
    monitor-exit v1
    :try_end_85
    .catchall {:try_start_7f .. :try_end_85} :catchall_119

    .line 5682
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5683
    :try_start_88
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    .line 5684
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    .line 5685
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    .line 5687
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    const/4 v1, 0x0

    move v3, v1

    .line 5690
    :goto_9e
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_b8

    .line 5691
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 5692
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyLocalRestrictionsForTargetUserLR(I)Lcom/android/server/pm/RestrictionsSet;

    move-result-object v4

    .line 5693
    invoke-virtual {v4, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_9e

    .line 5695
    :cond_b8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    move-result v1

    or-int/2addr v1, v3

    if-eqz v1, :cond_c4

    .line 5697
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V

    .line 5699
    :cond_c4
    monitor-exit v2
    :try_end_c5
    .catchall {:try_start_88 .. :try_end_c5} :catchall_116

    .line 5701
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5702
    :try_start_c8
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 5703
    monitor-exit v1
    :try_end_cc
    .catchall {:try_start_c8 .. :try_end_cc} :catchall_113

    .line 5705
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 5706
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 5707
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 5709
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->deleteUserFallback(I)V

    if-eqz v0, :cond_112

    .line 5717
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v0

    if-eqz v0, :cond_112

    .line 5718
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    const/16 v1, 0x63

    if-ne p1, v1, :cond_10d

    const/16 p1, 0x5f

    :goto_103
    if-gt p1, v1, :cond_10d

    .line 5721
    :try_start_105
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_103

    .line 5724
    :cond_10d
    monitor-exit v0

    goto :goto_112

    :catchall_10f
    move-exception p0

    monitor-exit v0
    :try_end_111
    .catchall {:try_start_105 .. :try_end_111} :catchall_10f

    throw p0

    :cond_112
    :goto_112
    return-void

    :catchall_113
    move-exception p0

    .line 5703
    :try_start_114
    monitor-exit v1
    :try_end_115
    .catchall {:try_start_114 .. :try_end_115} :catchall_113

    throw p0

    :catchall_116
    move-exception p0

    .line 5699
    :try_start_117
    monitor-exit v2
    :try_end_118
    .catchall {:try_start_117 .. :try_end_118} :catchall_116

    throw p0

    :catchall_119
    move-exception p0

    .line 5681
    :try_start_11a
    monitor-exit v1
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_119

    throw p0

    :catchall_11c
    move-exception p0

    .line 5678
    :try_start_11d
    monitor-exit v2
    :try_end_11e
    .catchall {:try_start_11d .. :try_end_11e} :catchall_11c

    throw p0

    :catchall_11f
    move-exception p0

    .line 5665
    :try_start_120
    monitor-exit v1
    :try_end_121
    .catchall {:try_start_120 .. :try_end_121} :catchall_11f

    throw p0
.end method

.method public final removeUserUnchecked(I)Z
    .registers 12

    .line 5368
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5370
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v2, :cond_b

    .line 5371
    invoke-virtual {v2, p1}, Lcom/android/server/pm/PersonaManagerService;->onUserRemoved(I)V

    .line 5376
    :cond_b
    :try_start_b
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, p1, :cond_1d

    const-string p0, "UserManagerService"

    const-string p1, "Current user cannot be removed."

    .line 5378
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_15e

    .line 5481
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 5381
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_15e

    .line 5382
    :try_start_20
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_15b

    .line 5383
    :try_start_23
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez p1, :cond_3a

    const-string p0, "UserManagerService"

    const-string p1, "System user cannot be removed."

    .line 5385
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5386
    monitor-exit v4
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_158

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_15b

    .line 5481
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_3a
    const/4 v6, 0x1

    if-nez v5, :cond_56

    :try_start_3d
    const-string p0, "UserManagerService"

    const-string v5, "Cannot remove user %d, invalid user id provided."

    new-array v6, v6, [Ljava/lang/Object;

    .line 5391
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    .line 5390
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5392
    monitor-exit v4
    :try_end_51
    .catchall {:try_start_3d .. :try_end_51} :catchall_158

    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_15b

    .line 5481
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 5396
    :cond_56
    :try_start_56
    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->shouldBlockRemovalAttemptForMaintenanceModeUser(Lcom/android/server/pm/UserManagerService$UserData;)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 5397
    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_158

    :try_start_5d
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_15b

    .line 5481
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 5401
    :cond_62
    :try_start_62
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_83

    const-string p0, "UserManagerService"

    const-string v5, "User %d is already scheduled for removal."

    new-array v6, v6, [Ljava/lang/Object;

    .line 5403
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    .line 5402
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5404
    monitor-exit v4
    :try_end_7e
    .catchall {:try_start_62 .. :try_end_7e} :catchall_158

    :try_start_7e
    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_15b

    .line 5481
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 5409
    :cond_83
    :try_start_83
    iget-object v7, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-nez v7, :cond_b9

    iget-object v7, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v7

    if-nez v7, :cond_b9

    iget-object v7, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v7

    if-nez v7, :cond_b9

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 5410
    invoke-static {v7}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isUserRemovalAllowed(Z)Z

    move-result v7

    if-eqz v7, :cond_b3

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 5411
    invoke-static {v7}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result v7

    if-nez v7, :cond_b9

    .line 5412
    :cond_b3
    monitor-exit v4
    :try_end_b4
    .catchall {:try_start_83 .. :try_end_b4} :catchall_158

    :try_start_b4
    monitor-exit v2
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_15b

    .line 5481
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_b9
    :try_start_b9
    const-string v7, "UserManagerService"

    .line 5416
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5417
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 5418
    monitor-exit v4
    :try_end_d3
    .catchall {:try_start_b9 .. :try_end_d3} :catchall_158

    .line 5423
    :try_start_d3
    iget-object v4, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-boolean v6, v4, Landroid/content/pm/UserInfo;->partial:Z

    .line 5426
    iget v7, v4, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v7, v7, 0x40

    iput v7, v4, Landroid/content/pm/UserInfo;->flags:I

    .line 5427
    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 5428
    monitor-exit v2
    :try_end_e1
    .catchall {:try_start_d3 .. :try_end_e1} :catchall_15b

    .line 5430
    :try_start_e1
    iget-object v2, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v4, v2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    iget v2, v2, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {p0, p1, v4, v2}, Lcom/android/server/pm/UserManagerService;->logUserRemoveJourneyBegin(ILjava/lang/String;I)J

    move-result-wide v7
    :try_end_eb
    .catchall {:try_start_e1 .. :try_end_eb} :catchall_15e

    .line 5434
    :try_start_eb
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IAppOpsService;->removeUser(I)V
    :try_end_f0
    .catch Landroid/os/RemoteException; {:try_start_eb .. :try_end_f0} :catch_f1
    .catchall {:try_start_eb .. :try_end_f0} :catchall_15e

    goto :goto_f9

    :catch_f1
    move-exception v2

    :try_start_f2
    const-string v4, "UserManagerService"

    const-string v9, "Unable to notify AppOpsService of removing user."

    .line 5436
    invoke-static {v4, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5440
    :goto_f9
    iget-object v2, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v9, -0x2710

    if-eq v4, v9, :cond_110

    .line 5441
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_110

    .line 5444
    iget-object v2, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4, v2}, Lcom/android/server/pm/UserManagerService;->sendProfileRemovedBroadcast(II)V

    .line 5448
    :cond_110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->resetDefaultIconandName(I)V

    const-string v2, "UserManagerService"

    const-string/jumbo v4, "resetDefaultIconandName"

    .line 5449
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5452
    sget-boolean v2, Lcom/samsung/android/rune/PMRune;->UM_BMODE:Z

    if-eqz v2, :cond_138

    iget-object v2, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v2

    if-eqz v2, :cond_138

    .line 5453
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_12a
    .catchall {:try_start_f2 .. :try_end_12a} :catchall_15e

    .line 5454
    :try_start_12a
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v4

    if-ne v4, v6, :cond_133

    .line 5455
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->disableBMode()V

    .line 5457
    :cond_133
    monitor-exit v2

    goto :goto_138

    :catchall_135
    move-exception p0

    monitor-exit v2
    :try_end_137
    .catchall {:try_start_12a .. :try_end_137} :catchall_135

    :try_start_137
    throw p0
    :try_end_138
    .catchall {:try_start_137 .. :try_end_138} :catchall_15e

    .line 5463
    :cond_138
    :goto_138
    :try_start_138
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    new-instance v4, Lcom/android/server/pm/UserManagerService$7;

    invoke-direct {v4, p0, v7, v8}, Lcom/android/server/pm/UserManagerService$7;-><init>(Lcom/android/server/pm/UserManagerService;J)V

    invoke-interface {v2, p1, v6, v4}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result p0
    :try_end_145
    .catch Landroid/os/RemoteException; {:try_start_138 .. :try_end_145} :catch_14c
    .catchall {:try_start_138 .. :try_end_145} :catchall_15e

    if-nez p0, :cond_148

    move v3, v6

    .line 5481
    :cond_148
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catch_14c
    move-exception p0

    :try_start_14d
    const-string p1, "UserManagerService"

    const-string v2, "Failed to stop user during removal."

    .line 5476
    invoke-static {p1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_154
    .catchall {:try_start_14d .. :try_end_154} :catchall_15e

    .line 5481
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_158
    move-exception p0

    .line 5418
    :try_start_159
    monitor-exit v4
    :try_end_15a
    .catchall {:try_start_159 .. :try_end_15a} :catchall_158

    :try_start_15a
    throw p0

    :catchall_15b
    move-exception p0

    .line 5428
    monitor-exit v2
    :try_end_15d
    .catchall {:try_start_15a .. :try_end_15d} :catchall_15b

    :try_start_15d
    throw p0
    :try_end_15e
    .catchall {:try_start_15d .. :try_end_15e} :catchall_15e

    :catchall_15e
    move-exception p0

    .line 5481
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5482
    throw p0
.end method

.method public removeUserWhenPossible(IZ)I
    .registers 10

    const-string v0, "Only the system can remove users"

    .line 5502
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    const/4 v0, -0x2

    const/4 v1, 0x0

    if-nez p2, :cond_37

    .line 5505
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRemovalRestriction(I)Ljava/lang/String;

    move-result-object p2

    .line 5506
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_37

    const-string p0, "UserManagerService"

    .line 5507
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot remove user. "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is enabled."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_37
    if-nez p1, :cond_42

    const-string p0, "UserManagerService"

    const-string p1, "System user cannot be removed."

    .line 5512
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x4

    return p0

    .line 5516
    :cond_42
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5519
    :try_start_46
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_fa

    .line 5520
    :try_start_49
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_f7

    .line 5521
    :try_start_4c
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v5, :cond_78

    const-string p0, "UserManagerService"

    .line 5523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot remove user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", invalid user id provided."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x3

    .line 5525
    monitor-exit v4
    :try_end_73
    .catchall {:try_start_4c .. :try_end_73} :catchall_f4

    :try_start_73
    monitor-exit p2
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_f7

    .line 5560
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 5529
    :cond_78
    :try_start_78
    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->shouldBlockRemovalAttemptForMaintenanceModeUser(Lcom/android/server/pm/UserManagerService$UserData;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 5530
    monitor-exit v4
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_f4

    :try_start_7f
    monitor-exit p2
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_f7

    .line 5560
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    .line 5534
    :cond_84
    :try_start_84
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_ae

    const-string p0, "UserManagerService"

    .line 5535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is already scheduled for removal."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    .line 5536
    monitor-exit v4
    :try_end_a9
    .catchall {:try_start_84 .. :try_end_a9} :catchall_f4

    :try_start_a9
    monitor-exit p2
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_f7

    .line 5560
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 5538
    :cond_ae
    :try_start_ae
    monitor-exit v4
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_f4

    .line 5541
    :try_start_af
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eq v0, p1, :cond_c0

    .line 5544
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 5545
    monitor-exit p2
    :try_end_bc
    .catchall {:try_start_af .. :try_end_bc} :catchall_f7

    .line 5560
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_c0
    :try_start_c0
    const-string v1, "UserManagerService"

    .line 5551
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to immediately remove user "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (current user is "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "). User is set as ephemeral and will be removed on user switch or reboot."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5554
    iget-object p1, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 5555
    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    const/4 p0, 0x1

    .line 5557
    monitor-exit p2
    :try_end_f0
    .catchall {:try_start_c0 .. :try_end_f0} :catchall_f7

    .line 5560
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_f4
    move-exception p0

    .line 5538
    :try_start_f5
    monitor-exit v4
    :try_end_f6
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_f4

    :try_start_f6
    throw p0

    :catchall_f7
    move-exception p0

    .line 5558
    monitor-exit p2
    :try_end_f9
    .catchall {:try_start_f6 .. :try_end_f9} :catchall_f7

    :try_start_f9
    throw p0
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_fa

    :catchall_fa
    move-exception p0

    .line 5560
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5561
    throw p0
.end method

.method public requestQuietModeEnabled(Ljava/lang/String;ZILandroid/content/IntentSender;I)Z
    .registers 16

    .line 1274
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_11

    if-nez p4, :cond_8

    goto :goto_11

    .line 1277
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "target should only be specified when we are disabling quiet mode."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1281
    :cond_11
    :goto_11
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 1282
    invoke-virtual {p0, p3}, Lcom/android/server/pm/UserManagerService;->isQuietModeEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_21

    .line 1283
    invoke-virtual {p0, p3, v1, p4, p1}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V

    :cond_21
    return v1

    :cond_22
    and-int/lit8 v0, p5, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_29

    move v0, v2

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_30

    move v9, v2

    goto :goto_31

    :cond_30
    move v9, v1

    :goto_31
    if-eqz v0, :cond_4e

    if-nez v9, :cond_36

    goto :goto_4e

    .line 1293
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "invalid flags: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1297
    :cond_4e
    :goto_4e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-eqz p4, :cond_56

    move v7, v2

    goto :goto_57

    :cond_56
    move v7, v1

    :goto_57
    move-object v3, p0

    move-object v4, p1

    move v6, p3

    move v8, v0

    .line 1296
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/UserManagerService;->ensureCanModifyQuietMode(Ljava/lang/String;IIZZ)V

    if-eqz v9, :cond_7b

    .line 1300
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p5

    .line 1299
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_73

    goto :goto_7b

    .line 1303
    :cond_73
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "SystemUI is not allowed to set QUIET_MODE_DISABLE_ONLY_IF_CREDENTIAL_NOT_REQUIRED"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1307
    :cond_7b
    :goto_7b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    if-eqz p2, :cond_88

    .line 1310
    :try_start_81
    invoke-virtual {p0, p3, v2, p4, p1}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_d6

    .line 1338
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 1314
    :cond_88
    :try_start_88
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    move-result p2

    if-eqz p2, :cond_ad

    .line 1315
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class p5, Landroid/app/KeyguardManager;

    invoke-virtual {p2, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    .line 1320
    iget-object p5, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p5, p3}, Lcom/android/server/pm/UserManagerService$LocalService;->getProfileParentId(I)I

    move-result p5

    invoke-virtual {p2, p5}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p2

    if-eqz p2, :cond_a8

    if-eqz v9, :cond_ad

    .line 1322
    :cond_a8
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->tryUnlockWithCachedUnifiedChallenge(I)Z

    :cond_ad
    if-nez v0, :cond_bf

    .line 1325
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1326
    invoke-virtual {p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p2

    if-eqz p2, :cond_bf

    .line 1327
    invoke-static {p3}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result p2
    :try_end_bb
    .catchall {:try_start_88 .. :try_end_bb} :catchall_d6

    if-nez p2, :cond_bf

    move p2, v2

    goto :goto_c0

    :cond_bf
    move p2, v1

    :goto_c0
    if-eqz p2, :cond_cf

    if-eqz v9, :cond_c8

    .line 1338
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    .line 1332
    :cond_c8
    :try_start_c8
    invoke-virtual {p0, p3, p4}, Lcom/android/server/pm/UserManagerService;->showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;)V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_d6

    .line 1338
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    .line 1335
    :cond_cf
    :try_start_cf
    invoke-virtual {p0, p3, v1, p4, p1}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_d6

    .line 1338
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_d6
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1339
    throw p0
.end method

.method public final resetDefaultIconandName(I)V
    .registers 3

    const-string v0, "com.samsung.knox.securefolder"

    .line 7773
    :try_start_2
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 7774
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    .line 7775
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object p0

    const/4 p1, 0x0

    .line 7776
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->changeApplicationIcon(Ljava/lang/String;[B)Z

    .line 7777
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->changeApplicationName(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_1a

    goto :goto_35

    :catch_1a
    move-exception p0

    .line 7780
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    :goto_35
    return-void
.end method

.method public final restoreUserFallbackLP(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3686
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3687
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".fallback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3688
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_52

    .line 3689
    invoke-static {v1, v0}, Landroid/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)J

    .line 3690
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Use fallback file "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 3693
    :cond_52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No fallback file of User "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final restoreUserListFallbackLP()Z
    .registers 4

    .line 3703
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    .line 3704
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".fallback"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3705
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_28

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_28

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    return p0

    :catch_28
    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public final scanNextAvailableIdLocked(ZZ)I
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    if-eqz p1, :cond_5

    const/16 v0, 0x96

    goto :goto_7

    :cond_5
    const/16 v0, 0xa

    :goto_7
    if-eqz p2, :cond_b

    const/16 v0, 0x5f

    :cond_b
    :goto_b
    const/16 v1, 0x53e2

    const/4 v2, -0x1

    if-ge v0, v1, :cond_40

    const/16 v1, 0x4d

    if-ne v0, v1, :cond_15

    goto :goto_3d

    :cond_15
    if-eqz p1, :cond_1c

    const/16 v1, 0xa0

    if-le v0, v1, :cond_1c

    return v2

    :cond_1c
    if-eqz p2, :cond_25

    .line 6314
    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-nez v1, :cond_2c

    return v2

    .line 6317
    :cond_25
    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_3d

    .line 6321
    :cond_2c
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_3d

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_3d

    return v0

    :cond_3d
    :goto_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_40
    return v2
.end method

.method public final scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 4

    .line 3604
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 3605
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3606
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_16
    return-void
.end method

.method public semGetSemUserInfo(I)Landroid/content/pm/SemUserInfo;
    .registers 4

    .line 7632
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 7636
    new-instance p1, Landroid/content/pm/SemUserInfo;

    invoke-direct {p1, p0}, Landroid/content/pm/SemUserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    return-object p1

    .line 7634
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "there is no UserInfo for userId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final sendATCommandResponse()V
    .registers 5

    .line 5102
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 5103
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    const-string v1, "AT+SVCIFPGM=1,3\r\n+SVCIFPGM:1,"

    if-eqz v0, :cond_26

    .line 5105
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    const/16 v2, 0x4d

    if-ne v0, v2, :cond_26

    .line 5106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "REPAIRMODE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    .line 5108
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "USERMODE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5113
    :goto_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5115
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.BCS_RESPONSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "response"

    .line 5116
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UserManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5118
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final sendProfileRemovedBroadcast(II)V
    .registers 6

    .line 5730
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5731
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.user_handle"

    .line 5732
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5733
    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 5734
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->broadcastIntentToManifestReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    const/high16 p1, 0x50000000

    .line 5736
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5738
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public final sendUserInfoChangedBroadcast(I)V
    .registers 4

    .line 2094
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.user_handle"

    .line 2095
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x40000000    # 2.0f

    .line 2096
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2097
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 7

    const-string/jumbo v0, "set application restrictions"

    .line 5762
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    .line 5763
    invoke-static {p1}, Lcom/android/server/pm/UserManagerService;->validateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_46

    const-string p0, "../"

    .line 5765
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2f

    const p0, 0x534e4554

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "239701237"

    aput-object p3, p1, p2

    const/4 p2, -0x1

    .line 5766
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const/4 p2, 0x2

    const-string p3, ""

    aput-object p3, p1, p2

    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5768
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid package name: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    if-eqz p2, :cond_4b

    .line 5771
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 5774
    :cond_4b
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_5c

    .line 5775
    :try_start_50
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_57

    goto :goto_5c

    .line 5779
    :cond_57
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLAr(Ljava/lang/String;Landroid/os/Bundle;I)V

    move p2, v1

    goto :goto_60

    .line 5776
    :cond_5c
    :goto_5c
    invoke-static {p1, p3}, Lcom/android/server/pm/UserManagerService;->cleanAppRestrictionsForPackageLAr(Ljava/lang/String;I)Z

    move-result p2

    .line 5783
    :goto_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_50 .. :try_end_61} :catchall_af

    if-nez p2, :cond_64

    return-void

    .line 5790
    :cond_64
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5791
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x40000000    # 2.0f

    .line 5792
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5793
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5798
    :try_start_7c
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->isKPUAgent(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_ae

    const-string/jumbo p2, "ro.product_ship"

    .line 5799
    invoke-static {p2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_91

    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/UserManagerService;->isKPUPlatformSigned(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_ae

    .line 5800
    :cond_91
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.action.NOTIFY_KPU_INTERNAL"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5801
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 5802
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5803
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_a9} :catch_aa

    goto :goto_ae

    :catch_aa
    move-exception p0

    .line 5807
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_ae
    :goto_ae
    return-void

    :catchall_af
    move-exception p0

    .line 5783
    :try_start_b0
    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    throw p0
.end method

.method public setContainerInfo()V
    .registers 1

    return-void
.end method

.method public final setDefaultCrossProfileIntentFilters(ILcom/android/server/pm/UserTypeDetails;Landroid/os/Bundle;I)V
    .registers 25

    move-object/from16 v0, p0

    if-eqz p2, :cond_73

    .line 4722
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/UserTypeDetails;->isProfile()Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_73

    .line 4726
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultCrossProfileIntentFilters()Ljava/util/List;

    move-result-object v1

    .line 4727
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    return-void

    :cond_16
    const-string/jumbo v1, "no_sharing_into_profile"

    const/4 v2, 0x0

    move-object/from16 v3, p3

    .line 4733
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 4736
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultCrossProfileIntentFilters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_28
    if-ge v2, v3, :cond_73

    .line 4739
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultCrossProfileIntentFilters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    if-eqz v1, :cond_3b

    .line 4740
    iget-boolean v5, v4, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->letsPersonalDataIntoProfile:Z

    if-eqz v5, :cond_3b

    goto :goto_70

    .line 4743
    :cond_3b
    iget v5, v4, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->direction:I

    if-nez v5, :cond_57

    .line 4744
    iget-object v6, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->filter:Lcom/android/server/pm/WatchedIntentFilter;

    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 4745
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    iget v12, v4, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->flags:I

    move/from16 v10, p1

    move/from16 v11, p4

    .line 4744
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/pm/PackageManagerService;->addCrossProfileIntentFilter(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;Ljava/lang/String;III)V

    goto :goto_70

    .line 4748
    :cond_57
    iget-object v13, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v14

    iget-object v15, v4, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->filter:Lcom/android/server/pm/WatchedIntentFilter;

    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 4749
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v16

    iget v4, v4, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->flags:I

    move/from16 v17, p4

    move/from16 v18, p1

    move/from16 v19, v4

    .line 4748
    invoke-virtual/range {v13 .. v19}, Lcom/android/server/pm/PackageManagerService;->addCrossProfileIntentFilter(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;Ljava/lang/String;III)V

    :goto_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_73
    :goto_73
    return-void
.end method

.method public setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "setDefaultGuestRestrictions"

    .line 2186
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 2187
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 2188
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 2189
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2190
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1f

    .line 2191
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2192
    :try_start_17
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 2193
    monitor-exit p1

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1c

    throw p0

    :catchall_1f
    move-exception p0

    .line 2190
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public final setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;Lcom/android/server/pm/RestrictionsSet;Z)V
    .registers 8

    .line 2204
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2206
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 2207
    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    move-result p2

    .line 2208
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/UserManagerService;->getUpdatedTargetUserIdsFromLocalRestrictions(ILcom/android/server/pm/RestrictionsSet;)Ljava/util/List;

    move-result-object v1

    .line 2210
    invoke-virtual {p0, p1, p3, v1}, Lcom/android/server/pm/UserManagerService;->updateLocalRestrictionsForTargetUsersLR(ILcom/android/server/pm/RestrictionsSet;Ljava/util/List;)Z

    move-result p3

    if-eqz p4, :cond_16

    .line 2216
    iput p1, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    goto :goto_1e

    .line 2218
    :cond_16
    iget p4, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-ne p4, p1, :cond_1e

    const/16 p4, -0x2710

    .line 2223
    iput p4, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    .line 2226
    :cond_1e
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_8f

    .line 2235
    iget-object p4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter p4

    if-nez p2, :cond_26

    if-eqz p3, :cond_62

    .line 2237
    :cond_26
    :try_start_26
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3f

    .line 2238
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2239
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    goto :goto_62

    :cond_3f
    if-eqz p2, :cond_48

    .line 2242
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_48
    if-eqz p3, :cond_62

    .line 2245
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2246
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeAllTargetUsersLP(I)V

    goto :goto_4e

    .line 2251
    :cond_62
    :goto_62
    monitor-exit p4
    :try_end_63
    .catchall {:try_start_26 .. :try_end_63} :catchall_8c

    .line 2253
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter p1

    if-eqz p2, :cond_6e

    .line 2255
    :try_start_68
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V

    goto :goto_88

    :catchall_6c
    move-exception p0

    goto :goto_8a

    :cond_6e
    if-eqz p3, :cond_88

    .line 2257
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_74
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_88

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 2258
    invoke-virtual {p0, p3}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    goto :goto_74

    .line 2261
    :cond_88
    :goto_88
    monitor-exit p1

    return-void

    :goto_8a
    monitor-exit p1
    :try_end_8b
    .catchall {:try_start_68 .. :try_end_8b} :catchall_6c

    throw p0

    :catchall_8c
    move-exception p0

    .line 2251
    :try_start_8d
    monitor-exit p4
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw p0

    :catchall_8f
    move-exception p0

    .line 2226
    :try_start_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw p0
.end method

.method public final setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    .registers 10

    .line 1397
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1398
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1399
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v1, :cond_82

    .line 1401
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_82

    .line 1404
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v3

    if-ne v3, p2, :cond_31

    const-string p0, "UserManagerService"

    .line 1405
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Quiet mode is already "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    monitor-exit v0

    return-void

    .line 1408
    :cond_31
    iget v3, v1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit16 v3, v3, 0x80

    iput v3, v1, Landroid/content/pm/UserInfo;->flags:I

    .line 1409
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    .line 1410
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_9e

    .line 1411
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1412
    :try_start_41
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1413
    monitor-exit v4
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_7f

    const/4 v0, 0x0

    if-eqz p2, :cond_5e

    .line 1416
    :try_start_48
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p3

    const/4 v3, 0x1

    invoke-interface {p3, p1, v3, v0}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    .line 1417
    const-class p3, Landroid/app/ActivityManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManagerInternal;

    .line 1418
    invoke-virtual {p3, p1}, Landroid/app/ActivityManagerInternal;->killForegroundAppsForUser(I)V

    goto :goto_6c

    :catch_5c
    move-exception p1

    goto :goto_70

    :cond_5e
    if-eqz p3, :cond_65

    .line 1421
    new-instance v0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;

    invoke-direct {v0, p0, p3}, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/content/IntentSender;)V

    .line 1423
    :cond_65
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p3

    invoke-interface {p3, p1, v0}, Landroid/app/IActivityManager;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    .line 1426
    :goto_6c
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pm/UserManagerService;->logQuietModeEnabled(IZLjava/lang/String;)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_6f} :catch_5c

    goto :goto_73

    .line 1429
    :goto_70
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1431
    :goto_73
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/pm/UserManagerService;->broadcastProfileAvailabilityChanges(Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V

    return-void

    :catchall_7f
    move-exception p0

    .line 1413
    :try_start_80
    monitor-exit v4
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw p0

    .line 1402
    :cond_82
    :try_start_82
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "User "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a profile"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_9e
    move-exception p0

    .line 1410
    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_82 .. :try_end_a0} :catchall_9e

    throw p0
.end method

.method public final setSdpPolicy(I)Z
    .registers 2

    const-string p0, "UserManagerService"

    const-string/jumbo p1, "setSdpPolicy - SDP is not supported on the device"

    .line 7874
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    .registers 7

    const-string/jumbo v0, "set user seed account data"

    .line 6335
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 6336
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/UserManagerService;->setSeedAccountDataNoChecks(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V

    return-void
.end method

.method public final setSeedAccountDataNoChecks(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    .registers 9

    .line 6341
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6343
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_38

    .line 6344
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    if-nez v2, :cond_25

    const-string p0, "UserManagerService"

    .line 6346
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No such user for settings seed data u="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6347
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_35

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_38

    return-void

    .line 6349
    :cond_25
    :try_start_25
    iput-object p2, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 6350
    iput-object p3, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    .line 6351
    iput-object p4, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    .line 6352
    iput-boolean p5, v2, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    .line 6353
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_35

    if-eqz p5, :cond_33

    .line 6355
    :try_start_30
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 6357
    :cond_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_38

    return-void

    :catchall_35
    move-exception p0

    .line 6353
    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    throw p0

    :catchall_38
    move-exception p0

    .line 6357
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public setUserAccount(ILjava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "set user account"

    .line 981
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 983
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 984
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_46

    .line 985
    :try_start_c
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v2, :cond_2f

    const-string p0, "UserManagerService"

    .line 987
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User not found for setting user account: u"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_43

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_46

    return-void

    .line 990
    :cond_2f
    :try_start_2f
    iget-object p1, v2, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 991
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    .line 992
    iput-object p2, v2, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    goto :goto_3b

    :cond_3a
    const/4 v2, 0x0

    .line 995
    :goto_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_43

    if-eqz v2, :cond_41

    .line 998
    :try_start_3e
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1000
    :cond_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_46

    return-void

    :catchall_43
    move-exception p0

    .line 995
    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    :try_start_45
    throw p0

    :catchall_46
    move-exception p0

    .line 1000
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public setUserAdmin(I)V
    .registers 4

    const-string/jumbo v0, "set user admin"

    .line 1529
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 1531
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1533
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_30

    .line 1534
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1535
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_2d

    if-eqz p1, :cond_2b

    .line 1536
    :try_start_13
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_2b

    .line 1541
    :cond_1a
    iget v1, p1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v1, v1, 0x2

    iput v1, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 1542
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1543
    monitor-exit v0

    return-void

    .line 1538
    :cond_2b
    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_30

    return-void

    :catchall_2d
    move-exception p0

    .line 1535
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw p0

    :catchall_30
    move-exception p0

    .line 1543
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_30

    throw p0
.end method

.method public setUserEnabled(I)V
    .registers 4

    const-string v0, "enable user"

    .line 1514
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1515
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1517
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_2c

    .line 1518
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1519
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_29

    if-eqz p1, :cond_27

    .line 1520
    :try_start_12
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_27

    .line 1521
    iget v1, p1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v1, v1, 0x40

    iput v1, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 1522
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1524
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    return-void

    :catchall_29
    move-exception p0

    .line 1519
    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw p0

    :catchall_2c
    move-exception p0

    .line 1524
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .registers 5

    :try_start_0
    const-string/jumbo v0, "update users"

    .line 2082
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    const-string/jumbo v0, "no_set_user_icon"

    const-string v1, "Cannot set user icon"

    .line 2083
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pm/UserManagerService;->enforceUserRestriction(Ljava/lang/String;ILjava/lang/String;)V

    .line 2085
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->setUserIcon(ILandroid/graphics/Bitmap;)V
    :try_end_13
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 2087
    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public setUserName(ILjava/lang/String;)V
    .registers 7

    const-string/jumbo v0, "rename users"

    .line 2044
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 2049
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2050
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 2051
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_16

    goto :goto_40

    :cond_16
    if-eqz p2, :cond_2b

    .line 2055
    iget-object v2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 2057
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v3, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 2059
    iput-object p2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 2060
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    const/4 p2, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p2, 0x0

    .line 2063
    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_59

    if-eqz p2, :cond_3f

    .line 2065
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2072
    :try_start_33
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3a

    .line 2074
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3f

    :catchall_3a
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2075
    throw p0

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    :goto_40
    :try_start_40
    const-string p0, "UserManagerService"

    .line 2052
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUserName: unknown user #"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    monitor-exit v0

    return-void

    :catchall_59
    move-exception p0

    .line 2063
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_40 .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public setUserRestriction(Ljava/lang/String;ZI)V
    .registers 12

    const-string/jumbo v0, "setUserRestriction"

    .line 2494
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 2495
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 2498
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2501
    :try_start_10
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 2502
    invoke-virtual {v1, p3}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    .line 2501
    invoke-static {v1}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 2503
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2505
    invoke-virtual {p0, v1, p3}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    .line 2506
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_3d

    if-nez p3, :cond_3c

    const/4 v0, 0x1

    const/16 v1, 0xa

    .line 2508
    invoke-static {v0, v1}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v7

    .line 2509
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2510
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;ZIILjava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3c
    return-void

    :catchall_3d
    move-exception p0

    .line 2506
    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public final shouldBlockRemovalAttemptForMaintenanceModeUser(Lcom/android/server/pm/UserManagerService$UserData;)Z
    .registers 3

    if-eqz p1, :cond_2d

    .line 5566
    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    if-eqz p0, :cond_2d

    .line 5567
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isMaintenanceMode()Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 5568
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot remove user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": unauthorized"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method public final showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;)V
    .registers 7

    .line 1481
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    .line 1486
    invoke-virtual {v0, v1, v1, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_13

    return-void

    .line 1490
    :cond_13
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.INTENT"

    if-eqz p2, :cond_21

    .line 1493
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_21
    const-string p2, "android.intent.extra.USER_ID"

    .line 1495
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1496
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 1497
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1498
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    const/high16 v3, 0x54000000

    invoke-static {p1, p2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 1507
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x10800000

    .line 1508
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1509
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public someUserHasAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "check seed account information"

    .line 6428
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 6429
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->someUserHasAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final someUserHasAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 6434
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_22

    .line 6438
    :cond_d
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, p1, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6440
    new-instance v1, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_22
    :goto_22
    const/4 p0, 0x0

    return p0
.end method

.method public someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "check seed account information"

    .line 6403
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 6404
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->someUserHasSeedAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final someUserHasSeedAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .line 6408
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6409
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_47

    .line 6411
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    .line 6412
    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_44

    .line 6413
    :cond_1e
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget-object v6, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_2b

    goto :goto_44

    .line 6414
    :cond_2b
    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v5, :cond_44

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    goto :goto_44

    .line 6417
    :cond_36
    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v4, :cond_44

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    goto :goto_44

    .line 6420
    :cond_41
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_44
    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 6422
    :cond_47
    monitor-exit v0

    return v2

    :catchall_49
    move-exception p0

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public systemReady()V
    .registers 6

    const-string v0, "appops"

    .line 856
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 855
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 858
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 859
    :try_start_10
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 860
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_49

    .line 862
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 866
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mConfigurationChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 871
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mATCommandReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.BCS_REQUEST"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 876
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->markEphemeralUsersForRemoval()V

    return-void

    :catchall_49
    move-exception p0

    .line 860
    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public final throwCheckedUserOperationException(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$CheckedUserOperationException;
        }
    .end annotation

    const-string p0, "UserManagerService"

    .line 7497
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7498
    new-instance p0, Landroid/os/UserManager$CheckedUserOperationException;

    invoke-direct {p0, p1, p2}, Landroid/os/UserManager$CheckedUserOperationException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public final updateLocalRestrictionsForTargetUsersLR(ILcom/android/server/pm/RestrictionsSet;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/pm/RestrictionsSet;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 2296
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    :cond_5
    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2297
    invoke-virtual {p2, v1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_20

    .line 2299
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2301
    :cond_20
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyLocalRestrictionsForTargetUserLR(I)Lcom/android/server/pm/RestrictionsSet;

    move-result-object v1

    .line 2302
    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_2c
    return v0
.end method

.method public final updateUserIds()V
    .registers 11

    .line 6116
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6117
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_d
    if-ge v3, v1, :cond_28

    .line 6119
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v6, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 6120
    iget-boolean v7, v6, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v7, :cond_25

    add-int/lit8 v5, v5, 0x1

    .line 6122
    iget-boolean v6, v6, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v6, :cond_25

    add-int/lit8 v4, v4, 0x1

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 6131
    :cond_28
    new-array v3, v4, [I

    .line 6132
    new-array v4, v5, [I

    move v5, v2

    move v6, v5

    :goto_2e
    if-ge v2, v1, :cond_55

    .line 6137
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v7, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 6138
    iget-boolean v8, v7, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v8, :cond_52

    .line 6139
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    add-int/lit8 v9, v5, 0x1

    .line 6140
    aput v8, v4, v5

    .line 6141
    iget-boolean v5, v7, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v5, :cond_51

    add-int/lit8 v5, v6, 0x1

    .line 6142
    aput v8, v3, v6

    move v6, v5

    :cond_51
    move v5, v9

    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 6146
    :cond_55
    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    .line 6147
    iput-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserIdsIncludingPreCreated:[I

    .line 6152
    monitor-exit v0

    return-void

    :catchall_5b
    move-exception p0

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw p0
.end method

.method public updateUserInfo(ILandroid/os/Bundle;)Z
    .registers 10

    const-string v0, "UserManagerService"

    .line 7647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUserInfo is called for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "updateUserInfo"

    .line 7648
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 7651
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_101

    if-eqz p2, :cond_f8

    .line 7656
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7657
    :try_start_29
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerService$UserData;

    const/4 v2, 0x1

    if-eqz p1, :cond_d2

    .line 7659
    iget-object v3, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    if-eqz v3, :cond_c9

    const-string v4, "flags"

    .line 7662
    invoke-virtual {p2, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "fotaUpgradeVersion"

    const/16 v6, 0x8

    .line 7663
    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    const-string/jumbo v5, "update-flags"

    .line 7664
    invoke-virtual {p2, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-lez v4, :cond_5d

    .line 7667
    iget v6, v3, Landroid/content/pm/UserInfo;->flags:I

    or-int/2addr v4, v6

    iput v4, v3, Landroid/content/pm/UserInfo;->flags:I

    const-string v4, "UserManagerService"

    const-string/jumbo v6, "updateUserInfo flags is updated"

    .line 7669
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    goto :goto_5e

    :cond_5d
    move v4, v1

    :goto_5e
    if-lez v5, :cond_6b

    .line 7673
    iput v5, v3, Landroid/content/pm/UserInfo;->flags:I

    const-string v4, "UserManagerService"

    const-string/jumbo v5, "updateUserInfo flags is updated"

    .line 7675
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    :cond_6b
    const-string v5, "attributes"

    .line 7678
    invoke-virtual {p2, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_84

    .line 7680
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result v4

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/content/pm/UserInfo;->setAttributes(I)V

    const-string v4, "UserManagerService"

    const-string/jumbo v5, "updateUserInfo attributes is updated"

    .line 7682
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    :cond_84
    const-string/jumbo v5, "name"

    .line 7685
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9e

    .line 7686
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9e

    .line 7687
    iput-object p2, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const-string p2, "UserManagerService"

    const-string/jumbo v3, "updateUserInfo attributes is updated"

    .line 7689
    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    :cond_9e
    const-string p2, "UserManagerService"

    .line 7692
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateUserInfoFlags needUpdate - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_db

    .line 7695
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string p2, "UserManagerService"

    const-string/jumbo v3, "updateUserInfoFlags updated user cache"

    .line 7696
    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_db

    :cond_c9
    const-string p2, "UserManagerService"

    const-string/jumbo v3, "updateUserInfoFlags user info is null"

    .line 7700
    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_da

    :cond_d2
    const-string p2, "UserManagerService"

    const-string/jumbo v3, "updateUserInfoFlags user data is null"

    .line 7703
    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_da
    move v4, v1

    .line 7705
    :cond_db
    :goto_db
    monitor-exit v0
    :try_end_dc
    .catchall {:try_start_29 .. :try_end_dc} :catchall_f5

    if-eqz v4, :cond_109

    .line 7707
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter p2

    .line 7708
    :try_start_e1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 7709
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    const-string p0, "UserManagerService"

    const-string/jumbo p1, "updateUserInfoFlags updated user xml"

    .line 7711
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7712
    monitor-exit p2

    move v1, v2

    goto :goto_109

    :catchall_f2
    move-exception p0

    monitor-exit p2
    :try_end_f4
    .catchall {:try_start_e1 .. :try_end_f4} :catchall_f2

    throw p0

    :catchall_f5
    move-exception p0

    .line 7705
    :try_start_f6
    monitor-exit v0
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f5

    throw p0

    :cond_f8
    const-string p0, "UserManagerService"

    const-string/jumbo p1, "updateUserInfoFlags bundle data is null"

    .line 7715
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_109

    :cond_101
    const-string p0, "UserManagerService"

    const-string/jumbo p1, "updateUserInfoFlags userid is not knox workspace.."

    .line 7718
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_109
    :goto_109
    const-string p0, "UserManagerService"

    .line 7720
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateUserInfoFlags status - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .line 2530
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 2531
    invoke-virtual {v0, p2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 2530
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz p1, :cond_38

    .line 2536
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, p1, :cond_18

    move v1, v2

    goto :goto_19

    :cond_18
    move v1, v3

    .line 2538
    :goto_19
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2539
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    if-eq v1, p1, :cond_25

    goto :goto_26

    :cond_25
    move v2, v3

    :goto_26
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2542
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 2543
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2547
    :cond_38
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object p1

    .line 2549
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 2557
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz v1, :cond_4f

    .line 2558
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/UserManagerService$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/pm/UserManagerService$3;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Bundle;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2570
    :cond_4f
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/pm/UserManagerService;->propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 2572
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    return-void
.end method

.method public final upgradeIfNecessaryLP(Landroid/os/Bundle;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock",
            "mPackagesLock"
        }
    .end annotation

    .line 3257
    iget v0, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessaryLP(Landroid/os/Bundle;II)V

    return-void
.end method

.method public upgradeIfNecessaryLP(Landroid/os/Bundle;II)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock",
            "mPackagesLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3268
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 3269
    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 3270
    iget v2, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge p2, v4, :cond_3a

    .line 3273
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p2

    const-string v5, "Primary"

    .line 3274
    iget-object v6, p2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v6, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 3275
    iget-object v5, p2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 3276
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408a0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 3277
    iget-object p2, p2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_39
    move p2, v4

    :cond_3a
    const/4 v5, 0x2

    if-ge p2, v5, :cond_57

    .line 3284
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p2

    .line 3285
    iget-object p2, p2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, p2, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v7, v6, 0x10

    if-nez v7, :cond_56

    or-int/lit8 v6, v6, 0x10

    .line 3286
    iput v6, p2, Landroid/content/pm/UserInfo;->flags:I

    .line 3287
    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_56
    move p2, v5

    :cond_57
    const/4 v5, 0x4

    if-ge p2, v5, :cond_5b

    move p2, v5

    :cond_5b
    const/4 v5, 0x5

    if-ge p2, v5, :cond_62

    .line 3298
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    move p2, v5

    :cond_62
    const/16 v5, -0x2710

    const/4 v6, 0x6

    if-ge p2, v6, :cond_a3

    .line 3303
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result p2

    .line 3304
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v7

    move v8, v3

    .line 3305
    :goto_6f
    :try_start_6f
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_9d

    .line 3306
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez p2, :cond_9a

    .line 3308
    iget-object v10, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v10

    if-eqz v10, :cond_9a

    iget-object v9, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v9, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v10, v5, :cond_9a

    .line 3311
    iput v3, v9, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 3312
    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9a
    add-int/lit8 v8, v8, 0x1

    goto :goto_6f

    .line 3315
    :cond_9d
    monitor-exit v7

    move p2, v6

    goto :goto_a3

    :catchall_a0
    move-exception p0

    monitor-exit v7
    :try_end_a2
    .catchall {:try_start_6f .. :try_end_a2} :catchall_a0

    throw p0

    :cond_a3
    :goto_a3
    const/4 v6, 0x7

    if-ge p2, v6, :cond_e0

    .line 3321
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3322
    :try_start_a9
    invoke-static {p1}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result p2

    if-nez p2, :cond_b8

    iget p2, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-eq p2, v5, :cond_b8

    .line 3324
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v5, p2, p1}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    :cond_b8
    const-string p1, "ensure_verify_apps"

    .line 3329
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-static {p1, p2, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->moveRestriction(Ljava/lang/String;Landroid/util/SparseArray;Lcom/android/server/pm/RestrictionsSet;)V

    .line 3332
    monitor-exit v7
    :try_end_c2
    .catchall {:try_start_a9 .. :try_end_c2} :catchall_dd

    .line 3334
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUser()Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_db

    const-string/jumbo p2, "no_config_wifi"

    .line 3335
    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p2, v5}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_db

    const-string/jumbo p2, "no_config_wifi"

    .line 3337
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p2, v4, p1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    :cond_db
    move p2, v6

    goto :goto_e0

    :catchall_dd
    move-exception p0

    .line 3332
    :try_start_de
    monitor-exit v7
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_dd

    throw p0

    :cond_e0
    :goto_e0
    const/16 p1, 0x8

    if-ge p2, p1, :cond_13e

    .line 3344
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3345
    :try_start_e7
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3346
    iget-object v6, p2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v7, v6, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v7, v7, 0x800

    iput v7, v6, Landroid/content/pm/UserInfo;->flags:I

    .line 3347
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v6

    if-nez v6, :cond_105

    .line 3348
    iget-object v6, p2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v7, v6, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v7, v7, 0x400

    iput v7, v6, Landroid/content/pm/UserInfo;->flags:I

    .line 3350
    :cond_105
    iget-object p2, p2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3354
    :goto_110
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v4, p2, :cond_138

    .line 3355
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3356
    iget-object p2, p2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, p2, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v7, v6, 0x20

    if-nez v7, :cond_135

    or-int/lit16 v6, v6, 0x400

    .line 3357
    iput v6, p2, Landroid/content/pm/UserInfo;->flags:I

    .line 3358
    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_135
    add-int/lit8 v4, v4, 0x1

    goto :goto_110

    .line 3361
    :cond_138
    monitor-exit v5

    move p2, p1

    goto :goto_13e

    :catchall_13b
    move-exception p0

    monitor-exit v5
    :try_end_13d
    .catchall {:try_start_e7 .. :try_end_13d} :catchall_13b

    throw p0

    :cond_13e
    :goto_13e
    const/16 p1, 0x9

    if-ge p2, p1, :cond_1eb

    .line 3367
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3368
    :goto_145
    :try_start_145
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v3, p2, :cond_1e5

    .line 3369
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3370
    iget-object v5, p2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v5, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v7, v6, 0x800

    if-eqz v7, :cond_16b

    and-int/lit16 v7, v6, 0x400

    if-eqz v7, :cond_166

    const-string v7, "android.os.usertype.full.SYSTEM"

    .line 3373
    iput-object v7, v5, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_171

    :cond_166
    const-string v7, "android.os.usertype.system.HEADLESS"

    .line 3375
    iput-object v7, v5, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;
    :try_end_16a
    .catchall {:try_start_145 .. :try_end_16a} :catchall_1e8

    goto :goto_171

    .line 3379
    :cond_16b
    :try_start_16b
    invoke-static {v6}, Landroid/content/pm/UserInfo;->getDefaultUserType(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;
    :try_end_171
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16b .. :try_end_171} :catch_1c4
    .catchall {:try_start_16b .. :try_end_171} :catchall_1e8

    .line 3389
    :goto_171
    :try_start_171
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    iget-object v7, p2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v7, v7, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserTypeDetails;

    if-eqz v5, :cond_198

    .line 3396
    iget-object v6, p2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v7, v6, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {v5}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v5

    or-int/2addr v5, v7

    iput v5, v6, Landroid/content/pm/UserInfo;->flags:I

    .line 3397
    iget-object p2, p2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_145

    .line 3391
    :cond_198
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot upgrade user with flags "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3392
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " because "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object p2, p2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " isn\'t defined on this device!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1c4
    move-exception p0

    .line 3382
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot upgrade user with flags "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3383
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " because it doesn\'t correspond to a valid user type."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 3399
    :cond_1e5
    monitor-exit v4

    move p2, p1

    goto :goto_1eb

    :catchall_1e8
    move-exception p0

    monitor-exit v4
    :try_end_1ea
    .catchall {:try_start_171 .. :try_end_1ea} :catchall_1e8

    throw p0

    .line 3405
    :cond_1eb
    :goto_1eb
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getUserTypeVersion()I

    move-result v3

    if-le v3, p3, :cond_202

    .line 3407
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3408
    :try_start_1f4
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getUserTypeUpgrades()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, v5, v6, p3, v0}, Lcom/android/server/pm/UserManagerService;->upgradeUserTypesLU(Ljava/util/List;Landroid/util/ArrayMap;ILjava/util/Set;)V

    .line 3410
    monitor-exit v4

    goto :goto_202

    :catchall_1ff
    move-exception p0

    monitor-exit v4
    :try_end_201
    .catchall {:try_start_1f4 .. :try_end_201} :catchall_1ff

    throw p0

    :cond_202
    :goto_202
    if-ge p2, p1, :cond_225

    const-string p2, "UserManagerService"

    .line 3414
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User version "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " didn\'t upgrade as expected to "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24e

    .line 3417
    :cond_225
    iput p2, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 3418
    iput v3, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    if-lt v1, p2, :cond_22d

    if-ge v2, v3, :cond_24e

    .line 3421
    :cond_22d
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_231
    :goto_231
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_24b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 3422
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p2

    if-eqz p2, :cond_231

    .line 3424
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    goto :goto_231

    .line 3427
    :cond_24b
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    :cond_24e
    :goto_24e
    return-void
.end method

.method public upgradeProfileToTypeLU(Landroid/content/pm/UserInfo;Lcom/android/server/pm/UserTypeDetails;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "UserManagerService"

    .line 3474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3476
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3474
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 3485
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_71

    const-string v0, "UserManagerService"

    .line 3486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exceeded maximum profiles of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3487
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Maximum allowed= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3489
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getMaxAllowedPerParent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3486
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    :cond_71
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    if-eqz v0, :cond_82

    .line 3495
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v0

    goto :goto_84

    :cond_82
    const/16 v0, 0x1000

    .line 3502
    :goto_84
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 3504
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v1

    iget v2, p1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 3507
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3508
    :try_start_97
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultRestrictions()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_b9

    .line 3509
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    .line 3510
    invoke-virtual {v1, v2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    .line 3509
    invoke-static {v1}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 3512
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultRestrictions()Landroid/os/Bundle;

    move-result-object p2

    .line 3511
    invoke-static {v1, p2}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 3513
    iget p2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    .line 3519
    :cond_b9
    monitor-exit v0
    :try_end_ba
    .catchall {:try_start_97 .. :try_end_ba} :catchall_c5

    .line 3522
    iget p2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget-object v0, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/pm/UserManagerService;->getFreeProfileBadgeLU(ILjava/lang/String;)I

    move-result p0

    iput p0, p1, Landroid/content/pm/UserInfo;->profileBadge:I

    return-void

    :catchall_c5
    move-exception p0

    .line 3519
    :try_start_c6
    monitor-exit v0
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c5

    throw p0

    .line 3479
    :cond_c8
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can only upgrade profile types. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a profile type."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final upgradeUserTypesLU(Ljava/util/List;Landroid/util/ArrayMap;ILjava/util/Set;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/UserTypeDetails;",
            ">;I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3437
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;

    .line 3445
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->getUpToVersion()I

    move-result v1

    if-gt p3, v1, :cond_4

    const/4 v1, 0x0

    .line 3446
    :goto_17
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 3447
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3448
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->getFromType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v4, v4, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 3450
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->getToType()Ljava/lang/String;

    move-result-object v3

    .line 3449
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserTypeDetails;

    if-eqz v3, :cond_52

    .line 3458
    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/pm/UserManagerService;->upgradeProfileToTypeLU(Landroid/content/pm/UserInfo;Lcom/android/server/pm/UserTypeDetails;)V

    .line 3459
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    .line 3453
    :cond_52
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Upgrade destination user type not defined: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3455
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->getToType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6d
    :goto_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_70
    return-void
.end method

.method public final userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;
    .registers 4

    if-eqz p1, :cond_24

    .line 1625
    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_24

    const/4 v0, 0x0

    .line 1627
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_10

    .line 1632
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getOwnerName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 1633
    :cond_10
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1634
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getGuestName()Ljava/lang/String;

    move-result-object v0

    :cond_1a
    :goto_1a
    if-eqz v0, :cond_24

    .line 1637
    new-instance p0, Landroid/content/pm/UserInfo;

    invoke-direct {p0, p1}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    .line 1638
    iput-object v0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object p0

    :cond_24
    return-object p1
.end method

.method public final verifyCallingPackage(Ljava/lang/String;I)V
    .registers 6

    .line 7603
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 7604
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-wide/16 v1, 0x0

    invoke-interface {p0, p1, v1, v2, v0}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    if-ne p0, p2, :cond_13

    return-void

    .line 7606
    :cond_13
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Specified package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match the calling uid "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final verifyDeviceIntegrity()Z
    .registers 2

    const-string p0, "UserManagerService"

    const-string v0, "check Device Integrity - KPE is not supported on the device"

    .line 7833
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final writeAllTargetUsersLP(I)V
    .registers 5

    const/4 v0, 0x0

    .line 3611
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 3612
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 3613
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/RestrictionsSet;

    .line 3614
    invoke-virtual {v2, p1}, Lcom/android/server/pm/RestrictionsSet;->containsKey(I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 3615
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_27
    return-void
.end method

.method public final writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .registers 7

    .line 3065
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3066
    new-instance p0, Ljava/io/File;

    const-string/jumbo v1, "photo.png"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3067
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "photo.png.tmp"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3068
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_30

    .line 3069
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 3071
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f9

    const/4 v3, -0x1

    .line 3070
    invoke-static {v0, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 3076
    :cond_30
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2, v0, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p2

    if-eqz p2, :cond_51

    .line 3077
    invoke-virtual {v1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_51

    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_51

    .line 3078
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_51} :catch_58

    .line 3081
    :cond_51
    :try_start_51
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_54

    .line 3085
    :catch_54
    :try_start_54
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_60

    :catch_58
    move-exception p0

    const-string p1, "UserManagerService"

    const-string p2, "Error setting photo for user "

    .line 3087
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_60
    return-void
.end method

.method public final writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 7

    .line 3625
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3627
    :try_start_21
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_2e

    .line 3628
    :try_start_25
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V

    .line 3629
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2b} :catch_2c

    goto :goto_4d

    :catch_2c
    move-exception v2

    goto :goto_30

    :catch_2e
    move-exception v2

    const/4 v1, 0x0

    .line 3631
    :goto_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing user info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UserManagerService"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3632
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 3635
    :goto_4d
    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->copyUserFallbackLP(I)V

    return-void
.end method

.method public writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3724
    invoke-static {p2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object p2

    .line 3725
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v2, 0x1

    .line 3726
    invoke-interface {p2, v0, v2}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 3728
    iget-object v0, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const-string/jumbo v3, "user"

    .line 3729
    invoke-interface {p2, v1, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "id"

    .line 3730
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {p2, v1, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "serialNumber"

    .line 3731
    iget v4, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {p2, v1, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "flags"

    .line 3732
    iget v4, v0, Landroid/content/pm/UserInfo;->flags:I

    invoke-interface {p2, v1, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "attributes"

    .line 3734
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v3, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "type"

    .line 3736
    iget-object v4, v0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-interface {p2, v1, v3, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "created"

    .line 3737
    iget-wide v4, v0, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-interface {p2, v1, v3, v4, v5}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "lastLoggedIn"

    .line 3738
    iget-wide v4, v0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    invoke-interface {p2, v1, v3, v4, v5}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3739
    iget-object v3, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    if-eqz v3, :cond_5e

    const-string/jumbo v4, "lastLoggedInFingerprint"

    .line 3740
    invoke-interface {p2, v1, v4, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3743
    :cond_5e
    iget-object v3, v0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v3, :cond_68

    const-string/jumbo v4, "icon"

    .line 3744
    invoke-interface {p2, v1, v4, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3746
    :cond_68
    iget-boolean v3, v0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_72

    const-string/jumbo v3, "partial"

    .line 3747
    invoke-interface {p2, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3749
    :cond_72
    iget-boolean v3, v0, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v3, :cond_7c

    const-string/jumbo v3, "preCreated"

    .line 3750
    invoke-interface {p2, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3752
    :cond_7c
    iget-boolean v3, v0, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    if-eqz v3, :cond_85

    const-string v3, "convertedFromPreCreated"

    .line 3753
    invoke-interface {p2, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3755
    :cond_85
    iget-boolean v3, v0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v3, :cond_8f

    const-string/jumbo v3, "guestToRemove"

    .line 3756
    invoke-interface {p2, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3758
    :cond_8f
    iget v2, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_9b

    const-string/jumbo v4, "profileGroupId"

    .line 3759
    invoke-interface {p2, v1, v4, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9b
    const-string/jumbo v2, "profileBadge"

    .line 3761
    iget v4, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-interface {p2, v1, v2, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3762
    iget v2, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-eq v2, v3, :cond_ad

    const-string/jumbo v3, "restrictedProfileParentId"

    .line 3763
    invoke-interface {p2, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3767
    :cond_ad
    iget-boolean v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz v2, :cond_c5

    .line 3768
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v2, :cond_bb

    const-string/jumbo v3, "seedAccountName"

    .line 3769
    invoke-interface {p2, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3771
    :cond_bb
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v2, :cond_c5

    const-string/jumbo v3, "seedAccountType"

    .line 3772
    invoke-interface {p2, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3775
    :cond_c5
    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_da

    const-string/jumbo v2, "name"

    .line 3776
    invoke-interface {p2, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3777
    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-interface {p2, v2}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "name"

    .line 3778
    invoke-interface {p2, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3780
    :cond_da
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3781
    :try_start_dd
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    .line 3782
    invoke-virtual {v3, v4}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "restrictions"

    .line 3781
    invoke-static {p2, v3, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Landroid/util/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 3783
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyLocalRestrictionsForTargetUserLR(I)Lcom/android/server/pm/RestrictionsSet;

    move-result-object v3

    const-string v4, "device_policy_local_restrictions"

    invoke-virtual {v3, p2, v4}, Lcom/android/server/pm/RestrictionsSet;->writeRestrictions(Landroid/util/TypedXmlSerializer;Ljava/lang/String;)V

    .line 3785
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 3786
    invoke-virtual {p0, v0}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "device_policy_global_restrictions"

    .line 3785
    invoke-static {p2, p0, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Landroid/util/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 3788
    monitor-exit v2
    :try_end_104
    .catchall {:try_start_dd .. :try_end_104} :catchall_172

    .line 3790
    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz p0, :cond_117

    const-string p0, "account"

    .line 3791
    invoke-interface {p2, v1, p0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3792
    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-interface {p2, p0}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p0, "account"

    .line 3793
    invoke-interface {p2, v1, p0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3796
    :cond_117
    iget-boolean p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz p0, :cond_130

    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz p0, :cond_130

    const-string/jumbo p0, "seedAccountOptions"

    .line 3797
    invoke-interface {p2, v1, p0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3798
    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    invoke-virtual {p0, p2}, Landroid/os/PersistableBundle;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    const-string/jumbo p0, "seedAccountOptions"

    .line 3799
    invoke-interface {p2, v1, p0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3802
    :cond_130
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_151

    const-string/jumbo p0, "lastRequestQuietModeEnabledCall"

    .line 3803
    invoke-interface {p2, v1, p0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3804
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p0, "lastRequestQuietModeEnabledCall"

    .line 3805
    invoke-interface {p2, v1, p0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_151
    const-string/jumbo p0, "ignorePrepareStorageErrors"

    .line 3808
    invoke-interface {p2, v1, p0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3809
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$UserData;->getIgnorePrepareStorageErrors()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p0, "ignorePrepareStorageErrors"

    .line 3810
    invoke-interface {p2, v1, p0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p0, "user"

    .line 3812
    invoke-interface {p2, v1, p0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3814
    invoke-interface {p2}, Landroid/util/TypedXmlSerializer;->endDocument()V

    return-void

    :catchall_172
    move-exception p0

    .line 3788
    :try_start_173
    monitor-exit v2
    :try_end_174
    .catchall {:try_start_173 .. :try_end_174} :catchall_172

    throw p0
.end method

.method public final writeUserListLP()V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock",
            "mPackagesLock"
        }
    .end annotation

    .line 3831
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    .line 3834
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->setContainerInfo()V

    .line 3836
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_b5

    .line 3837
    :try_start_f
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v3

    .line 3838
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    .line 3839
    invoke-interface {v3, v4, v5}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v4, "users"

    .line 3841
    invoke-interface {v3, v1, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "nextSerialNumber"

    .line 3842
    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    invoke-interface {v3, v1, v4, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "version"

    .line 3843
    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-interface {v3, v1, v4, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "userTypeConfigVersion"

    .line 3844
    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    invoke-interface {v3, v1, v4, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "guestRestrictions"

    .line 3846
    invoke-interface {v3, v1, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3847
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v4
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_46} :catch_b4

    .line 3848
    :try_start_46
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v6, "restrictions"

    .line 3849
    invoke-static {v3, v5, v6}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Landroid/util/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 3850
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_b1

    :try_start_4f
    const-string/jumbo v4, "guestRestrictions"

    .line 3851
    invoke-interface {v3, v1, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "deviceOwnerUserId"

    .line 3852
    invoke-interface {v3, v1, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "id"

    .line 3853
    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-interface {v3, v1, v4, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "deviceOwnerUserId"

    .line 3854
    invoke-interface {v3, v1, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3856
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_6a} :catch_b4

    .line 3857
    :try_start_6a
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    new-array v6, v5, [I

    const/4 v7, 0x0

    move v8, v7

    :goto_74
    if-ge v8, v5, :cond_87

    .line 3859
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v9, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3860
    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    aput v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_74

    .line 3862
    :cond_87
    monitor-exit v4
    :try_end_88
    .catchall {:try_start_6a .. :try_end_88} :catchall_ae

    :goto_88
    if-ge v7, v5, :cond_a1

    .line 3863
    :try_start_8a
    aget v4, v6, v7

    const-string/jumbo v8, "user"

    .line 3864
    invoke-interface {v3, v1, v8}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "id"

    .line 3865
    invoke-interface {v3, v1, v8, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "user"

    .line 3866
    invoke-interface {v3, v1, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_88

    :cond_a1
    const-string/jumbo v4, "users"

    .line 3869
    invoke-interface {v3, v1, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3871
    invoke-interface {v3}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 3872
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_ad} :catch_b4

    goto :goto_bf

    :catchall_ae
    move-exception v1

    .line 3862
    :try_start_af
    monitor-exit v4
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    :try_start_b0
    throw v1
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b1} :catch_b4

    :catchall_b1
    move-exception v1

    .line 3850
    :try_start_b2
    monitor-exit v4
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    :try_start_b3
    throw v1
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b4} :catch_b4

    :catch_b4
    move-object v1, v2

    .line 3874
    :catch_b5
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string v0, "UserManagerService"

    const-string v1, "Error writing user list"

    .line 3875
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3878
    :goto_bf
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->copyUserlistFallbackLP()V

    return-void
.end method
