.class public Lcom/android/server/devicepolicy/DevicePolicyData;
.super Ljava/lang/Object;
.source "DevicePolicyData.java"


# static fields
.field public static final ATTR_ALIAS:Ljava/lang/String; = "alias"

.field public static final ATTR_DEVICE_PAIRED:Ljava/lang/String; = "device-paired"

.field public static final ATTR_DEVICE_PROVISIONING_CONFIG_APPLIED:Ljava/lang/String; = "device-provisioning-config-applied"

.field public static final ATTR_DISABLED:Ljava/lang/String; = "disabled"

.field public static final ATTR_FACTORY_RESET_FLAGS:Ljava/lang/String; = "factory-reset-flags"

.field public static final ATTR_FACTORY_RESET_REASON:Ljava/lang/String; = "factory-reset-reason"

.field public static final ATTR_ID:Ljava/lang/String; = "id"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final ATTR_NEW_USER_DISCLAIMER:Ljava/lang/String; = "new-user-disclaimer"

.field public static final ATTR_PERMISSION_POLICY:Ljava/lang/String; = "permission-policy"

.field public static final ATTR_PERMISSION_PROVIDER:Ljava/lang/String; = "permission-provider"

.field public static final ATTR_PROVISIONING_STATE:Ljava/lang/String; = "provisioning-state"

.field public static final ATTR_SETUP_COMPLETE:Ljava/lang/String; = "setup-complete"

.field public static final ATTR_VALUE:Ljava/lang/String; = "value"

.field public static final FACTORY_RESET_FLAG_ON_BOOT:I = 0x1

.field public static final FACTORY_RESET_FLAG_WIPE_EUICC:I = 0x4

.field public static final FACTORY_RESET_FLAG_WIPE_EXTERNAL_STORAGE:I = 0x2

.field public static final FACTORY_RESET_FLAG_WIPE_FACTORY_RESET_PROTECTION:I = 0x8

.field public static final NEW_USER_DISCLAIMER_ACKNOWLEDGED:Ljava/lang/String; = "acked"

.field public static final NEW_USER_DISCLAIMER_NEEDED:Ljava/lang/String; = "needed"

.field public static final NEW_USER_DISCLAIMER_NOT_NEEDED:Ljava/lang/String; = "not_needed"

.field public static final TAG:Ljava/lang/String; = "DevicePolicyManager"

.field public static final TAG_ACCEPTED_CA_CERTIFICATES:Ljava/lang/String; = "accepted-ca-certificate"

.field public static final TAG_ADMIN_BROADCAST_PENDING:Ljava/lang/String; = "admin-broadcast-pending"

.field public static final TAG_AFFILIATION_ID:Ljava/lang/String; = "affiliation-id"

.field public static final TAG_APPS_SUSPENDED:Ljava/lang/String; = "apps-suspended"

.field public static final TAG_BYPASS_ROLE_QUALIFICATIONS:Ljava/lang/String; = "bypass-role-qualifications"

.field public static final TAG_CURRENT_INPUT_METHOD_SET:Ljava/lang/String; = "current-ime-set"

.field public static final TAG_DO_NOT_ASK_CREDENTIALS_ON_BOOT:Ljava/lang/String; = "do-not-ask-credentials-on-boot"

.field public static final TAG_INITIALIZATION_BUNDLE:Ljava/lang/String; = "initialization-bundle"

.field public static final TAG_LAST_BUG_REPORT_REQUEST:Ljava/lang/String; = "last-bug-report-request"

.field public static final TAG_LAST_NETWORK_LOG_RETRIEVAL:Ljava/lang/String; = "last-network-log-retrieval"

.field public static final TAG_LAST_SECURITY_LOG_RETRIEVAL:Ljava/lang/String; = "last-security-log-retrieval"

.field public static final TAG_LOCK_TASK_COMPONENTS:Ljava/lang/String; = "lock-task-component"

.field public static final TAG_LOCK_TASK_FEATURES:Ljava/lang/String; = "lock-task-features"

.field public static final TAG_OWNER_INSTALLED_CA_CERT:Ljava/lang/String; = "owner-installed-ca-cert"

.field public static final TAG_PASSWORD_TOKEN_HANDLE:Ljava/lang/String; = "password-token"

.field public static final TAG_PASSWORD_VALIDITY:Ljava/lang/String; = "password-validity"

.field public static final TAG_PROTECTED_PACKAGES:Ljava/lang/String; = "protected-packages"

.field public static final TAG_SECONDARY_LOCK_SCREEN:Ljava/lang/String; = "secondary-lock-screen"

.field public static final TAG_STATUS_BAR:Ljava/lang/String; = "statusbar"

.field public static final VERBOSE_LOG:Z = false


# instance fields
.field public final mAcceptedCaCertificates:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAdminBroadcastPending:Z

.field public final mAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/devicepolicy/ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field public final mAdminMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/devicepolicy/ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field public mAffiliationIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAppsSuspended:Z

.field public mBypassDevicePolicyManagementRoleQualifications:Z

.field public mCurrentInputMethodSet:Z

.field public mCurrentRoleHolder:Ljava/lang/String;

.field public final mDelegationMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mDeviceProvisioningConfigApplied:Z

.field public mDoNotAskCredentialsOnBoot:Z

.field public mFactoryResetFlags:I

.field public mFactoryResetReason:Ljava/lang/String;

.field public mFailedBiometricAttempts:I

.field public mFailedPasswordAttempts:I

.field public mInitBundle:Landroid/os/PersistableBundle;

.field public mLastBugReportRequestTime:J

.field public mLastMaximumTimeToLock:J

.field public mLastNetworkLogsRetrievalTime:J

.field public mLastResetPassword:I

.field public mLastSecurityLogRetrievalTime:J

.field public mLockTaskFeatures:I

.field public mLockTaskPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mNewUserDisclaimer:Ljava/lang/String;

.field public mOwnerInstalledCaCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPaired:Z

.field public mPasswordOwner:I

.field public mPasswordTokenHandle:J

.field public mPasswordValidAtLastCheckpoint:Z

.field public mPermissionPolicy:I

.field public final mRemovingAdmins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public mRestrictionsProvider:Landroid/content/ComponentName;

.field public mSecondaryLockscreenEnabled:Z

.field public mStatusBarDisabled:Z

.field public mUserControlDisabledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final mUserId:I

.field public mUserProvisioningState:I

.field public mUserSetupComplete:Z


# direct methods
.method public constructor <init>(I)V
    .registers 6

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    .line 111
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedBiometricAttempts:I

    const/4 v1, 0x1

    .line 113
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordValidAtLastCheckpoint:Z

    const/4 v1, -0x1

    .line 116
    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    const-wide/16 v2, -0x1

    .line 117
    iput-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastMaximumTimeToLock:J

    .line 118
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    .line 119
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mBypassDevicePolicyManagementRoleQualifications:Z

    .line 121
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPaired:Z

    .line 125
    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastResetPassword:I

    .line 130
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDeviceProvisioningConfigApplied:Z

    .line 132
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    .line 137
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    const/16 v1, 0x10

    .line 149
    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    .line 151
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    .line 156
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    .line 158
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDoNotAskCredentialsOnBoot:Z

    .line 160
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    .line 162
    iput-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    .line 164
    iput-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    .line 166
    iput-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    .line 168
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    .line 170
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mSecondaryLockscreenEnabled:Z

    .line 173
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    .line 176
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    const/4 v1, 0x0

    .line 177
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    const-wide/16 v1, 0x0

    .line 179
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    .line 183
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    const-string/jumbo v0, "not_needed"

    .line 187
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    .line 190
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    return-void
.end method

.method public static factoryResetFlagsToString(I)Ljava/lang/String;
    .registers 4

    .line 749
    const-class v0, Lcom/android/server/devicepolicy/DevicePolicyData;

    int-to-long v1, p0

    const-string p0, "FACTORY_RESET_FLAG_"

    invoke-static {v0, p0, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static load(Lcom/android/server/devicepolicy/DevicePolicyData;ZLcom/android/internal/util/JournaledFile;Ljava/util/function/Function;Landroid/content/ComponentName;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/devicepolicy/DevicePolicyData;",
            "Z",
            "Lcom/android/internal/util/JournaledFile;",
            "Ljava/util/function/Function<",
            "Landroid/content/ComponentName;",
            "Landroid/app/admin/DeviceAdminInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    const-string v0, "DevicePolicyManager"

    .line 457
    invoke-virtual {p2}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 461
    :try_start_9
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_e} :catch_31c
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_e} :catch_312
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_e} :catch_312
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_e} :catch_312
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_312
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_e} :catch_312

    .line 462
    :try_start_e
    invoke-static {v4}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v5

    .line 465
    :goto_12
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6

    if-eq v6, v2, :cond_1c

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1c

    goto :goto_12

    .line 468
    :cond_1c
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "policies"

    .line 469
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f6

    const-string/jumbo v6, "permission-provider"

    .line 475
    invoke-interface {v5, v3, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_38

    .line 478
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    :cond_38
    const-string/jumbo v6, "setup-complete"

    .line 480
    invoke-interface {v5, v3, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 481
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 483
    iput-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    :cond_4b
    const-string v6, "device-paired"

    .line 485
    invoke-interface {v5, v3, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 486
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 487
    iput-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPaired:Z

    :cond_5d
    const-string v6, "device-provisioning-config-applied"

    .line 489
    invoke-interface {v5, v3, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 491
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 492
    iput-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDeviceProvisioningConfigApplied:Z

    :cond_6f
    const-string/jumbo v6, "provisioning-state"

    const/4 v7, -0x1

    .line 494
    invoke-interface {v5, v3, v6, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v7, :cond_7b

    .line 496
    iput v6, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserProvisioningState:I

    :cond_7b
    const-string/jumbo v6, "permission-policy"

    .line 498
    invoke-interface {v5, v3, v6, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v7, :cond_86

    .line 500
    iput v6, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionPolicy:I

    :cond_86
    const-string/jumbo v6, "new-user-disclaimer"

    .line 502
    invoke-interface {v5, v3, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    const-string v6, "factory-reset-flags"

    .line 504
    invoke-interface {v5, v3, v6, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    const-string v6, "factory-reset-reason"

    .line 509
    invoke-interface {v5, v3, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    .line 511
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v6

    .line 512
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 513
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 514
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 515
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 516
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 517
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 518
    :cond_be
    :goto_be
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v7

    if-eq v7, v2, :cond_31d

    const/4 v8, 0x3

    if-ne v7, v8, :cond_cd

    .line 519
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v6, :cond_31d

    :cond_cd
    if-eq v7, v8, :cond_be

    const/4 v8, 0x4

    if-ne v7, v8, :cond_d3

    goto :goto_be

    .line 523
    :cond_d3
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "admin"

    .line 524
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_dd
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_dd} :catch_310
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_dd} :catch_30d
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_dd} :catch_30d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_dd} :catch_30d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_dd} :catch_30d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_dd} :catch_30d

    const-string/jumbo v9, "name"

    if-eqz v8, :cond_11e

    .line 525
    :try_start_e2
    invoke-interface {v5, v3, v9}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_e6
    .catch Ljava/io/FileNotFoundException; {:try_start_e2 .. :try_end_e6} :catch_310
    .catch Ljava/lang/NullPointerException; {:try_start_e2 .. :try_end_e6} :catch_30d
    .catch Ljava/lang/NumberFormatException; {:try_start_e2 .. :try_end_e6} :catch_30d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e2 .. :try_end_e6} :catch_30d
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e6} :catch_30d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e2 .. :try_end_e6} :catch_30d

    .line 528
    :try_start_e6
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 527
    invoke-interface {p3, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DeviceAdminInfo;

    if-eqz v8, :cond_be

    .line 534
    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9, p4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_fe

    move v9, v2

    goto :goto_ff

    :cond_fe
    move v9, v1

    .line 535
    :goto_ff
    new-instance v10, Lcom/android/server/devicepolicy/ActiveAdmin;

    invoke-direct {v10, v8, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    .line 536
    invoke-virtual {v10, v5, v9}, Lcom/android/server/devicepolicy/ActiveAdmin;->readFromXml(Landroid/util/TypedXmlPullParser;Z)V

    .line 537
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    iget-object v9, v10, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v9}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_112
    .catch Ljava/lang/RuntimeException; {:try_start_e6 .. :try_end_112} :catch_113
    .catch Ljava/io/FileNotFoundException; {:try_start_e6 .. :try_end_112} :catch_310
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e6 .. :try_end_112} :catch_30d
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_112} :catch_30d

    goto :goto_be

    :catch_113
    move-exception v8

    :try_start_114
    const-string v9, "Failed loading admin %s"

    new-array v10, v2, [Ljava/lang/Object;

    aput-object v7, v10, v1

    .line 540
    invoke-static {v0, v8, v9, v10}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_be

    :cond_11e
    const-string v8, "delegation"

    .line 542
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_152

    const-string v7, "delegatePackage"

    .line 544
    invoke-interface {v5, v3, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "scope"

    .line 546
    invoke-interface {v5, v3, v8}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 549
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-nez v9, :cond_147

    .line 552
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 553
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v10, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    :cond_147
    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_be

    .line 557
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_be

    :cond_152
    const-string v8, "failed-password-attempts"

    .line 559
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_158
    .catch Ljava/io/FileNotFoundException; {:try_start_114 .. :try_end_158} :catch_310
    .catch Ljava/lang/NullPointerException; {:try_start_114 .. :try_end_158} :catch_30d
    .catch Ljava/lang/NumberFormatException; {:try_start_114 .. :try_end_158} :catch_30d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_114 .. :try_end_158} :catch_30d
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_158} :catch_30d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_114 .. :try_end_158} :catch_30d

    const-string/jumbo v10, "value"

    if-eqz v8, :cond_165

    .line 560
    :try_start_15d
    invoke-interface {v5, v3, v10}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    goto/16 :goto_be

    :cond_165
    const-string/jumbo v8, "last-resetpassword-admin"

    .line 564
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_176

    .line 565
    invoke-interface {v5, v3, v10}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastResetPassword:I

    goto/16 :goto_be

    :cond_176
    const-string/jumbo v8, "password-owner"

    .line 567
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_187

    .line 568
    invoke-interface {v5, v3, v10}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    goto/16 :goto_be

    :cond_187
    const-string v8, "accepted-ca-certificate"

    .line 569
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19a

    .line 570
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    invoke-interface {v5, v3, v9}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_be

    :cond_19a
    const-string/jumbo v8, "lock-task-component"

    .line 571
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1ae

    .line 572
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v5, v3, v9}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_be

    :cond_1ae
    const-string/jumbo v8, "lock-task-features"

    .line 573
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1bf

    .line 574
    invoke-interface {v5, v3, v10}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    goto/16 :goto_be

    :cond_1bf
    const-string/jumbo v8, "secondary-lock-screen"

    .line 575
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d0

    .line 577
    invoke-interface {v5, v3, v10, v1}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mSecondaryLockscreenEnabled:Z

    goto/16 :goto_be

    :cond_1d0
    const-string/jumbo v8, "statusbar"

    .line 578
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e3

    const-string v7, "disabled"

    .line 580
    invoke-interface {v5, v3, v7, v1}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    goto/16 :goto_be

    :cond_1e3
    const-string v8, "do-not-ask-credentials-on-boot"

    .line 581
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1ef

    .line 582
    iput-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDoNotAskCredentialsOnBoot:Z

    goto/16 :goto_be

    :cond_1ef
    const-string v8, "affiliation-id"

    .line 583
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_205

    .line 584
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    const-string/jumbo v8, "id"

    invoke-interface {v5, v3, v8}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_be

    :cond_205
    const-string/jumbo v8, "last-security-log-retrieval"

    .line 585
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_216

    .line 587
    invoke-interface {v5, v3, v10}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    goto/16 :goto_be

    :cond_216
    const-string/jumbo v8, "last-bug-report-request"

    .line 588
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_227

    .line 590
    invoke-interface {v5, v3, v10}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    goto/16 :goto_be

    :cond_227
    const-string/jumbo v8, "last-network-log-retrieval"

    .line 591
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_238

    .line 593
    invoke-interface {v5, v3, v10}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    goto/16 :goto_be

    :cond_238
    const-string v8, "admin-broadcast-pending"

    .line 594
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_250

    .line 595
    invoke-interface {v5, v3, v10}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 596
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    goto/16 :goto_be

    :cond_250
    const-string/jumbo v8, "initialization-bundle"

    .line 597
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_261

    .line 598
    invoke-static {v5}, Landroid/os/PersistableBundle;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    goto/16 :goto_be

    :cond_261
    const-string/jumbo v8, "password-validity"

    .line 599
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_274

    if-eqz p1, :cond_be

    .line 603
    invoke-interface {v5, v3, v10, v1}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordValidAtLastCheckpoint:Z

    goto/16 :goto_be

    :cond_274
    const-string/jumbo v8, "password-token"

    .line 605
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_285

    .line 606
    invoke-interface {v5, v3, v10}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    goto/16 :goto_be

    :cond_285
    const-string v8, "current-ime-set"

    .line 607
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_291

    .line 608
    iput-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    goto/16 :goto_be

    :cond_291
    const-string/jumbo v8, "owner-installed-ca-cert"

    .line 609
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a7

    .line 610
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    const-string v8, "alias"

    invoke-interface {v5, v3, v8}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_be

    :cond_2a7
    const-string v8, "apps-suspended"

    .line 611
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b7

    .line 613
    invoke-interface {v5, v3, v10, v1}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    goto/16 :goto_be

    :cond_2b7
    const-string v8, "bypass-role-qualifications"

    .line 614
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c9

    .line 615
    iput-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mBypassDevicePolicyManagementRoleQualifications:Z

    .line 616
    invoke-interface {v5, v3, v10}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentRoleHolder:Ljava/lang/String;

    goto/16 :goto_be

    :cond_2c9
    const-string/jumbo v8, "protected-packages"

    .line 618
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e8

    .line 619
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    if-nez v7, :cond_2dd

    .line 620
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 622
    :cond_2dd
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 623
    invoke-interface {v5, v3, v9}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 622
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_be

    :cond_2e8
    const-string v8, "Unknown tag: %s"

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v7, v9, v1

    .line 625
    invoke-static {v0, v8, v9}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_be

    .line 470
    :cond_2f6
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Settings do not start with policies tag: found "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_30d
    .catch Ljava/io/FileNotFoundException; {:try_start_15d .. :try_end_30d} :catch_310
    .catch Ljava/lang/NullPointerException; {:try_start_15d .. :try_end_30d} :catch_30d
    .catch Ljava/lang/NumberFormatException; {:try_start_15d .. :try_end_30d} :catch_30d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15d .. :try_end_30d} :catch_30d
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_30d} :catch_30d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15d .. :try_end_30d} :catch_30d

    :catch_30d
    move-exception p1

    move-object v3, v4

    goto :goto_313

    :catch_310
    move-object v3, v4

    goto :goto_31c

    :catch_312
    move-exception p1

    :goto_313
    new-array p3, v2, [Ljava/lang/Object;

    aput-object p2, p3, v1

    const-string p2, "failed parsing %s"

    .line 633
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    :catch_31c
    :goto_31c
    move-object v4, v3

    :cond_31d
    if-eqz v4, :cond_322

    .line 637
    :try_start_31f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_322
    .catch Ljava/io/IOException; {:try_start_31f .. :try_end_322} :catch_322

    .line 644
    :catch_322
    :cond_322
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static store(Lcom/android/server/devicepolicy/DevicePolicyData;Lcom/android/internal/util/JournaledFile;Z)Z
    .registers 29

    move-object/from16 v0, p0

    const-string/jumbo v1, "last-bug-report-request"

    const-string v2, "affiliation-id"

    const-string/jumbo v3, "last-security-log-retrieval"

    const-string v4, "do-not-ask-credentials-on-boot"

    const-string/jumbo v5, "statusbar"

    const-string/jumbo v6, "secondary-lock-screen"

    const-string/jumbo v7, "lock-task-component"

    const-string/jumbo v8, "lock-task-features"

    const-string v9, "accepted-ca-certificate"

    const-string v10, "delegation"

    const-string/jumbo v11, "password-validity"

    const-string/jumbo v12, "last-resetpassword-admin"

    const-string v13, "admin"

    const-string v14, "failed-password-attempts"

    const-string/jumbo v15, "password-owner"

    move-object/from16 v16, v1

    const-string/jumbo v1, "policies"

    move-object/from16 v17, v3

    .line 200
    :try_start_30
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v3
    :try_end_34
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_30 .. :try_end_34} :catch_344
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_34} :catch_344

    move-object/from16 v18, v2

    .line 204
    :try_start_36
    new-instance v2, Ljava/io/FileOutputStream;

    move-object/from16 v19, v4

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_3e} :catch_33d
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3e} :catch_33d

    .line 205
    :try_start_3e
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v4
    :try_end_42
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3e .. :try_end_42} :catch_337
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_42} :catch_337

    move-object/from16 v20, v3

    .line 206
    :try_start_44
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_46
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_44 .. :try_end_46} :catch_331
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_46} :catch_331

    move-object/from16 v21, v2

    const/4 v2, 0x0

    :try_start_49
    invoke-interface {v4, v2, v3}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 208
    invoke-interface {v4, v2, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 209
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    if-eqz v2, :cond_61

    const-string/jumbo v3, "permission-provider"

    .line 211
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v22, v1

    const/4 v1, 0x0

    .line 210
    invoke-interface {v4, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_63

    :cond_61
    move-object/from16 v22, v1

    .line 213
    :goto_63
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    if-eqz v1, :cond_76

    const-string/jumbo v1, "setup-complete"
    :try_end_6a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_6a} :catch_32f
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_6a} :catch_32f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 215
    :try_start_6c
    invoke-interface {v4, v3, v1, v2}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_6f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6c .. :try_end_6f} :catch_70
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_76

    :catch_70
    move-exception v0

    move v1, v2

    :goto_72
    move-object/from16 v3, v20

    goto/16 :goto_34a

    .line 217
    :cond_76
    :goto_76
    :try_start_76
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPaired:Z

    if-eqz v1, :cond_81

    const-string v1, "device-paired"
    :try_end_7c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_76 .. :try_end_7c} :catch_32f
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7c} :catch_32f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 218
    :try_start_7e
    invoke-interface {v4, v3, v1, v2}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_81
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7e .. :try_end_81} :catch_70
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_70

    .line 220
    :cond_81
    :try_start_81
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDeviceProvisioningConfigApplied:Z

    if-eqz v1, :cond_8c

    const-string v1, "device-provisioning-config-applied"
    :try_end_87
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_81 .. :try_end_87} :catch_32f
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_87} :catch_32f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 221
    :try_start_89
    invoke-interface {v4, v3, v1, v2}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_8c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_89 .. :try_end_8c} :catch_70
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_70

    .line 223
    :cond_8c
    :try_start_8c
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserProvisioningState:I

    if-eqz v1, :cond_97

    const-string/jumbo v2, "provisioning-state"

    const/4 v3, 0x0

    .line 224
    invoke-interface {v4, v3, v2, v1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 226
    :cond_97
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionPolicy:I

    if-eqz v1, :cond_a2

    const-string/jumbo v2, "permission-policy"

    const/4 v3, 0x0

    .line 227
    invoke-interface {v4, v3, v2, v1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a2
    const-string/jumbo v1, "needed"

    .line 229
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    const-string/jumbo v1, "new-user-disclaimer"

    .line 230
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v4, v3, v1, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 233
    :cond_b6
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    if-eqz v1, :cond_c0

    const-string v2, "factory-reset-flags"

    const/4 v3, 0x0

    .line 238
    invoke-interface {v4, v3, v2, v1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 240
    :cond_c0
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    if-eqz v1, :cond_ca

    const-string v2, "factory-reset-reason"

    const/4 v3, 0x0

    .line 241
    invoke-interface {v4, v3, v2, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_ca
    const/4 v1, 0x0

    .line 245
    :goto_cb
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_11b

    .line 246
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 247
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 250
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_114

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v3

    move-object/from16 v3, v23

    check-cast v3, Ljava/lang/String;

    move-object/from16 v23, v5

    const/4 v5, 0x0

    .line 251
    invoke-interface {v4, v5, v10}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v25, v6

    const-string v6, "delegatePackage"

    .line 252
    invoke-interface {v4, v5, v6, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "scope"

    .line 253
    invoke-interface {v4, v5, v6, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 254
    invoke-interface {v4, v5, v10}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v5, v23

    move-object/from16 v3, v24

    move-object/from16 v6, v25

    goto :goto_e7

    :cond_114
    move-object/from16 v23, v5

    move-object/from16 v25, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_cb

    :cond_11b
    move-object/from16 v23, v5

    move-object/from16 v25, v6

    .line 258
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_125
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8c .. :try_end_125} :catch_32f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_125} :catch_32f

    const/4 v2, 0x0

    :goto_126
    const-string/jumbo v3, "name"

    if-ge v2, v1, :cond_14f

    .line 260
    :try_start_12b
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/devicepolicy/ActiveAdmin;

    if-eqz v5, :cond_14c

    const/4 v6, 0x0

    .line 262
    invoke-interface {v4, v6, v13}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 263
    iget-object v10, v5, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v10}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v6, v3, v10}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 264
    invoke-virtual {v5, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeToXml(Landroid/util/TypedXmlSerializer;)V

    .line 265
    invoke-interface {v4, v6, v13}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_14c
    add-int/lit8 v2, v2, 0x1

    goto :goto_126

    .line 269
    :cond_14f
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I
    :try_end_151
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12b .. :try_end_151} :catch_32f
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_151} :catch_32f

    const-string/jumbo v2, "value"

    if-ltz v1, :cond_162

    const/4 v1, 0x0

    .line 270
    :try_start_157
    invoke-interface {v4, v1, v15}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 271
    iget v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    invoke-interface {v4, v1, v2, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 272
    invoke-interface {v4, v1, v15}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 275
    :cond_162
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    if-eqz v1, :cond_172

    const/4 v1, 0x0

    .line 276
    invoke-interface {v4, v1, v14}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 277
    iget v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    invoke-interface {v4, v1, v2, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 278
    invoke-interface {v4, v1, v14}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 291
    :cond_172
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastResetPassword:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_183

    const/4 v1, 0x0

    .line 292
    invoke-interface {v4, v1, v12}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    iget v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastResetPassword:I

    invoke-interface {v4, v1, v2, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 294
    invoke-interface {v4, v1, v12}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_183
    if-eqz p2, :cond_191

    const/4 v1, 0x0

    .line 302
    invoke-interface {v4, v1, v11}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    iget-boolean v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordValidAtLastCheckpoint:Z

    invoke-interface {v4, v1, v2, v5}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 304
    invoke-interface {v4, v1, v11}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_191
    const/4 v1, 0x0

    .line 307
    :goto_192
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v1, v5, :cond_1af

    const/4 v5, 0x0

    .line 308
    invoke-interface {v4, v5, v9}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 309
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v5, v3, v6}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 310
    invoke-interface {v4, v5, v9}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_192

    :cond_1af
    const/4 v1, 0x0

    .line 313
    :goto_1b0
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1cd

    .line 314
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    .line 315
    invoke-interface {v4, v6, v7}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 316
    invoke-interface {v4, v6, v3, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 317
    invoke-interface {v4, v6, v7}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b0

    .line 320
    :cond_1cd
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    if-eqz v1, :cond_1dd

    const/4 v1, 0x0

    .line 321
    invoke-interface {v4, v1, v8}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 322
    iget v3, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    invoke-interface {v4, v1, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 323
    invoke-interface {v4, v1, v8}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 326
    :cond_1dd
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mSecondaryLockscreenEnabled:Z

    if-eqz v1, :cond_1f3

    move-object/from16 v1, v25

    const/4 v3, 0x0

    .line 327
    invoke-interface {v4, v3, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1e7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_157 .. :try_end_1e7} :catch_32f
    .catch Ljava/io/IOException; {:try_start_157 .. :try_end_1e7} :catch_32f

    const/4 v5, 0x1

    .line 328
    :try_start_1e8
    invoke-interface {v4, v3, v2, v5}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1eb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e8 .. :try_end_1eb} :catch_1ef
    .catch Ljava/io/IOException; {:try_start_1e8 .. :try_end_1eb} :catch_1ef

    .line 329
    :try_start_1eb
    invoke-interface {v4, v3, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1f3

    :catch_1ef
    move-exception v0

    move v1, v5

    goto/16 :goto_72

    .line 332
    :cond_1f3
    :goto_1f3
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    if-eqz v1, :cond_207

    move-object/from16 v1, v23

    const/4 v3, 0x0

    .line 333
    invoke-interface {v4, v3, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "disabled"

    .line 334
    iget-boolean v6, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    invoke-interface {v4, v3, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    invoke-interface {v4, v3, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 338
    :cond_207
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDoNotAskCredentialsOnBoot:Z

    if-eqz v1, :cond_214

    move-object/from16 v1, v19

    const/4 v3, 0x0

    .line 339
    invoke-interface {v4, v3, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 340
    invoke-interface {v4, v3, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 343
    :cond_214
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_238

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v5, v18

    const/4 v6, 0x0

    .line 344
    invoke-interface {v4, v6, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "id"

    .line 345
    invoke-interface {v4, v6, v7, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 346
    invoke-interface {v4, v6, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v18, v5

    goto :goto_21a

    .line 349
    :cond_238
    iget-wide v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-ltz v1, :cond_24e

    move-object/from16 v1, v17

    const/4 v3, 0x0

    .line 350
    invoke-interface {v4, v3, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 351
    iget-wide v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    invoke-interface {v4, v3, v2, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 352
    invoke-interface {v4, v3, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 355
    :cond_24e
    iget-wide v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    cmp-long v1, v5, v7

    if-ltz v1, :cond_262

    move-object/from16 v1, v16

    const/4 v3, 0x0

    .line 356
    invoke-interface {v4, v3, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 357
    iget-wide v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    invoke-interface {v4, v3, v2, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 358
    invoke-interface {v4, v3, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 361
    :cond_262
    iget-wide v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    cmp-long v1, v5, v7

    if-ltz v1, :cond_27a

    const-string/jumbo v1, "last-network-log-retrieval"

    const/4 v3, 0x0

    .line 362
    invoke-interface {v4, v3, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 363
    iget-wide v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    invoke-interface {v4, v3, v2, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "last-network-log-retrieval"

    .line 364
    invoke-interface {v4, v3, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 367
    :cond_27a
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    if-eqz v1, :cond_28e

    const-string v1, "admin-broadcast-pending"

    const/4 v3, 0x0

    .line 368
    invoke-interface {v4, v3, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 369
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    invoke-interface {v4, v3, v2, v1}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "admin-broadcast-pending"

    .line 370
    invoke-interface {v4, v3, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 373
    :cond_28e
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_2a4

    const-string/jumbo v1, "initialization-bundle"

    const/4 v3, 0x0

    .line 374
    invoke-interface {v4, v3, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 375
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    const-string/jumbo v1, "initialization-bundle"

    .line 376
    invoke-interface {v4, v3, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 379
    :cond_2a4
    iget-wide v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    cmp-long v1, v5, v7

    if-eqz v1, :cond_2bc

    const-string/jumbo v1, "password-token"

    const/4 v3, 0x0

    .line 380
    invoke-interface {v4, v3, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 381
    iget-wide v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    invoke-interface {v4, v3, v2, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "password-token"

    .line 382
    invoke-interface {v4, v3, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 385
    :cond_2bc
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    if-eqz v1, :cond_2cb

    const-string v1, "current-ime-set"

    const/4 v3, 0x0

    .line 386
    invoke-interface {v4, v3, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "current-ime-set"

    .line 387
    invoke-interface {v4, v3, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 390
    :cond_2cb
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v5, "owner-installed-ca-cert"

    const/4 v6, 0x0

    .line 391
    invoke-interface {v4, v6, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "alias"

    .line 392
    invoke-interface {v4, v6, v5, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "owner-installed-ca-cert"

    .line 393
    invoke-interface {v4, v6, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2d1

    .line 396
    :cond_2f0
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    if-eqz v1, :cond_304

    const-string v1, "apps-suspended"

    const/4 v3, 0x0

    .line 397
    invoke-interface {v4, v3, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 398
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    invoke-interface {v4, v3, v2, v1}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "apps-suspended"

    .line 399
    invoke-interface {v4, v3, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 402
    :cond_304
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mBypassDevicePolicyManagementRoleQualifications:Z

    if-eqz v1, :cond_318

    const-string v1, "bypass-role-qualifications"

    const/4 v3, 0x0

    .line 403
    invoke-interface {v4, v3, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 404
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentRoleHolder:Ljava/lang/String;

    invoke-interface {v4, v3, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "bypass-role-qualifications"

    .line 405
    invoke-interface {v4, v3, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_318
    move-object/from16 v0, v22

    const/4 v1, 0x0

    .line 408
    invoke-interface {v4, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 410
    invoke-interface {v4}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 411
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->flush()V

    .line 412
    invoke-static/range {v21 .. v21}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 413
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 414
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_32d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1eb .. :try_end_32d} :catch_32f
    .catch Ljava/io/IOException; {:try_start_1eb .. :try_end_32d} :catch_32f

    const/4 v1, 0x1

    return v1

    :catch_32f
    move-exception v0

    goto :goto_334

    :catch_331
    move-exception v0

    move-object/from16 v21, v2

    :goto_334
    move-object/from16 v3, v20

    goto :goto_349

    :catch_337
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v20, v3

    goto :goto_349

    :catch_33d
    move-exception v0

    move-object/from16 v20, v3

    const/4 v1, 0x0

    move-object/from16 v21, v1

    goto :goto_349

    :catch_344
    move-exception v0

    const/4 v1, 0x0

    move-object v3, v1

    move-object/from16 v21, v3

    :goto_349
    const/4 v1, 0x1

    :goto_34a
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const-string v2, "DevicePolicyManager"

    const-string v3, "failed writing file %s"

    .line 417
    invoke-static {v2, v0, v3, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v21, :cond_35b

    .line 420
    :try_start_358
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_35b
    .catch Ljava/io/IOException; {:try_start_358 .. :try_end_35b} :catch_35b

    .line 425
    :catch_35b
    :cond_35b
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    const/4 v1, 0x0

    return v1
.end method

.method public static sync(Ljava/io/File;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 433
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_10

    .line 434
    :try_start_7
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 435
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d} :catch_e

    goto :goto_25

    :catch_e
    move-exception v1

    goto :goto_14

    :catch_10
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_14
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v0, v3

    const-string p0, "DevicePolicyManager"

    const-string v3, "failed writing file %s"

    .line 437
    invoke-static {p0, v1, v3, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_25

    .line 440
    :try_start_22
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_25

    :catch_25
    :cond_25
    :goto_25
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 6

    .line 703
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabled Device Admins (User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", provisioningState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserProvisioningState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2f
    if-ge v1, v0, :cond_5f

    .line 708
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/ActiveAdmin;

    if-eqz v2, :cond_5c

    .line 710
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 711
    iget-object v3, v2, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ":"

    .line 712
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 714
    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 715
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 716
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 719
    :cond_5f
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 720
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing Device Admins (User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 722
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 724
    :cond_8d
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 725
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "mPasswordOwner="

    .line 726
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "mPasswordTokenHandle="

    .line 727
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "mAppsSuspended="

    .line 728
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "mUserSetupComplete="

    .line 729
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "mAffiliationIds="

    .line 730
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v0, "mNewUserDisclaimer="

    .line 731
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastResetPasswordByAdmin="

    .line 733
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastResetPassword:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 736
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    if-eqz v0, :cond_106

    const-string/jumbo v0, "mFactoryResetFlags="

    .line 737
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " ("

    .line 738
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 739
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyData;->factoryResetFlagsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x29

    .line 740
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(C)V

    .line 742
    :cond_106
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    if-eqz v0, :cond_115

    const-string/jumbo v0, "mFactoryResetReason="

    .line 743
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 745
    :cond_115
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public isNewUserDisclaimerAcknowledged()Z
    .registers 8

    .line 681
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    const-string v1, "DevicePolicyManager"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1c

    .line 682
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    if-nez p0, :cond_d

    return v2

    :cond_d
    new-array v0, v2, [Ljava/lang/Object;

    .line 686
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    const-string/jumbo p0, "isNewUserDisclaimerAcknowledged(%d): mNewUserDisclaimer is null"

    .line 685
    invoke-static {v1, p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 689
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x2

    sparse-switch v5, :sswitch_data_64

    goto :goto_4b

    :sswitch_29
    const-string v5, "acked"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto :goto_4b

    :cond_32
    move v4, v6

    goto :goto_4b

    :sswitch_34
    const-string/jumbo v5, "needed"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto :goto_4b

    :cond_3e
    move v4, v2

    goto :goto_4b

    :sswitch_40
    const-string/jumbo v5, "not_needed"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto :goto_4b

    :cond_4a
    move v4, v3

    :goto_4b
    packed-switch v4, :pswitch_data_72

    new-array v0, v6, [Ljava/lang/Object;

    .line 696
    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    aput-object p0, v0, v2

    const-string/jumbo p0, "isNewUserDisclaimerAcknowledged(%d): invalid value %d"

    invoke-static {v1, p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :pswitch_62
    return v3

    :pswitch_63
    return v2

    :sswitch_data_64
    .sparse-switch
        -0x49d9295f -> :sswitch_40
        -0x3e8c384b -> :sswitch_34
        0x58586e8 -> :sswitch_29
    .end sparse-switch

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_63
        :pswitch_62
        :pswitch_63
    .end packed-switch
.end method

.method public setDelayedFactoryReset(Ljava/lang/String;ZZZ)V
    .registers 5

    .line 666
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    const/4 p1, 0x1

    .line 668
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    if-eqz p2, :cond_b

    or-int/lit8 p1, p1, 0x2

    .line 670
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    :cond_b
    if-eqz p3, :cond_13

    .line 673
    iget p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    :cond_13
    if-eqz p4, :cond_1b

    .line 676
    iget p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    :cond_1b
    return-void
.end method

.method public validatePasswordOwner()V
    .registers 6

    .line 648
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    if-ltz v0, :cond_3b

    .line 650
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_c
    const/4 v2, 0x0

    if-ltz v0, :cond_24

    .line 651
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/ActiveAdmin;

    invoke-virtual {v3}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUid()I

    move-result v3

    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    if-ne v3, v4, :cond_21

    move v0, v1

    goto :goto_25

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_24
    move v0, v2

    :goto_25
    if-nez v0, :cond_3b

    new-array v0, v1, [Ljava/lang/Object;

    .line 657
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    .line 658
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "DevicePolicyManager"

    const-string v2, "Previous password owner %s no longer active; disabling"

    .line 657
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 659
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    :cond_3b
    return-void
.end method
