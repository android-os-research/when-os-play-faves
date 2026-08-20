.class public Lcom/android/server/devicepolicy/ActiveAdmin;
.super Ljava/lang/Object;
.source "ActiveAdmin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;
    }
.end annotation


# static fields
.field public static final ATTR_LAST_NETWORK_LOGGING_NOTIFICATION:Ljava/lang/String; = "last-notification"

.field public static final ATTR_NUM_NETWORK_LOGGING_NOTIFICATIONS:Ljava/lang/String; = "num-notifications"

.field public static final ATTR_VALUE:Ljava/lang/String; = "value"

.field public static final DEF_KEYGUARD_FEATURES_DISABLED:I = 0x0

.field public static final DEF_MAXIMUM_FAILED_PASSWORDS_FOR_WIPE:I = 0x0

.field public static final DEF_MAXIMUM_NETWORK_LOGGING_NOTIFICATIONS_SHOWN:I = 0x2

.field public static final DEF_MAXIMUM_TIME_TO_UNLOCK:J = 0x0L

.field public static final DEF_ORGANIZATION_COLOR:I

.field public static final DEF_PASSWORD_EXPIRATION_DATE:J = 0x0L

.field public static final DEF_PASSWORD_EXPIRATION_TIMEOUT:J = 0x0L

.field public static final DEF_PASSWORD_HISTORY_LENGTH:I = 0x0

.field public static final TAG_ACCOUNT_TYPE:Ljava/lang/String; = "account-type"

.field public static final TAG_ADMIN_CAN_GRANT_SENSORS_PERMISSIONS:Ljava/lang/String; = "admin-can-grant-sensors-permissions"

.field public static final TAG_ALWAYS_ON_VPN_LOCKDOWN:Ljava/lang/String; = "vpn-lockdown"

.field public static final TAG_ALWAYS_ON_VPN_PACKAGE:Ljava/lang/String; = "vpn-package"

.field public static final TAG_COMMON_CRITERIA_MODE:Ljava/lang/String; = "common-criteria-mode"

.field public static final TAG_CROSS_PROFILE_CALENDAR_PACKAGES:Ljava/lang/String; = "cross-profile-calendar-packages"

.field public static final TAG_CROSS_PROFILE_CALENDAR_PACKAGES_NULL:Ljava/lang/String; = "cross-profile-calendar-packages-null"

.field public static final TAG_CROSS_PROFILE_PACKAGES:Ljava/lang/String; = "cross-profile-packages"

.field public static final TAG_CROSS_PROFILE_WIDGET_PROVIDERS:Ljava/lang/String; = "cross-profile-widget-providers"

.field public static final TAG_DEFAULT_ENABLED_USER_RESTRICTIONS:Ljava/lang/String; = "default-enabled-user-restrictions"

.field public static final TAG_DISABLE_ACCOUNT_MANAGEMENT:Ljava/lang/String; = "disable-account-management"

.field public static final TAG_DISABLE_BLUETOOTH_CONTACT_SHARING:Ljava/lang/String; = "disable-bt-contacts-sharing"

.field public static final TAG_DISABLE_CALLER_ID:Ljava/lang/String; = "disable-caller-id"

.field public static final TAG_DISABLE_CAMERA:Ljava/lang/String; = "disable-camera"

.field public static final TAG_DISABLE_CONTACTS_SEARCH:Ljava/lang/String; = "disable-contacts-search"

.field public static final TAG_DISABLE_KEYGUARD_FEATURES:Ljava/lang/String; = "disable-keyguard-features"

.field public static final TAG_DISABLE_SCREEN_CAPTURE:Ljava/lang/String; = "disable-screen-capture"

.field public static final TAG_EAS_ALLOW_BLUETOOTH_MODE:Ljava/lang/String; = "allow-bluetooth-mode"

.field public static final TAG_EAS_ALLOW_BROWSER:Ljava/lang/String; = "allow-browser"

.field public static final TAG_EAS_ALLOW_DESKTOP_SYNC:Ljava/lang/String; = "allow-Desktop-Sync"

.field public static final TAG_EAS_ALLOW_INTERNET_SHARING:Ljava/lang/String; = "allow-internet-sharing"

.field public static final TAG_EAS_ALLOW_IRDA:Ljava/lang/String; = "allow-IrDA"

.field public static final TAG_EAS_ALLOW_POP_IMAP_EMAIL:Ljava/lang/String; = "allow-popimap-email"

.field public static final TAG_EAS_ALLOW_SMS:Ljava/lang/String; = "allow-text-messaging"

.field public static final TAG_EAS_ALLOW_STORAGE_CARD:Ljava/lang/String; = "allow-storage-card"

.field public static final TAG_EAS_ALLOW_WIFI:Ljava/lang/String; = "allow-wifi"

.field public static final TAG_EAS_PASSWORD_RECOVERABLE:Ljava/lang/String; = "password-recoverable"

.field public static final TAG_EAS_REQUIRE_SDCARD_ENCRYPTION:Ljava/lang/String; = "require-StorageCard-Encryption"

.field public static final TAG_EAS_SIMPLE_PASSWORD_ENABLED:Ljava/lang/String; = "simplepassword-enabled"

.field public static final TAG_ENCRYPTION_REQUESTED:Ljava/lang/String; = "encryption-requested"

.field public static final TAG_END_USER_SESSION_MESSAGE:Ljava/lang/String; = "end_user_session_message"

.field public static final TAG_ENROLLMENT_SPECIFIC_ID:Ljava/lang/String; = "enrollment-specific-id"

.field public static final TAG_FACTORY_RESET_PROTECTION_POLICY:Ljava/lang/String; = "factory_reset_protection_policy"

.field public static final TAG_FORCE_EPHEMERAL_USERS:Ljava/lang/String; = "force_ephemeral_users"

.field public static final TAG_GLOBAL_PROXY_EXCLUSION_LIST:Ljava/lang/String; = "global-proxy-exclusion-list"

.field public static final TAG_GLOBAL_PROXY_SPEC:Ljava/lang/String; = "global-proxy-spec"

.field public static final TAG_IS_LOGOUT_ENABLED:Ljava/lang/String; = "is_logout_enabled"

.field public static final TAG_IS_NETWORK_LOGGING_ENABLED:Ljava/lang/String; = "is_network_logging_enabled"

.field public static final TAG_KEEP_UNINSTALLED_PACKAGES:Ljava/lang/String; = "keep-uninstalled-packages"

.field public static final TAG_LONG_SUPPORT_MESSAGE:Ljava/lang/String; = "long-support-message"

.field public static final TAG_MANAGE_TRUST_AGENT_FEATURES:Ljava/lang/String; = "manage-trust-agent-features"

.field public static final TAG_MAX_FAILED_PASSWORD_WIPE:Ljava/lang/String; = "max-failed-password-wipe"

.field public static final TAG_MAX_TIME_TO_UNLOCK:Ljava/lang/String; = "max-time-to-unlock"

.field public static final TAG_METERED_DATA_DISABLED_PACKAGES:Ljava/lang/String; = "metered_data_disabled_packages"

.field public static final TAG_MIN_PASSWORD_LENGTH:Ljava/lang/String; = "min-password-length"

.field public static final TAG_MIN_PASSWORD_LETTERS:Ljava/lang/String; = "min-password-letters"

.field public static final TAG_MIN_PASSWORD_LOWERCASE:Ljava/lang/String; = "min-password-lowercase"

.field public static final TAG_MIN_PASSWORD_NONLETTER:Ljava/lang/String; = "min-password-nonletter"

.field public static final TAG_MIN_PASSWORD_NUMERIC:Ljava/lang/String; = "min-password-numeric"

.field public static final TAG_MIN_PASSWORD_SYMBOLS:Ljava/lang/String; = "min-password-symbols"

.field public static final TAG_MIN_PASSWORD_UPPERCASE:Ljava/lang/String; = "min-password-uppercase"

.field public static final TAG_NEARBY_APP_STREAMING_POLICY:Ljava/lang/String; = "nearby-app-streaming-policy"

.field public static final TAG_NEARBY_NOTIFICATION_STREAMING_POLICY:Ljava/lang/String; = "nearby-notification-streaming-policy"

.field public static final TAG_ORGANIZATION_COLOR:Ljava/lang/String; = "organization-color"

.field public static final TAG_ORGANIZATION_ID:Ljava/lang/String; = "organization-id"

.field public static final TAG_ORGANIZATION_NAME:Ljava/lang/String; = "organization-name"

.field public static final TAG_PACKAGE_LIST_ITEM:Ljava/lang/String; = "item"

.field public static final TAG_PARENT_ADMIN:Ljava/lang/String; = "parent-admin"

.field public static final TAG_PASSWORD_COMPLEXITY:Ljava/lang/String; = "password-complexity"

.field public static final TAG_PASSWORD_EXPIRATION_DATE:Ljava/lang/String; = "password-expiration-date"

.field public static final TAG_PASSWORD_EXPIRATION_TIMEOUT:Ljava/lang/String; = "password-expiration-timeout"

.field public static final TAG_PASSWORD_HISTORY_LENGTH:Ljava/lang/String; = "password-history-length"

.field public static final TAG_PASSWORD_QUALITY:Ljava/lang/String; = "password-quality"

.field public static final TAG_PERMITTED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "permitted-accessiblity-services"

.field public static final TAG_PERMITTED_IMES:Ljava/lang/String; = "permitted-imes"

.field public static final TAG_PERMITTED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "permitted-notification-listeners"

.field public static final TAG_POLICIES:Ljava/lang/String; = "policies"

.field public static final TAG_PREFERENTIAL_NETWORK_SERVICE_CONFIG:Ljava/lang/String; = "preferential_network_service_config"

.field public static final TAG_PREFERENTIAL_NETWORK_SERVICE_CONFIGS:Ljava/lang/String; = "preferential_network_service_configs"

.field public static final TAG_PREFERENTIAL_NETWORK_SERVICE_ENABLED:Ljava/lang/String; = "preferential-network-service-enabled"

.field public static final TAG_PROFILE_MAXIMUM_TIME_OFF:Ljava/lang/String; = "profile-max-time-off"

.field public static final TAG_PROFILE_OFF_DEADLINE:Ljava/lang/String; = "profile-off-deadline"

.field public static final TAG_PROTECTED_PACKAGES:Ljava/lang/String; = "protected_packages"

.field public static final TAG_PROVIDER:Ljava/lang/String; = "provider"

.field public static final TAG_REQUIRE_AUTO_TIME:Ljava/lang/String; = "require_auto_time"

.field public static final TAG_RESTRICTION:Ljava/lang/String; = "restriction"

.field public static final TAG_SHORT_SUPPORT_MESSAGE:Ljava/lang/String; = "short-support-message"

.field public static final TAG_SPECIFIES_GLOBAL_PROXY:Ljava/lang/String; = "specifies-global-proxy"

.field public static final TAG_SSID:Ljava/lang/String; = "ssid"

.field public static final TAG_SSID_ALLOWLIST:Ljava/lang/String; = "ssid-allowlist"

.field public static final TAG_SSID_DENYLIST:Ljava/lang/String; = "ssid-denylist"

.field public static final TAG_START_USER_SESSION_MESSAGE:Ljava/lang/String; = "start_user_session_message"

.field public static final TAG_STRONG_AUTH_UNLOCK_TIMEOUT:Ljava/lang/String; = "strong-auth-unlock-timeout"

.field public static final TAG_SUSPEND_PERSONAL_APPS:Ljava/lang/String; = "suspend-personal-apps"

.field public static final TAG_TEST_ONLY_ADMIN:Ljava/lang/String; = "test-only-admin"

.field public static final TAG_TRUST_AGENT_COMPONENT:Ljava/lang/String; = "component"

.field public static final TAG_TRUST_AGENT_COMPONENT_OPTIONS:Ljava/lang/String; = "trust-agent-component-options"

.field public static final TAG_USB_DATA_SIGNALING:Ljava/lang/String; = "usb-data-signaling"

.field public static final TAG_USER_RESTRICTIONS:Ljava/lang/String; = "user-restrictions"

.field public static final TAG_WIFI_MIN_SECURITY:Ljava/lang/String; = "wifi-min-security"

.field public static final USB_DATA_SIGNALING_ENABLED_DEFAULT:Z = true


# instance fields
.field public final accountTypesWithManagementDisabled:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public allowBluetoothMode:I

.field public allowBrowser:Z

.field public allowDesktopSync:Z

.field public allowInternetSharing:Z

.field public allowIrDA:Z

.field public allowPOPIMAPEmail:Z

.field public allowStorageCard:Z

.field public allowTextMessaging:Z

.field public allowWifi:Z

.field public crossProfileWidgetProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public disableBluetoothContactSharing:Z

.field public disableCallerId:Z

.field public disableCamera:Z

.field public disableContactsSearch:Z

.field public disableScreenCapture:Z

.field public disabledKeyguardFeatures:I

.field public encryptionRequested:Z

.field public endUserSessionMessage:Ljava/lang/String;

.field public forceEphemeralUsers:Z

.field public globalProxyExclusionList:Ljava/lang/String;

.field public globalProxySpec:Ljava/lang/String;

.field public info:Landroid/app/admin/DeviceAdminInfo;

.field public isLogoutEnabled:Z

.field public isNetworkLoggingEnabled:Z

.field public final isParent:Z

.field public keepUninstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public lastNetworkLoggingNotificationTimeMs:J

.field public longSupportMessage:Ljava/lang/CharSequence;

.field public mAdminCanGrantSensorsPermissions:Z

.field public mAlwaysOnVpnLockdown:Z

.field public mAlwaysOnVpnPackage:Ljava/lang/String;

.field public mCommonCriteriaMode:Z

.field public mCrossProfileCalendarPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCrossProfilePackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mEnrollmentSpecificId:Ljava/lang/String;

.field public mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

.field public mNearbyAppStreamingPolicy:I

.field public mNearbyNotificationStreamingPolicy:I

.field public mOrganizationId:Ljava/lang/String;

.field public mPasswordComplexity:I

.field public mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

.field public mPreferentialNetworkServiceConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/admin/PreferentialNetworkServiceConfig;",
            ">;"
        }
    .end annotation
.end field

.field public mPreferentialNetworkServiceEnabled:Z

.field public mProfileMaximumTimeOffMillis:J

.field public mProfileOffDeadline:J

.field public mSuspendPersonalApps:Z

.field public mUsbDataSignalingEnabled:Z

.field public mWifiMinimumSecurityLevel:I

.field public mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

.field public maximumFailedPasswordsForWipe:I

.field public maximumTimeToUnlock:J

.field public meteredDisabledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public numNetworkLoggingNotifications:I

.field public organizationColor:I

.field public organizationName:Ljava/lang/String;

.field public parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

.field public passwordExpirationDate:J

.field public passwordExpirationTimeout:J

.field public passwordHistoryLength:I

.field public passwordRecoverable:Z

.field public permittedAccessiblityServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public permittedInputMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public permittedNotificationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public protectedPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public requireAutoTime:Z

.field public requireStorageCardEncryption:Z

.field public shortSupportMessage:Ljava/lang/CharSequence;

.field public simplePasswordEnabled:Z

.field public specifiesGlobalProxy:Z

.field public startUserSessionMessage:Ljava/lang/String;

.field public strongAuthUnlockTimeout:J

.field public testOnlyAdmin:Z

.field public trustAgentInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public userRestrictions:Landroid/os/Bundle;


# direct methods
.method public static synthetic $r8$lambda$2XePpiIoAzKc-_NpndsGc0Rkhp8(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;
    .registers 1

    invoke-static {p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->lambda$readWifiSsids$1(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Fcsd_RMsOmxo-6BekW7DZ5WuFlE(ILjava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->lambda$getGlobalUserRestrictions$3(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$cCvmDTj5vykiiT_JJYU4Vs81VVA(Landroid/net/wifi/WifiSsid;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->lambda$ssidsToStrings$0(Landroid/net/wifi/WifiSsid;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fQ1kXvm6KzpR-zLrfpw6xjrVpds(ILjava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->lambda$getLocalUserRestrictions$2(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "#00796B"

    .line 313
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/devicepolicy/ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/app/admin/DeviceAdminInfo;Z)V
    .registers 9

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 172
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    .line 174
    new-instance v1, Landroid/app/admin/PasswordPolicy;

    invoke-direct {v1}, Landroid/app/admin/PasswordPolicy;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 177
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    const/4 v1, 0x3

    .line 180
    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyNotificationStreamingPolicy:I

    .line 183
    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyAppStreamingPolicy:I

    const/4 v1, 0x0

    .line 186
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    const-wide/16 v2, 0x0

    .line 190
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumTimeToUnlock:J

    .line 192
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->strongAuthUnlockTimeout:J

    .line 195
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 198
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    .line 201
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    .line 205
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disabledKeyguardFeatures:I

    .line 207
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->encryptionRequested:Z

    .line 208
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    .line 209
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    .line 210
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCallerId:Z

    .line 211
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableContactsSearch:Z

    const/4 v4, 0x1

    .line 212
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableBluetoothContactSharing:Z

    .line 213
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableScreenCapture:Z

    .line 214
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    .line 215
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->forceEphemeralUsers:Z

    .line 216
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    .line 217
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isLogoutEnabled:Z

    .line 233
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordRecoverable:Z

    .line 234
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->simplePasswordEnabled:Z

    .line 235
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowStorageCard:Z

    .line 236
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowWifi:Z

    .line 237
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowTextMessaging:Z

    .line 238
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowPOPIMAPEmail:Z

    .line 239
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowBrowser:Z

    .line 240
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowInternetSharing:Z

    const/4 v5, 0x2

    .line 241
    iput v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowBluetoothMode:I

    .line 242
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowDesktopSync:Z

    .line 243
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowIrDA:Z

    .line 244
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireStorageCardEncryption:Z

    .line 249
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->numNetworkLoggingNotifications:I

    .line 250
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    .line 265
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    .line 292
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->specifiesGlobalProxy:Z

    .line 293
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 294
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    .line 296
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    .line 306
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    .line 309
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    .line 310
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    .line 314
    sget v5, Lcom/android/server/devicepolicy/ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    iput v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationColor:I

    .line 317
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    .line 320
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    .line 321
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    .line 326
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    .line 331
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    .line 334
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSuspendPersonalApps:Z

    .line 336
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    .line 338
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileOffDeadline:J

    .line 346
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceEnabled:Z

    .line 348
    sget-object v1, Landroid/app/admin/PreferentialNetworkServiceConfig;->DEFAULT:Landroid/app/admin/PreferentialNetworkServiceConfig;

    .line 349
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    .line 352
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mUsbDataSignalingEnabled:Z

    .line 354
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiMinimumSecurityLevel:I

    .line 357
    iput-object p1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 358
    iput-boolean p2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isParent:Z

    return-void
.end method

.method public static filterRestrictions(Landroid/os/Bundle;Ljava/util/function/Predicate;)Landroid/os/Bundle;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 1141
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1142
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1143
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    goto :goto_d

    .line 1146
    :cond_20
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    .line 1147
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_d

    :cond_2b
    return-object v0
.end method

.method public static synthetic lambda$getGlobalUserRestrictions$3(ILjava/lang/String;)Z
    .registers 2

    .line 1165
    invoke-static {p0, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isGlobal(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$getLocalUserRestrictions$2(ILjava/lang/String;)Z
    .registers 2

    .line 1160
    invoke-static {p0, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isLocal(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$readWifiSsids$1(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;
    .registers 2

    .line 988
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Landroid/net/wifi/WifiSsid;->fromBytes([B)Landroid/net/wifi/WifiSsid;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$ssidsToStrings$0(Landroid/net/wifi/WifiSsid;)Ljava/lang/String;
    .registers 3

    .line 667
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/wifi/WifiSsid;->getBytes()[B

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static removeDeprecatedRestrictions(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3

    .line 1134
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEPRECATED_USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1135
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_6

    :cond_16
    return-object p0
.end method


# virtual methods
.method public addSyntheticRestrictions(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    .line 1124
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    const-string/jumbo v0, "no_camera"

    .line 1125
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1127
    :cond_b
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    if-eqz p0, :cond_15

    const-string/jumbo p0, "no_config_date_time"

    .line 1128
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_15
    return-object p1
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 5

    const-string/jumbo v0, "uid="

    .line 1169
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "testOnlyAdmin="

    .line 1172
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1173
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "policies:"

    .line 1175
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1176
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 1178
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    .line 1179
    :goto_2a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3e

    .line 1180
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget-object v2, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 1182
    :cond_3e
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_41
    const-string/jumbo v0, "passwordQuality=0x"

    .line 1185
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1186
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->quality:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "minimumPasswordLength="

    .line 1188
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1189
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->length:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "passwordHistoryLength="

    .line 1191
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1192
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "minimumPasswordUpperCase="

    .line 1194
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1195
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->upperCase:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "minimumPasswordLowerCase="

    .line 1197
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1198
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "minimumPasswordLetters="

    .line 1200
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1201
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->letters:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "minimumPasswordNumeric="

    .line 1203
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1204
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->numeric:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "minimumPasswordSymbols="

    .line 1206
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1207
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->symbols:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "minimumPasswordNonLetter="

    .line 1209
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1210
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "maximumTimeToUnlock="

    .line 1212
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1213
    iget-wide v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumTimeToUnlock:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v0, "strongAuthUnlockTimeout="

    .line 1215
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1216
    iget-wide v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->strongAuthUnlockTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v0, "maximumFailedPasswordsForWipe="

    .line 1218
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1219
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumFailedPasswordsForWipe:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "specifiesGlobalProxy="

    .line 1221
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1222
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->specifiesGlobalProxy:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "passwordExpirationTimeout="

    .line 1224
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1225
    iget-wide v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v0, "passwordExpirationDate="

    .line 1227
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1228
    iget-wide v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 1230
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    if-eqz v0, :cond_109

    const-string/jumbo v0, "globalProxySpec="

    .line 1231
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1232
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1234
    :cond_109
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    if-eqz v0, :cond_118

    const-string/jumbo v0, "globalProxyEclusionList="

    .line 1235
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1236
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_118
    const-string v0, "encryptionRequested="

    .line 1238
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1239
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->encryptionRequested:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "disableCamera="

    .line 1241
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1242
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "disableCallerId="

    .line 1244
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1245
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCallerId:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "disableContactsSearch="

    .line 1247
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1248
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableContactsSearch:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "disableBluetoothContactSharing="

    .line 1250
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1251
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableBluetoothContactSharing:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "disableScreenCapture="

    .line 1253
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1254
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableScreenCapture:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "requireAutoTime="

    .line 1256
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1257
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "forceEphemeralUsers="

    .line 1259
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1260
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->forceEphemeralUsers:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "isNetworkLoggingEnabled="

    .line 1262
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1263
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "disabledKeyguardFeatures="

    .line 1265
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1266
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disabledKeyguardFeatures:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "crossProfileWidgetProviders="

    .line 1268
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1269
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1271
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    if-eqz v0, :cond_197

    const-string/jumbo v0, "permittedAccessibilityServices="

    .line 1272
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1273
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1276
    :cond_197
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    if-eqz v0, :cond_1a6

    const-string/jumbo v0, "permittedInputMethods="

    .line 1277
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1278
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1281
    :cond_1a6
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    if-eqz v0, :cond_1b5

    const-string/jumbo v0, "permittedNotificationListeners="

    .line 1282
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1283
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1286
    :cond_1b5
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    if-eqz v0, :cond_1c4

    const-string/jumbo v0, "keepUninstalledPackages="

    .line 1287
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1288
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1291
    :cond_1c4
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    if-eqz v0, :cond_1d3

    const-string/jumbo v0, "meteredDisabledPackages="

    .line 1292
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1293
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1296
    :cond_1d3
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    if-eqz v0, :cond_1e2

    const-string/jumbo v0, "protectedPackages="

    .line 1297
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1298
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_1e2
    const-string/jumbo v0, "organizationColor="

    .line 1301
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1302
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationColor:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1304
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    if-eqz v0, :cond_1fc

    const-string/jumbo v0, "organizationName="

    .line 1305
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1306
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_1fc
    const-string v0, "accountTypesWithManagementDisabled="

    .line 1309
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1310
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v0, "userRestrictions:"

    .line 1313
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1314
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    const-string v1, "  "

    invoke-static {p1, v1, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "defaultEnabledRestrictionsAlreadySet="

    .line 1316
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1317
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v0, "isParent="

    .line 1319
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1320
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isParent:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1322
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    if-eqz v0, :cond_23d

    const-string/jumbo v0, "parentAdmin:"

    .line 1323
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1324
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1325
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1326
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1329
    :cond_23d
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    if-eqz v0, :cond_24c

    const-string/jumbo v0, "mCrossProfileCalendarPackages="

    .line 1330
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1331
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_24c
    const-string/jumbo v0, "mCrossProfilePackages="

    .line 1334
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1335
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v0, "mSuspendPersonalApps="

    .line 1337
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1338
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSuspendPersonalApps:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "mProfileMaximumTimeOffMillis="

    .line 1340
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1341
    iget-wide v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v0, "mProfileOffDeadline="

    .line 1343
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1344
    iget-wide v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileOffDeadline:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v0, "mAlwaysOnVpnPackage="

    .line 1346
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1347
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "mAlwaysOnVpnLockdown="

    .line 1349
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1350
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnLockdown:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "mPreferentialNetworkServiceEnabled="

    .line 1352
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1353
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceEnabled:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "mCommonCriteriaMode="

    .line 1355
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1356
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCommonCriteriaMode:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "mPasswordComplexity="

    .line 1358
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1359
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "mNearbyNotificationStreamingPolicy="

    .line 1361
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1362
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyNotificationStreamingPolicy:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "mNearbyAppStreamingPolicy="

    .line 1364
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1365
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyAppStreamingPolicy:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1367
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d8

    const-string/jumbo v0, "mOrganizationId="

    .line 1368
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1369
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1372
    :cond_2d8
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2eb

    const-string/jumbo v0, "mEnrollmentSpecificId="

    .line 1373
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1374
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_2eb
    const-string/jumbo v0, "mAdminCanGrantSensorsPermissions="

    .line 1377
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1378
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAdminCanGrantSensorsPermissions:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "mUsbDataSignaling="

    .line 1380
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1381
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mUsbDataSignalingEnabled:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "mWifiMinimumSecurityLevel="

    .line 1383
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1384
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiMinimumSecurityLevel:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1386
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    if-eqz v0, :cond_330

    .line 1387
    invoke-virtual {v0}, Landroid/app/admin/WifiSsidPolicy;->getPolicyType()I

    move-result v0

    if-nez v0, :cond_31d

    const-string/jumbo v0, "mSsidAllowlist="

    .line 1388
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_323

    :cond_31d
    const-string/jumbo v0, "mSsidDenylist="

    .line 1390
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1392
    :goto_323
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    invoke-virtual {v0}, Landroid/app/admin/WifiSsidPolicy;->getSsids()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->ssidsToStrings(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1395
    :cond_330
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    if-eqz v0, :cond_345

    const-string/jumbo v0, "mFactoryResetProtectionPolicy:"

    .line 1396
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1398
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    invoke-virtual {v0, p1}, Landroid/app/admin/FactoryResetProtectionPolicy;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1399
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1402
    :cond_345
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    if-eqz v0, :cond_36b

    const-string/jumbo v0, "mPreferentialNetworkServiceConfigs:"

    .line 1403
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1405
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_358
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_368

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/PreferentialNetworkServiceConfig;

    .line 1406
    invoke-virtual {v1, p1}, Landroid/app/admin/PreferentialNetworkServiceConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    goto :goto_358

    .line 1408
    :cond_368
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_36b
    const-string v0, "eas it policies:"

    .line 1411
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1412
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "simplePasswordEnabled="

    .line 1413
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1414
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->simplePasswordEnabled:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "allowStorageCard="

    .line 1415
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1416
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowStorageCard:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "allowWifi="

    .line 1417
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1418
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowWifi:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "allowTextMessaging="

    .line 1419
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1420
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowTextMessaging:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "allowPOPIMAPEmail="

    .line 1421
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1422
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowPOPIMAPEmail:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "allowBrowser="

    .line 1423
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1424
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowBrowser:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "allowInternetSharing="

    .line 1425
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1426
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowInternetSharing:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "allowBluetoothMode="

    .line 1427
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1428
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowBluetoothMode:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "allowDesktopSync="

    .line 1429
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1430
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowDesktopSync:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "allowIrDA="

    .line 1431
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1432
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowIrDA:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "requireStorageCardEncryption="

    .line 1433
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1434
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireStorageCardEncryption:Z

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1435
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public ensureUserRestrictions()Landroid/os/Bundle;
    .registers 2

    .line 1110
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 1111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    .line 1113
    :cond_b
    iget-object p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getAllTrustAgentInfos(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/util/ArrayMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1041
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1043
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1044
    :cond_9
    :goto_9
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4b

    const/4 v4, 0x3

    if-ne v2, v4, :cond_19

    .line 1045
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_4b

    :cond_19
    if-eq v2, v4, :cond_9

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1f

    goto :goto_9

    .line 1049
    :cond_1f
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "component"

    .line 1050
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    const/4 v2, 0x0

    const-string/jumbo v3, "value"

    .line 1051
    invoke-interface {p1, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1052
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/ActiveAdmin;->getTrustAgentInfo(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;

    move-result-object v3

    .line 1053
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_3b
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    aput-object v2, v4, v3

    const-string v2, "DevicePolicyManager"

    const-string v3, "Unknown tag under %s: %s"

    .line 1055
    invoke-static {v2, v3, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_4b
    return-object v1
.end method

.method public getEffectiveRestrictions()Landroid/os/Bundle;
    .registers 3

    .line 1154
    new-instance v0, Landroid/os/Bundle;

    .line 1155
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->ensureUserRestrictions()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->removeDeprecatedRestrictions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1154
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->addSyntheticRestrictions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getGlobalUserRestrictions(I)Landroid/os/Bundle;
    .registers 3

    .line 1164
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->getEffectiveRestrictions()Landroid/os/Bundle;

    move-result-object p0

    new-instance v0, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {p0, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->filterRestrictions(Landroid/os/Bundle;Ljava/util/function/Predicate;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getLocalUserRestrictions(I)Landroid/os/Bundle;
    .registers 3

    .line 1159
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->getEffectiveRestrictions()Landroid/os/Bundle;

    move-result-object p0

    new-instance v0, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p0, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->filterRestrictions(Landroid/os/Bundle;Ljava/util/function/Predicate;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getParentActiveAdmin()Lcom/android/server/devicepolicy/ActiveAdmin;
    .registers 4

    .line 362
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isParent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 364
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    if-nez v0, :cond_14

    .line 365
    new-instance v0, Lcom/android/server/devicepolicy/ActiveAdmin;

    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v0, v2, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 367
    :cond_14
    iget-object p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    return-object p0
.end method

.method public final getPreferentialNetworkServiceConfigs(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/admin/PreferentialNetworkServiceConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1084
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result p0

    .line 1086
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    :cond_9
    :goto_9
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_44

    const/4 v3, 0x3

    if-ne v1, v3, :cond_19

    .line 1088
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, p0, :cond_44

    :cond_19
    if-eq v1, v3, :cond_9

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1f

    goto :goto_9

    .line 1092
    :cond_1f
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "preferential_network_service_config"

    .line 1093
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1095
    invoke-static {p1, p2}, Landroid/app/admin/PreferentialNetworkServiceConfig;->getPreferentialNetworkServiceConfig(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v1

    .line 1097
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_34
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    aput-object v1, v3, v2

    const-string v1, "DevicePolicyManager"

    const-string v2, "Unknown tag under %s: %s"

    .line 1099
    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_44
    return-object v0
.end method

.method public final getTrustAgentInfo(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1063
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result p0

    .line 1065
    new-instance v0, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;-><init>(Landroid/os/PersistableBundle;)V

    .line 1066
    :cond_a
    :goto_a
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_44

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1a

    .line 1067
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, p0, :cond_44

    :cond_1a
    if-eq v1, v3, :cond_a

    const/4 v3, 0x4

    if-ne v1, v3, :cond_20

    goto :goto_a

    .line 1071
    :cond_20
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "trust-agent-component-options"

    .line 1072
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1073
    invoke-static {p1}, Landroid/os/PersistableBundle;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    goto :goto_a

    :cond_34
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    aput-object v1, v3, v2

    const-string v1, "DevicePolicyManager"

    const-string v2, "Unknown tag under %s: %s"

    .line 1075
    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    :cond_44
    return-object v0
.end method

.method public getUid()I
    .registers 1

    .line 375
    iget-object p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .registers 1

    .line 379
    iget-object p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public hasParentActiveAdmin()Z
    .registers 1

    .line 371
    iget-object p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hasUserRestrictions()Z
    .registers 1

    .line 1106
    iget-object p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result p0

    if-lez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final readAttributeValues(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1021
    invoke-interface {p3}, Ljava/util/Collection;->clear()V

    .line 1022
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result p0

    .line 1024
    :cond_7
    :goto_7
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_43

    const/4 v2, 0x3

    if-ne v0, v2, :cond_17

    .line 1025
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, p0, :cond_43

    :cond_17
    if-eq v0, v2, :cond_7

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1d

    goto :goto_7

    .line 1029
    :cond_1d
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1030
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    const/4 v0, 0x0

    const-string/jumbo v1, "value"

    .line 1031
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_33
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    aput-object v0, v2, v1

    const-string v0, "DevicePolicyManager"

    const-string v1, "Expected tag %s but found %s"

    .line 1033
    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_43
    return-void
.end method

.method public readFromXml(Landroid/util/TypedXmlPullParser;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 727
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 729
    :cond_4
    :goto_4
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_652

    const/4 v3, 0x3

    if-ne v1, v3, :cond_14

    .line 730
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_652

    :cond_14
    if-eq v1, v3, :cond_4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1a

    goto :goto_4

    .line 734
    :cond_1a
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "policies"

    .line 735
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "DevicePolicyManager"

    if-eqz v4, :cond_36

    if-eqz p2, :cond_4

    const-string v1, "Overriding device admin policies from XML."

    .line 737
    invoke-static {v5, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1, p1}, Landroid/app/admin/DeviceAdminInfo;->readPoliciesFromXml(Landroid/util/TypedXmlPullParser;)V

    goto :goto_4

    :cond_36
    const-string/jumbo v4, "password-quality"

    .line 740
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v6, "value"

    const/4 v7, 0x0

    if-eqz v4, :cond_4c

    .line 741
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/admin/PasswordPolicy;->quality:I

    goto :goto_4

    :cond_4c
    const-string/jumbo v4, "min-password-length"

    .line 742
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 743
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/admin/PasswordPolicy;->length:I

    goto :goto_4

    :cond_5e
    const-string/jumbo v4, "password-history-length"

    .line 744
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 745
    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    goto :goto_4

    :cond_6e
    const-string/jumbo v4, "min-password-uppercase"

    .line 746
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 747
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/admin/PasswordPolicy;->upperCase:I

    goto :goto_4

    :cond_80
    const-string/jumbo v4, "min-password-lowercase"

    .line 748
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_93

    .line 749
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    goto/16 :goto_4

    :cond_93
    const-string/jumbo v4, "min-password-letters"

    .line 750
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 751
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/admin/PasswordPolicy;->letters:I

    goto/16 :goto_4

    :cond_a6
    const-string/jumbo v4, "min-password-numeric"

    .line 752
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 753
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/admin/PasswordPolicy;->numeric:I

    goto/16 :goto_4

    :cond_b9
    const-string/jumbo v4, "min-password-symbols"

    .line 754
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 755
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/admin/PasswordPolicy;->symbols:I

    goto/16 :goto_4

    :cond_cc
    const-string/jumbo v4, "min-password-nonletter"

    .line 756
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_df

    .line 757
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    goto/16 :goto_4

    :cond_df
    const-string/jumbo v4, "max-time-to-unlock"

    .line 758
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f0

    .line 759
    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumTimeToUnlock:J

    goto/16 :goto_4

    :cond_f0
    const-string/jumbo v4, "strong-auth-unlock-timeout"

    .line 760
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_101

    .line 761
    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->strongAuthUnlockTimeout:J

    goto/16 :goto_4

    :cond_101
    const-string/jumbo v4, "max-failed-password-wipe"

    .line 762
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_112

    .line 763
    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumFailedPasswordsForWipe:I

    goto/16 :goto_4

    :cond_112
    const-string/jumbo v4, "specifies-global-proxy"

    .line 764
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v8, 0x0

    if-eqz v4, :cond_124

    .line 765
    invoke-interface {p1, v7, v6, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->specifiesGlobalProxy:Z

    goto/16 :goto_4

    :cond_124
    const-string/jumbo v4, "global-proxy-spec"

    .line 766
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_135

    .line 768
    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    goto/16 :goto_4

    :cond_135
    const-string/jumbo v4, "global-proxy-exclusion-list"

    .line 769
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_146

    .line 771
    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    goto/16 :goto_4

    :cond_146
    const-string/jumbo v4, "password-expiration-timeout"

    .line 772
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_157

    .line 773
    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    goto/16 :goto_4

    :cond_157
    const-string/jumbo v4, "password-expiration-date"

    .line 774
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_168

    .line 775
    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    goto/16 :goto_4

    :cond_168
    const-string v4, "encryption-requested"

    .line 776
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_178

    .line 777
    invoke-interface {p1, v7, v6, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->encryptionRequested:Z

    goto/16 :goto_4

    :cond_178
    const-string/jumbo v4, "test-only-admin"

    .line 778
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_189

    .line 779
    invoke-interface {p1, v7, v6, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    goto/16 :goto_4

    :cond_189
    const-string v4, "disable-camera"

    .line 780
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_199

    .line 781
    invoke-interface {p1, v7, v6, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    goto/16 :goto_4

    :cond_199
    const-string v4, "disable-caller-id"

    .line 782
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a9

    .line 783
    invoke-interface {p1, v7, v6, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCallerId:Z

    goto/16 :goto_4

    :cond_1a9
    const-string v4, "disable-contacts-search"

    .line 784
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b9

    .line 785
    invoke-interface {p1, v7, v6, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableContactsSearch:Z

    goto/16 :goto_4

    :cond_1b9
    const-string v4, "disable-bt-contacts-sharing"

    .line 786
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c9

    .line 788
    invoke-interface {p1, v7, v6, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableBluetoothContactSharing:Z

    goto/16 :goto_4

    :cond_1c9
    const-string v4, "disable-screen-capture"

    .line 789
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d9

    .line 790
    invoke-interface {p1, v7, v6, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableScreenCapture:Z

    goto/16 :goto_4

    :cond_1d9
    const-string/jumbo v4, "require_auto_time"

    .line 791
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ea

    .line 792
    invoke-interface {p1, v7, v6, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    goto/16 :goto_4

    :cond_1ea
    const-string v4, "force_ephemeral_users"

    .line 793
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1fa

    .line 794
    invoke-interface {p1, v7, v6, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->forceEphemeralUsers:Z

    goto/16 :goto_4

    :cond_1fa
    const-string/jumbo v4, "is_network_logging_enabled"

    .line 795
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21d

    .line 796
    invoke-interface {p1, v7, v6, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    const-string/jumbo v1, "last-notification"

    .line 797
    invoke-interface {p1, v7, v1}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    const-string/jumbo v1, "num-notifications"

    .line 799
    invoke-interface {p1, v7, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->numNetworkLoggingNotifications:I

    goto/16 :goto_4

    :cond_21d
    const-string v4, "disable-keyguard-features"

    .line 801
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22d

    .line 802
    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disabledKeyguardFeatures:I

    goto/16 :goto_4

    :cond_22d
    const-string v4, "disable-account-management"

    .line 803
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23e

    .line 804
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    const-string v2, "account-type"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readAttributeValues(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_4

    :cond_23e
    const-string/jumbo v4, "manage-trust-agent-features"

    .line 806
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24f

    .line 807
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->getAllTrustAgentInfos(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    goto/16 :goto_4

    :cond_24f
    const-string v4, "cross-profile-widget-providers"

    .line 808
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_266

    .line 809
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    const-string/jumbo v2, "provider"

    .line 810
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readAttributeValues(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_4

    :cond_266
    const-string/jumbo v4, "permitted-accessiblity-services"

    .line 811
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_277

    .line 812
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    goto/16 :goto_4

    :cond_277
    const-string/jumbo v4, "permitted-imes"

    .line 813
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_288

    .line 814
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    goto/16 :goto_4

    :cond_288
    const-string/jumbo v4, "permitted-notification-listeners"

    .line 815
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_299

    .line 816
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    goto/16 :goto_4

    :cond_299
    const-string/jumbo v4, "keep-uninstalled-packages"

    .line 817
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2aa

    .line 818
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    goto/16 :goto_4

    :cond_2aa
    const-string/jumbo v4, "metered_data_disabled_packages"

    .line 819
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2bb

    .line 820
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    goto/16 :goto_4

    :cond_2bb
    const-string/jumbo v4, "protected_packages"

    .line 821
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2cc

    .line 822
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    goto/16 :goto_4

    :cond_2cc
    const-string/jumbo v4, "user-restrictions"

    .line 823
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2dd

    .line 824
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Landroid/util/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    goto/16 :goto_4

    :cond_2dd
    const-string v4, "default-enabled-user-restrictions"

    .line 825
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2ef

    .line 826
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    const-string/jumbo v2, "restriction"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readAttributeValues(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_4

    :cond_2ef
    const-string/jumbo v4, "short-support-message"

    .line 828
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30d

    .line 829
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    if-ne v1, v3, :cond_306

    .line 831
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    goto/16 :goto_4

    :cond_306
    const-string v1, "Missing text when loading short support message"

    .line 833
    invoke-static {v5, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_30d
    const-string/jumbo v4, "long-support-message"

    .line 835
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32b

    .line 836
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    if-ne v1, v3, :cond_324

    .line 838
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    goto/16 :goto_4

    :cond_324
    const-string v1, "Missing text when loading long support message"

    .line 840
    invoke-static {v5, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_32b
    const-string/jumbo v4, "parent-admin"

    .line 842
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_348

    .line 843
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isParent:Z

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 844
    new-instance v1, Lcom/android/server/devicepolicy/ActiveAdmin;

    iget-object v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v1, v3, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 845
    invoke-virtual {v1, p1, p2}, Lcom/android/server/devicepolicy/ActiveAdmin;->readFromXml(Landroid/util/TypedXmlPullParser;Z)V

    goto/16 :goto_4

    :cond_348
    const-string/jumbo v4, "organization-color"

    .line 846
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_359

    .line 847
    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationColor:I

    goto/16 :goto_4

    :cond_359
    const-string/jumbo v4, "organization-name"

    .line 848
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_377

    .line 849
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    if-ne v1, v3, :cond_370

    .line 851
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    goto/16 :goto_4

    :cond_370
    const-string v1, "Missing text when loading organization name"

    .line 853
    invoke-static {v5, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_377
    const-string/jumbo v4, "is_logout_enabled"

    .line 855
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_388

    .line 856
    invoke-interface {p1, v7, v6, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isLogoutEnabled:Z

    goto/16 :goto_4

    :cond_388
    const-string/jumbo v4, "start_user_session_message"

    .line 857
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a6

    .line 858
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    if-ne v1, v3, :cond_39f

    .line 860
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    goto/16 :goto_4

    :cond_39f
    const-string v1, "Missing text when loading start session message"

    .line 862
    invoke-static {v5, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_3a6
    const-string v4, "end_user_session_message"

    .line 864
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c3

    .line 865
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    if-ne v1, v3, :cond_3bc

    .line 867
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    goto/16 :goto_4

    :cond_3bc
    const-string v1, "Missing text when loading end session message"

    .line 869
    invoke-static {v5, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_3c3
    const-string v4, "cross-profile-calendar-packages"

    .line 871
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d3

    .line 872
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    goto/16 :goto_4

    :cond_3d3
    const-string v4, "cross-profile-calendar-packages-null"

    .line 873
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3df

    .line 874
    iput-object v7, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    goto/16 :goto_4

    :cond_3df
    const-string v4, "cross-profile-packages"

    .line 875
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3ef

    .line 876
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    goto/16 :goto_4

    :cond_3ef
    const-string v4, "factory_reset_protection_policy"

    .line 877
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3ff

    .line 878
    invoke-static {p1}, Landroid/app/admin/FactoryResetProtectionPolicy;->readFromXml(Landroid/util/TypedXmlPullParser;)Landroid/app/admin/FactoryResetProtectionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    goto/16 :goto_4

    :cond_3ff
    const-string/jumbo v4, "suspend-personal-apps"

    .line 880
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_410

    .line 881
    invoke-interface {p1, v7, v6, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSuspendPersonalApps:Z

    goto/16 :goto_4

    :cond_410
    const-string/jumbo v4, "profile-max-time-off"

    .line 882
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_421

    .line 884
    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    goto/16 :goto_4

    :cond_421
    const-string/jumbo v4, "profile-off-deadline"

    .line 885
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_432

    .line 887
    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileOffDeadline:J

    goto/16 :goto_4

    :cond_432
    const-string/jumbo v4, "vpn-package"

    .line 888
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_443

    .line 889
    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    goto/16 :goto_4

    :cond_443
    const-string/jumbo v4, "vpn-lockdown"

    .line 890
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_454

    .line 891
    invoke-interface {p1, v7, v6, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnLockdown:Z

    goto/16 :goto_4

    :cond_454
    const-string/jumbo v4, "preferential-network-service-enabled"

    .line 892
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_480

    .line 893
    invoke-interface {p1, v7, v6, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceEnabled:Z

    if-eqz v1, :cond_4

    .line 896
    new-instance v1, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-direct {v1}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;-><init>()V

    .line 898
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceEnabled:Z

    invoke-virtual {v1, v3}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setEnabled(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 899
    invoke-virtual {v1, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setNetworkId(I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 900
    invoke-virtual {v1}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v1

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    .line 901
    iput-boolean v8, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceEnabled:Z

    goto/16 :goto_4

    :cond_480
    const-string v4, "common-criteria-mode"

    .line 903
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_490

    .line 904
    invoke-interface {p1, v7, v6, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCommonCriteriaMode:Z

    goto/16 :goto_4

    :cond_490
    const-string/jumbo v4, "password-complexity"

    .line 905
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a1

    .line 906
    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    goto/16 :goto_4

    :cond_4a1
    const-string/jumbo v4, "nearby-notification-streaming-policy"

    .line 907
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b2

    .line 908
    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyNotificationStreamingPolicy:I

    goto/16 :goto_4

    :cond_4b2
    const-string/jumbo v4, "nearby-app-streaming-policy"

    .line 909
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c3

    .line 910
    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyAppStreamingPolicy:I

    goto/16 :goto_4

    :cond_4c3
    const-string/jumbo v4, "organization-id"

    .line 911
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e1

    .line 912
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    if-ne v1, v3, :cond_4da

    .line 914
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    goto/16 :goto_4

    :cond_4da
    const-string v1, "Missing Organization ID."

    .line 916
    invoke-static {v5, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_4e1
    const-string v4, "enrollment-specific-id"

    .line 918
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4fe

    .line 919
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    if-ne v1, v3, :cond_4f7

    .line 921
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    goto/16 :goto_4

    :cond_4f7
    const-string v1, "Missing Enrollment-specific ID."

    .line 923
    invoke-static {v5, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_4fe
    const-string v3, "admin-can-grant-sensors-permissions"

    .line 925
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50e

    .line 926
    invoke-interface {p1, v7, v6, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAdminCanGrantSensorsPermissions:Z

    goto/16 :goto_4

    :cond_50e
    const-string/jumbo v3, "usb-data-signaling"

    .line 928
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51f

    .line 929
    invoke-interface {p1, v7, v6, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mUsbDataSignalingEnabled:Z

    goto/16 :goto_4

    :cond_51f
    const-string/jumbo v3, "wifi-min-security"

    .line 931
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_530

    .line 932
    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiMinimumSecurityLevel:I

    goto/16 :goto_4

    :cond_530
    const-string/jumbo v3, "ssid-allowlist"

    .line 933
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "ssid"

    if-eqz v3, :cond_54e

    .line 934
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readWifiSsids(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 935
    new-instance v2, Landroid/app/admin/WifiSsidPolicy;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v8, v3}, Landroid/app/admin/WifiSsidPolicy;-><init>(ILjava/util/Set;)V

    iput-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    goto/16 :goto_4

    :cond_54e
    const-string/jumbo v3, "ssid-denylist"

    .line 937
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_569

    .line 938
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readWifiSsids(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 939
    new-instance v3, Landroid/app/admin/WifiSsidPolicy;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v3, v2, v4}, Landroid/app/admin/WifiSsidPolicy;-><init>(ILjava/util/Set;)V

    iput-object v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    goto/16 :goto_4

    :cond_569
    const-string/jumbo v3, "preferential_network_service_configs"

    .line 941
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_580

    .line 943
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->getPreferentialNetworkServiceConfigs(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 944
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 945
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    goto/16 :goto_4

    :cond_580
    const-string/jumbo v3, "password-recoverable"

    .line 949
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_591

    .line 950
    invoke-interface {p1, v7, v6, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordRecoverable:Z

    goto/16 :goto_4

    :cond_591
    const-string/jumbo v3, "simplepassword-enabled"

    .line 951
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a2

    .line 952
    invoke-interface {p1, v7, v6, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->simplePasswordEnabled:Z

    goto/16 :goto_4

    :cond_5a2
    const-string v3, "allow-storage-card"

    .line 953
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b2

    .line 954
    invoke-interface {p1, v7, v6, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowStorageCard:Z

    goto/16 :goto_4

    :cond_5b2
    const-string v3, "allow-wifi"

    .line 955
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c2

    .line 956
    invoke-interface {p1, v7, v6, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowWifi:Z

    goto/16 :goto_4

    :cond_5c2
    const-string v3, "allow-text-messaging"

    .line 957
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d2

    .line 958
    invoke-interface {p1, v7, v6, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowTextMessaging:Z

    goto/16 :goto_4

    :cond_5d2
    const-string v3, "allow-popimap-email"

    .line 959
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e2

    .line 960
    invoke-interface {p1, v7, v6, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowPOPIMAPEmail:Z

    goto/16 :goto_4

    :cond_5e2
    const-string v3, "allow-browser"

    .line 961
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f2

    .line 962
    invoke-interface {p1, v7, v6, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowBrowser:Z

    goto/16 :goto_4

    :cond_5f2
    const-string v3, "allow-internet-sharing"

    .line 963
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_602

    .line 964
    invoke-interface {p1, v7, v6, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowInternetSharing:Z

    goto/16 :goto_4

    :cond_602
    const-string v3, "allow-bluetooth-mode"

    .line 965
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_613

    const/4 v1, 0x2

    .line 966
    invoke-interface {p1, v7, v6, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowBluetoothMode:I

    goto/16 :goto_4

    :cond_613
    const-string v3, "allow-Desktop-Sync"

    .line 967
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_623

    .line 968
    invoke-interface {p1, v7, v6, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowDesktopSync:Z

    goto/16 :goto_4

    :cond_623
    const-string v3, "allow-IrDA"

    .line 969
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_633

    .line 970
    invoke-interface {p1, v7, v6, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowIrDA:Z

    goto/16 :goto_4

    :cond_633
    const-string/jumbo v3, "require-StorageCard-Encryption"

    .line 971
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_644

    .line 972
    invoke-interface {p1, v7, v6, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireStorageCardEncryption:Z

    goto/16 :goto_4

    :cond_644
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v8

    const-string v1, "Unknown admin tag: %s"

    .line 977
    invoke-static {v5, v1, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 978
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    :cond_652
    return-void
.end method

.method public final readPackageList(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 995
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 996
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 998
    :cond_9
    :goto_9
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_54

    const/4 v3, 0x3

    if-ne v1, v3, :cond_19

    .line 999
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_54

    :cond_19
    if-eq v1, v3, :cond_9

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1f

    goto :goto_9

    .line 1003
    :cond_1f
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "item"

    .line 1004
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "DevicePolicyManager"

    if-eqz v3, :cond_47

    const/4 v3, 0x0

    const-string/jumbo v6, "value"

    .line 1005
    invoke-interface {p1, v3, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 1007
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_3d
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    const-string v1, "Package name missing under %s"

    .line 1009
    invoke-static {v5, v1, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_47
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    aput-object v1, v3, v2

    const-string v1, "Unknown tag under %s: "

    .line 1012
    invoke-static {v5, v1, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_54
    return-object p0
.end method

.method public final readWifiSsids(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiSsid;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 985
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 986
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->readAttributeValues(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    .line 987
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda1;-><init>()V

    .line 988
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 989
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final ssidsToStrings(Ljava/util/Set;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/wifi/WifiSsid;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 666
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda2;-><init>()V

    .line 667
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 668
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public transfer(Landroid/app/admin/DeviceAdminInfo;)V
    .registers 3

    .line 1117
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->hasParentActiveAdmin()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1118
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    iput-object p1, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 1120
    :cond_a
    iput-object p1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    return-void
.end method

.method public writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 695
    invoke-interface {p1, p0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "value"

    .line 696
    invoke-interface {p1, p0, v0, p3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 697
    invoke-interface {p1, p0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 702
    invoke-interface {p1, p0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "value"

    .line 703
    invoke-interface {p1, p0, v0, p3, p4}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 704
    invoke-interface {p1, p0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 688
    invoke-interface {p1, p0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "value"

    .line 689
    invoke-interface {p1, p0, v0, p3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 690
    invoke-interface {p1, p0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 709
    invoke-interface {p1, p0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "value"

    .line 710
    invoke-interface {p1, p0, v0, p3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 711
    invoke-interface {p1, p0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeAttributeValuesToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 716
    invoke-interface {p1, p0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 717
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_8
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 718
    invoke-interface {p1, p0, p3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "value"

    .line 719
    invoke-interface {p1, p0, v1, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 720
    invoke-interface {p1, p0, p3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8

    .line 722
    :cond_21
    invoke-interface {p1, p0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writePackageListToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_3

    return-void

    :cond_3
    const-string/jumbo v0, "item"

    .line 683
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public writeTextToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 672
    invoke-interface {p1, p0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 673
    invoke-interface {p1, p3}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 674
    invoke-interface {p1, p0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeToXml(Landroid/util/TypedXmlSerializer;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "policies"

    .line 384
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 385
    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2, p1}, Landroid/app/admin/DeviceAdminInfo;->writePoliciesToXml(Landroid/util/TypedXmlSerializer;)V

    .line 386
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 387
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->quality:I

    const/4 v2, 0x1

    if-eqz v1, :cond_70

    const-string/jumbo v3, "password-quality"

    .line 388
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 390
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->length:I

    if-eqz v1, :cond_28

    const-string/jumbo v3, "min-password-length"

    .line 391
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 394
    :cond_28
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->upperCase:I

    if-eqz v1, :cond_34

    const-string/jumbo v3, "min-password-uppercase"

    .line 395
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 398
    :cond_34
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    if-eqz v1, :cond_40

    const-string/jumbo v3, "min-password-lowercase"

    .line 399
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 402
    :cond_40
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->letters:I

    if-eq v1, v2, :cond_4c

    const-string/jumbo v3, "min-password-letters"

    .line 403
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 406
    :cond_4c
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->numeric:I

    if-eq v1, v2, :cond_58

    const-string/jumbo v3, "min-password-numeric"

    .line 407
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 410
    :cond_58
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->symbols:I

    if-eq v1, v2, :cond_64

    const-string/jumbo v3, "min-password-symbols"

    .line 411
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 414
    :cond_64
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    if-lez v1, :cond_70

    const-string/jumbo v3, "min-password-nonletter"

    .line 415
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 419
    :cond_70
    iget v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    if-eqz v1, :cond_7a

    const-string/jumbo v3, "password-history-length"

    .line 420
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 423
    :cond_7a
    iget-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumTimeToUnlock:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_88

    const-string/jumbo v1, "max-time-to-unlock"

    .line 424
    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 427
    :cond_88
    iget-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->strongAuthUnlockTimeout:J

    const-wide/32 v7, 0xf731400

    cmp-long v1, v3, v7

    if-eqz v1, :cond_97

    const-string/jumbo v1, "strong-auth-unlock-timeout"

    .line 428
    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 431
    :cond_97
    iget v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eqz v1, :cond_a1

    const-string/jumbo v3, "max-failed-password-wipe"

    .line 432
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 435
    :cond_a1
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v1, :cond_bf

    const-string/jumbo v3, "specifies-global-proxy"

    .line 436
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 438
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    if-eqz v1, :cond_b5

    const-string/jumbo v3, "global-proxy-spec"

    .line 439
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_b5
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    if-eqz v1, :cond_bf

    const-string/jumbo v3, "global-proxy-exclusion-list"

    .line 442
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_bf
    iget-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_cb

    const-string/jumbo v1, "password-expiration-timeout"

    .line 447
    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 450
    :cond_cb
    iget-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_d7

    const-string/jumbo v1, "password-expiration-date"

    .line 451
    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 454
    :cond_d7
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->encryptionRequested:Z

    if-eqz v1, :cond_e0

    const-string v3, "encryption-requested"

    .line 455
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 458
    :cond_e0
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    if-eqz v1, :cond_ea

    const-string/jumbo v3, "test-only-admin"

    .line 459
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 462
    :cond_ea
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    if-eqz v1, :cond_f3

    const-string v3, "disable-camera"

    .line 463
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 466
    :cond_f3
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCallerId:Z

    if-eqz v1, :cond_fc

    const-string v3, "disable-caller-id"

    .line 467
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 470
    :cond_fc
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableContactsSearch:Z

    if-eqz v1, :cond_105

    const-string v3, "disable-contacts-search"

    .line 471
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 474
    :cond_105
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableBluetoothContactSharing:Z

    if-nez v1, :cond_10e

    const-string v3, "disable-bt-contacts-sharing"

    .line 475
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 478
    :cond_10e
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableScreenCapture:Z

    if-eqz v1, :cond_117

    const-string v3, "disable-screen-capture"

    .line 479
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 482
    :cond_117
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    if-eqz v1, :cond_121

    const-string/jumbo v3, "require_auto_time"

    .line 483
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 486
    :cond_121
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->forceEphemeralUsers:Z

    if-eqz v1, :cond_12a

    const-string v3, "force_ephemeral_users"

    .line 487
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 490
    :cond_12a
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    const-string/jumbo v3, "value"

    if-eqz v1, :cond_14f

    const-string/jumbo v1, "is_network_logging_enabled"

    .line 491
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 492
    iget-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    invoke-interface {p1, v0, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 493
    iget v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->numNetworkLoggingNotifications:I

    const-string/jumbo v7, "num-notifications"

    invoke-interface {p1, v0, v7, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 495
    iget-wide v7, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    const-string/jumbo v4, "last-notification"

    invoke-interface {p1, v0, v4, v7, v8}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 497
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 499
    :cond_14f
    iget v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disabledKeyguardFeatures:I

    if-eqz v1, :cond_158

    const-string v4, "disable-keyguard-features"

    .line 500
    invoke-virtual {p0, p1, v4, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 503
    :cond_158
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_169

    .line 504
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    const-string v4, "disable-account-management"

    const-string v7, "account-type"

    invoke-virtual {p0, p1, v4, v7, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 508
    :cond_169
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c6

    .line 509
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    const-string/jumbo v4, "manage-trust-agent-features"

    .line 510
    invoke-interface {p1, v0, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 511
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_181
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 512
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;

    const-string v9, "component"

    .line 513
    invoke-interface {p1, v0, v9}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 514
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {p1, v0, v3, v7}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 515
    iget-object v7, v8, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    if-eqz v7, :cond_1bf

    const-string/jumbo v7, "trust-agent-component-options"

    .line 516
    invoke-interface {p1, v0, v7}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 518
    :try_start_1ab
    iget-object v8, v8, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    invoke-virtual {v8, p1}, Landroid/os/PersistableBundle;->saveToXml(Landroid/util/TypedXmlSerializer;)V
    :try_end_1b0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1ab .. :try_end_1b0} :catch_1b1

    goto :goto_1bc

    :catch_1b1
    move-exception v8

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "DevicePolicyManager"

    const-string v12, "Failed to save TrustAgent options"

    .line 520
    invoke-static {v11, v8, v12, v10}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    :goto_1bc
    invoke-interface {p1, v0, v7}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 524
    :cond_1bf
    invoke-interface {p1, v0, v9}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_181

    .line 526
    :cond_1c3
    invoke-interface {p1, v0, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 528
    :cond_1c6
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-eqz v1, :cond_1da

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1da

    .line 529
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    const-string v3, "cross-profile-widget-providers"

    const-string/jumbo v4, "provider"

    invoke-virtual {p0, p1, v3, v4, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 533
    :cond_1da
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    const-string/jumbo v3, "permitted-accessiblity-services"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 535
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    const-string/jumbo v3, "permitted-imes"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 536
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    const-string/jumbo v3, "permitted-notification-listeners"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 538
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    const-string/jumbo v3, "keep-uninstalled-packages"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 539
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    const-string/jumbo v3, "metered_data_disabled_packages"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 540
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    const-string/jumbo v3, "protected_packages"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 541
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->hasUserRestrictions()Z

    move-result v1

    if-eqz v1, :cond_218

    .line 542
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    const-string/jumbo v3, "user-restrictions"

    invoke-static {p1, v1, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Landroid/util/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 545
    :cond_218
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22a

    .line 546
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    const-string v3, "default-enabled-user-restrictions"

    const-string/jumbo v4, "restriction"

    invoke-virtual {p0, p1, v3, v4, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 550
    :cond_22a
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23e

    .line 551
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "short-support-message"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_23e
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_252

    .line 554
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "long-support-message"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :cond_252
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    if-eqz v1, :cond_264

    const-string/jumbo v1, "parent-admin"

    .line 557
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 558
    iget-object v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    invoke-virtual {v3, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeToXml(Landroid/util/TypedXmlSerializer;)V

    .line 559
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 561
    :cond_264
    iget v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationColor:I

    sget v3, Lcom/android/server/devicepolicy/ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    if-eq v1, v3, :cond_270

    const-string/jumbo v3, "organization-color"

    .line 562
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 564
    :cond_270
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    if-eqz v1, :cond_27a

    const-string/jumbo v3, "organization-name"

    .line 565
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :cond_27a
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isLogoutEnabled:Z

    if-eqz v1, :cond_284

    const-string/jumbo v3, "is_logout_enabled"

    .line 568
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 570
    :cond_284
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    if-eqz v1, :cond_28e

    const-string/jumbo v3, "start_user_session_message"

    .line 571
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :cond_28e
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    if-eqz v1, :cond_297

    const-string v3, "end_user_session_message"

    .line 574
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_297
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    if-nez v1, :cond_2a4

    const-string v1, "cross-profile-calendar-packages-null"

    .line 577
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 578
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2a9

    :cond_2a4
    const-string v3, "cross-profile-calendar-packages"

    .line 580
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 583
    :goto_2a9
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    const-string v3, "cross-profile-packages"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 584
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    if-eqz v1, :cond_2c1

    const-string v1, "factory_reset_protection_policy"

    .line 585
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 586
    iget-object v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    invoke-virtual {v3, p1}, Landroid/app/admin/FactoryResetProtectionPolicy;->writeToXml(Landroid/util/TypedXmlSerializer;)V

    .line 587
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 589
    :cond_2c1
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSuspendPersonalApps:Z

    if-eqz v1, :cond_2cb

    const-string/jumbo v3, "suspend-personal-apps"

    .line 590
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 592
    :cond_2cb
    iget-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2d7

    const-string/jumbo v1, "profile-max-time-off"

    .line 593
    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 596
    :cond_2d7
    iget-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2e5

    .line 597
    iget-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileOffDeadline:J

    const-string/jumbo v1, "profile-off-deadline"

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 599
    :cond_2e5
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f5

    .line 600
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    const-string/jumbo v3, "vpn-package"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :cond_2f5
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnLockdown:Z

    if-eqz v1, :cond_2ff

    const-string/jumbo v3, "vpn-lockdown"

    .line 603
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 605
    :cond_2ff
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCommonCriteriaMode:Z

    if-eqz v1, :cond_308

    const-string v3, "common-criteria-mode"

    .line 606
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 609
    :cond_308
    iget v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    if-eqz v1, :cond_312

    const-string/jumbo v3, "password-complexity"

    .line 610
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 612
    :cond_312
    iget v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyNotificationStreamingPolicy:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_31d

    const-string/jumbo v4, "nearby-notification-streaming-policy"

    .line 613
    invoke-virtual {p0, p1, v4, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 616
    :cond_31d
    iget v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyAppStreamingPolicy:I

    if-eq v1, v3, :cond_327

    const-string/jumbo v3, "nearby-app-streaming-policy"

    .line 617
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 620
    :cond_327
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_337

    .line 621
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    const-string/jumbo v3, "organization-id"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_337
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_346

    .line 624
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    const-string v3, "enrollment-specific-id"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :cond_346
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAdminCanGrantSensorsPermissions:Z

    const-string v3, "admin-can-grant-sensors-permissions"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 628
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mUsbDataSignalingEnabled:Z

    if-eq v1, v2, :cond_357

    const-string/jumbo v3, "usb-data-signaling"

    .line 629
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 631
    :cond_357
    iget v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiMinimumSecurityLevel:I

    if-eqz v1, :cond_361

    const-string/jumbo v3, "wifi-min-security"

    .line 632
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 634
    :cond_361
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    if-eqz v1, :cond_38d

    .line 635
    invoke-virtual {v1}, Landroid/app/admin/WifiSsidPolicy;->getSsids()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->ssidsToStrings(Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    .line 636
    iget-object v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    invoke-virtual {v3}, Landroid/app/admin/WifiSsidPolicy;->getPolicyType()I

    move-result v3

    const-string/jumbo v4, "ssid"

    if-nez v3, :cond_37f

    const-string/jumbo v2, "ssid-allowlist"

    .line 637
    invoke-virtual {p0, p1, v2, v4, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_38d

    .line 638
    :cond_37f
    iget-object v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    invoke-virtual {v3}, Landroid/app/admin/WifiSsidPolicy;->getPolicyType()I

    move-result v3

    if-ne v3, v2, :cond_38d

    const-string/jumbo v2, "ssid-denylist"

    .line 639
    invoke-virtual {p0, p1, v2, v4, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 642
    :cond_38d
    :goto_38d
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b4

    const-string/jumbo v1, "preferential_network_service_configs"

    .line 643
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 644
    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3a1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/PreferentialNetworkServiceConfig;

    .line 645
    invoke-virtual {v3, p1}, Landroid/app/admin/PreferentialNetworkServiceConfig;->writeToXml(Landroid/util/TypedXmlSerializer;)V

    goto :goto_3a1

    .line 647
    :cond_3b1
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 650
    :cond_3b4
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordRecoverable:Z

    const-string/jumbo v1, "password-recoverable"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 651
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->simplePasswordEnabled:Z

    const-string/jumbo v1, "simplepassword-enabled"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 652
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowStorageCard:Z

    const-string v1, "allow-storage-card"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 653
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowWifi:Z

    const-string v1, "allow-wifi"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 654
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowTextMessaging:Z

    const-string v1, "allow-text-messaging"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 655
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowPOPIMAPEmail:Z

    const-string v1, "allow-popimap-email"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 656
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowBrowser:Z

    const-string v1, "allow-browser"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 657
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowInternetSharing:Z

    const-string v1, "allow-internet-sharing"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 658
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowBluetoothMode:I

    const-string v1, "allow-bluetooth-mode"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 659
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowDesktopSync:Z

    const-string v1, "allow-Desktop-Sync"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 660
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowIrDA:Z

    const-string v1, "allow-IrDA"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 661
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireStorageCardEncryption:Z

    const-string/jumbo v1, "require-StorageCard-Encryption"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    return-void
.end method
