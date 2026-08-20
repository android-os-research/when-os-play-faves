.class public final Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
.super Ljava/lang/Object;
.source "EnterpriseDeviceAdminInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;
    }
.end annotation


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist TAG:Ljava/lang/String; = "EnterpriseDeviceAdminInfo"

.field public static final greylist USES_POLICY_KNOX_ADVANCED_APP_MGMT:I = 0x50

.field public static final greylist USES_POLICY_KNOX_ADVANCED_APP_MGMT_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ADVANCED_APP_MGMT"

.field public static final greylist USES_POLICY_KNOX_ADVANCED_SECURITY:I = 0x51

.field public static final greylist USES_POLICY_KNOX_ADVANCED_SECURITY_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ADVANCED_SECURITY"

.field public static final greylist USES_POLICY_KNOX_APP_SEPARATION:I = 0x70

.field public static final greylist USES_POLICY_KNOX_APP_SEPARATION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_APP_SEPARATION"

.field public static final greylist USES_POLICY_KNOX_CAPTURE:I = 0x71

.field public static final greylist USES_POLICY_KNOX_CAPTURE_ADVANCED:I = 0x78

.field public static final greylist USES_POLICY_KNOX_CAPTURE_ADVANCED_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.SMART_SCAN_ADVANCED"

.field public static final greylist USES_POLICY_KNOX_CAPTURE_BASIC:I = 0x77

.field public static final greylist USES_POLICY_KNOX_CAPTURE_BASIC_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.SMART_SCAN_BASIC"

.field public static final greylist USES_POLICY_KNOX_CAPTURE_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.SMART_SCAN"

.field public static final greylist USES_POLICY_KNOX_CCM:I = 0x3d

.field public static final greylist USES_POLICY_KNOX_CCM_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_CCM,com.samsung.android.knox.permission.KNOX_CCM_KEYSTORE"

.field public static final greylist USES_POLICY_KNOX_CERTENROL:I = 0x42

.field public static final greylist USES_POLICY_KNOX_CERTENROL_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_CERTENROLL,com.samsung.android.knox.permission.KNOX_CERTIFICATE_ENROLLMENT"

.field public static final greylist USES_POLICY_KNOX_CERT_PROVISIONING:I = 0x4e

.field public static final greylist USES_POLICY_KNOX_CERT_PROVISIONING_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

.field public static final greylist USES_POLICY_KNOX_CLIPBOARD:I = 0x4f

.field public static final greylist USES_POLICY_KNOX_CLIPBOARD_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CLIPBOARD"

.field public static final greylist USES_POLICY_KNOX_CONTAINER_VPN:I = 0x37

.field public static final greylist USES_POLICY_KNOX_CONTAINER_VPN_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_VPN_CONTAINER"

.field public static final greylist USES_POLICY_KNOX_CRITICAL_COMMUNICATIONS:I = 0x6c

.field public static final greylist USES_POLICY_KNOX_CRITICAL_COMMUNICATIONS_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CRITICAL_COMMUNICATIONS"

.field public static final greylist USES_POLICY_KNOX_CUSTOM_DEX:I = 0x55

.field public static final greylist USES_POLICY_KNOX_CUSTOM_DEX_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CUSTOM_DEX"

.field public static final greylist USES_POLICY_KNOX_CUSTOM_PROKIOSK:I = 0x46

.field public static final greylist USES_POLICY_KNOX_CUSTOM_PROKIOSK_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CUSTOM_PROKIOSK"

.field public static final greylist USES_POLICY_KNOX_CUSTOM_SEALEDMODE:I = 0x41

.field public static final greylist USES_POLICY_KNOX_CUSTOM_SEALEDMODE_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.CUSTOM_SEALEDMODE,com.samsung.android.knox.permission.KNOX_CUSTOM_SEALEDMODE"

.field public static final greylist USES_POLICY_KNOX_CUSTOM_SETTING:I = 0x3f

.field public static final greylist USES_POLICY_KNOX_CUSTOM_SETTING_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.CUSTOM_SETTING,com.samsung.android.knox.permission.KNOX_CUSTOM_SETTING"

.field public static final greylist USES_POLICY_KNOX_CUSTOM_SYSTEM:I = 0x40

.field public static final greylist USES_POLICY_KNOX_CUSTOM_SYSTEM_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM,com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

.field public static final greylist USES_POLICY_KNOX_DEACTIVATE_LICENSE:I = 0x6f

.field public static final greylist USES_POLICY_KNOX_DEACTIVATE_LICENSE_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_DEACTIVATE_LICENSE"

.field public static final greylist USES_POLICY_KNOX_DEVICE_CONFIGURATION:I = 0x6d

.field public static final greylist USES_POLICY_KNOX_DEVICE_CONFIGURATION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DEVICE_CONFIGURATION"

.field public static final greylist USES_POLICY_KNOX_DEX:I = 0x54

.field public static final greylist USES_POLICY_KNOX_DEX_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DEX"

.field public static final greylist USES_POLICY_KNOX_DUAL_DAR:I = 0x57

.field public static final greylist USES_POLICY_KNOX_DUAL_DAR_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DUAL_DAR"

.field public static final greylist USES_POLICY_KNOX_EBILLING_NOMDM:I = 0x53

.field public static final greylist USES_POLICY_KNOX_EBILLING_NOMDM_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_EBILLING_NOMDM"

.field public static final greylist USES_POLICY_KNOX_ENHANCED_ATTESTATION:I = 0x6b

.field public static final greylist USES_POLICY_KNOX_ENHANCED_ATTESTATION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ENHANCED_ATTESTATION"

.field public static final greylist USES_POLICY_KNOX_ENTERPRISE_BILLING:I = 0x44

.field public static final greylist USES_POLICY_KNOX_ENTERPRISE_BILLING_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_EBILLING"

.field public static final greylist USES_POLICY_KNOX_GENERIC_VPN:I = 0x36

.field public static final greylist USES_POLICY_KNOX_GENERIC_VPN_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_VPN_GENERIC"

.field public static final greylist USES_POLICY_KNOX_HDM:I = 0x6e

.field public static final greylist USES_POLICY_KNOX_HDM_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_HDM"

.field public static final greylist USES_POLICY_KNOX_KEYSTORE:I = 0x3e

.field public static final greylist USES_POLICY_KNOX_KEYSTORE_PER_APP:I = 0x4b

.field public static final greylist USES_POLICY_KNOX_KEYSTORE_PER_APP_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

.field public static final greylist USES_POLICY_KNOX_KEYSTORE_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_KEYSTORE,com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

.field public static final greylist USES_POLICY_KNOX_MPOS:I = 0x79

.field public static final greylist USES_POLICY_KNOX_MPOS_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_MPOS"

.field public static final greylist USES_POLICY_KNOX_NDA_AI:I = 0x76

.field public static final greylist USES_POLICY_KNOX_NDA_AI_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NDA_AI"

.field public static final greylist USES_POLICY_KNOX_NDA_DATA_ANALYTICS:I = 0x75

.field public static final greylist USES_POLICY_KNOX_NDA_DATA_ANALYTICS_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NDA_DATA_ANALYTICS"

.field public static final greylist USES_POLICY_KNOX_NDA_DEVICE_SETTINGS:I = 0x74

.field public static final greylist USES_POLICY_KNOX_NDA_DEVICE_SETTINGS_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NDA_DEVICE_SETTINGS"

.field public static final greylist USES_POLICY_KNOX_NDA_PERIPHERAL:I = 0x73

.field public static final greylist USES_POLICY_KNOX_NDA_PERIPHERAL_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NDA_PERIPHERAL"

.field public static final greylist USES_POLICY_KNOX_NPA:I = 0x52

.field public static final greylist USES_POLICY_KNOX_NPA_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NPA"

.field public static final greylist USES_POLICY_KNOX_RESTRICTION_PERM:I = 0x3c

.field public static final greylist USES_POLICY_KNOX_RESTRICTION_PERM_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

.field public static final greylist USES_POLICY_KNOX_SDP:I = 0x47

.field public static final greylist USES_POLICY_KNOX_SDP_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SENSITIVE_DATA_PROTECTION"

.field public static final greylist USES_POLICY_KNOX_SEAMS_PERM:I = 0x3a

.field public static final greylist USES_POLICY_KNOX_SEAMS_PERM_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_SEAMS,com.samsung.android.knox.permission.KNOX_SEAMS_MGMT"

.field public static final greylist USES_POLICY_KNOX_SEAMS_SEPOLICY:I = 0x72

.field public static final greylist USES_POLICY_KNOX_SEAMS_SEPOLICY_PERM:I = 0x3b

.field public static final greylist USES_POLICY_KNOX_SEAMS_SEPOLICY_PERM_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SEAMS_SEPOLICY_INTERNAL"

.field public static final greylist USES_POLICY_KNOX_SEAMS_SEPOLICY_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_SEAMS_SEPOLICY"

.field public static final greylist USES_POLICY_KNOX_SECURE_TIMER:I = 0x58

.field public static final greylist USES_POLICY_KNOX_SECURE_TIMER_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SECURE_TIMER"

.field public static final greylist USES_POLICY_KNOX_SIM_RESTRICTION:I = 0x59

.field public static final greylist USES_POLICY_KNOX_SIM_RESTRICTION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SIM_RESTRICTION"

.field public static final greylist USES_POLICY_KNOX_UCM_MGMT:I = 0x56

.field public static final greylist USES_POLICY_KNOX_UCM_MGMT_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

.field public static final greylist USES_POLICY_KNOX_UCM_PRIVILEGED:I = 0x4c

.field public static final greylist USES_POLICY_KNOX_UCM_PRIVILEGED_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_PRIVILEGED_MGMT"

.field public static final greylist USES_POLICY_KNOX_UCSM_ESE:I = 0x48

.field public static final greylist USES_POLICY_KNOX_UCSM_ESE_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_ESE_MGMT"

.field public static final greylist USES_POLICY_KNOX_UCSM_OTHER:I = 0x49

.field public static final greylist USES_POLICY_KNOX_UCSM_OTHER_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_OTHER_MGMT"

.field public static final greylist USES_POLICY_KNOX_UCS_PLUGIN:I = 0x4a

.field public static final greylist USES_POLICY_KNOX_UCS_PLUGIN_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_PLUGIN_SERVICE"

.field public static final greylist USES_POLICY_MDM_APN_SETTINGS:I = 0x22

.field public static final greylist USES_POLICY_MDM_APN_SETTINGS_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_APN"

.field public static final greylist USES_POLICY_MDM_APPLICATION:I = 0x16

.field public static final greylist USES_POLICY_MDM_APPLICATION_PERMISSION:I = 0x5a

.field public static final greylist USES_POLICY_MDM_APPLICATION_PERMISSION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_APP_PERMISSION_MGMT"

.field public static final greylist USES_POLICY_MDM_APPLICATION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_APP_MGMT"

.field public static final greylist USES_POLICY_MDM_AUDIT_LOG_PERMISSION:I = 0x2b

.field public static final greylist USES_POLICY_MDM_AUDIT_LOG_PERMISSION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

.field public static final greylist USES_POLICY_MDM_BLUETOOTH:I = 0x17

.field public static final greylist USES_POLICY_MDM_BLUETOOTH_SECURE_MODE:I = 0x33

.field public static final greylist USES_POLICY_MDM_BLUETOOTH_SECURE_MODE_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_BLUETOOTH_SECUREMODE"

.field public static final greylist USES_POLICY_MDM_BLUETOOTH_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_BLUETOOTH"

.field public static final greylist USES_POLICY_MDM_BROWSER_PROXY:I = 0x35

.field public static final greylist USES_POLICY_MDM_BROWSER_PROXY_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_BROWSER_PROXY"

.field public static final greylist USES_POLICY_MDM_BROWSER_SETTINGS:I = 0x24

.field public static final greylist USES_POLICY_MDM_BROWSER_SETTINGS_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS"

.field public static final greylist USES_POLICY_MDM_CERTIFICATE_PERMISSION:I = 0x2a

.field public static final greylist USES_POLICY_MDM_CERTIFICATE_PERMISSION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

.field public static final greylist USES_POLICY_MDM_DATE_TIME:I = 0x25

.field public static final greylist USES_POLICY_MDM_DATE_TIME_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DATE_TIME"

.field public static final greylist USES_POLICY_MDM_DEVICE_INVENTORY:I = 0x18

.field public static final greylist USES_POLICY_MDM_DEVICE_INVENTORY_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_INVENTORY"

.field public static final greylist USES_POLICY_MDM_DUAL_SIM:I = 0x2f

.field public static final greylist USES_POLICY_MDM_DUAL_SIM_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DUAL_SIM"

.field public static final greylist USES_POLICY_MDM_EMAIL_ACCOUNT:I = 0x20

.field public static final greylist USES_POLICY_MDM_EMAIL_ACCOUNT_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_EMAIL"

.field public static final greylist USES_POLICY_MDM_ENTERPRISE_CONTAINER:I = 0x30

.field public static final greylist USES_POLICY_MDM_ENTERPRISE_CONTAINER_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CONTAINER"

.field public static final greylist USES_POLICY_MDM_ENTERPRISE_DEVICE_ADMIN:I = 0x27

.field public static final greylist USES_POLICY_MDM_ENTERPRISE_DEVICE_ADMIN_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ENTERPRISE_DEVICE_ADMIN"

.field public static final greylist USES_POLICY_MDM_EXCHANGE_ACCOUNT:I = 0x19

.field public static final greylist USES_POLICY_MDM_EXCHANGE_ACCOUNT_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_EXCHANGE"

.field public static final greylist USES_POLICY_MDM_FIREWALL:I = 0x26

.field public static final greylist USES_POLICY_MDM_FIREWALL_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_FIREWALL"

.field public static final greylist USES_POLICY_MDM_GEOFENCING:I = 0x2d

.field public static final greylist USES_POLICY_MDM_GEOFENCING_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_GEOFENCING"

.field public static final greylist USES_POLICY_MDM_GLOBALPROXY:I = 0x4d

.field public static final greylist USES_POLICY_MDM_GLOBALPROXY_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_GLOBALPROXY"

.field public static final greylist USES_POLICY_MDM_HARDWARE_CONTROL:I = 0x1d

.field public static final greylist USES_POLICY_MDM_HARDWARE_CONTROL_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_HW_CONTROL"

.field public static final greylist USES_POLICY_MDM_KIOSK_MODE:I = 0x29

.field public static final greylist USES_POLICY_MDM_KIOSK_MODE_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

.field public static final greylist USES_POLICY_MDM_KNOX_ACTIVATE_DEVICE_PERMISSIONS:I = 0x38

.field public static final greylist USES_POLICY_MDM_KNOX_ACTIVATE_DEVICE_PERMISSIONS_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS_INTERNAL"

.field public static final greylist USES_POLICY_MDM_KNOX_MOBILE_THREAT_DEFENSE:I = 0x6a

.field public static final greylist USES_POLICY_MDM_KNOX_MOBILE_THREAT_DEFENSE_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_MOBILE_THREAT_DEFENSE"

.field public static final greylist USES_POLICY_MDM_LDAP_SETTINGS:I = 0x2c

.field public static final greylist USES_POLICY_MDM_LDAP_SETTINGS_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_LDAP"

.field public static final greylist USES_POLICY_MDM_LICENSE_LOG:I = 0x31

.field public static final greylist USES_POLICY_MDM_LICENSE_LOG_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_LICENSE_LOG"

.field public static final greylist USES_POLICY_MDM_LOCATION:I = 0x1f

.field public static final greylist USES_POLICY_MDM_LOCATION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_LOCATION"

.field public static final greylist USES_POLICY_MDM_LOCKSCREEN:I = 0x2e

.field public static final greylist USES_POLICY_MDM_LOCKSCREEN_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_LOCKSCREEN"

.field public static final greylist USES_POLICY_MDM_MULTI_USER_MGMT:I = 0x32

.field public static final greylist USES_POLICY_MDM_MULTI_USER_MGMT_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_MULTI_USER_MGMT"

.field public static final greylist USES_POLICY_MDM_PHONE_RESTRICTION:I = 0x23

.field public static final greylist USES_POLICY_MDM_PHONE_RESTRICTION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_PHONE_RESTRICTION"

.field public static final greylist USES_POLICY_MDM_RCP_SYNC_MGMT:I = 0x39

.field public static final greylist USES_POLICY_MDM_RCP_SYNC_MGMT_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_RCP_SYNC_MGMT,com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

.field public static final greylist USES_POLICY_MDM_REMOTE_CONTROL:I = 0x28

.field public static final greylist USES_POLICY_MDM_REMOTE_CONTROL_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

.field public static final greylist USES_POLICY_MDM_RESTRICTION:I = 0x1e

.field public static final greylist USES_POLICY_MDM_RESTRICTION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

.field public static final greylist USES_POLICY_MDM_ROAMING:I = 0x1a

.field public static final greylist USES_POLICY_MDM_ROAMING_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ROAMING"

.field public static final greylist USES_POLICY_MDM_SECURITY:I = 0x1c

.field public static final greylist USES_POLICY_MDM_SECURITY_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SECURITY"

.field public static final greylist USES_POLICY_MDM_SMARTCARD:I = 0x5b

.field public static final greylist USES_POLICY_MDM_SMARTCARD_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SMARTCARD"

.field public static final greylist USES_POLICY_MDM_SSO:I = 0x43

.field public static final greylist USES_POLICY_MDM_SSO_TAG:Ljava/lang/String; = "com.sec.enterprise.mdm.permission.MDM_SSO,com.samsung.android.knox.permission.KNOX_SSO"

.field public static final greylist USES_POLICY_MDM_VPN:I = 0x21

.field public static final greylist USES_POLICY_MDM_VPN_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_VPN"

.field public static final greylist USES_POLICY_MDM_WIFI:I = 0x1b

.field public static final greylist USES_POLICY_MDM_WIFI_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_WIFI"

.field public static greylist sKnownPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static greylist sNewToOldPermissionMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static greylist sOldToNewPermissionMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static greylist sPoliciesDisplayOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static greylist sRevKnownPolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist timaversion:Z


# instance fields
.field public greylist mAuthorized:Z

.field public greylist mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

.field public greylist mIsPseudoAdmin:Z

.field public greylist mLicenseExpiryTime:J

.field public final greylist mReceiver:Landroid/content/pm/ResolveInfo;

.field public greylist mRequestedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist mUsesPolicies:Ljava/util/BitSet;

.field public greylist mVisible:Z


# direct methods
.method public static constructor greylist <clinit>()V
    .registers 13

    const-string v0, "ro.config.timaversion"

    const-string v1, "0"

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->timaversion:Z

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    .line 6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    .line 7
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x16

    const-string v2, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    const v3, 0x1040a43

    const v4, 0x104091b

    .line 8
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 9
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x17

    const-string v2, "com.samsung.android.knox.permission.KNOX_BLUETOOTH"

    const v3, 0x1040a46

    const v4, 0x104091e

    .line 10
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 11
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x18

    const-string v2, "com.samsung.android.knox.permission.KNOX_INVENTORY"

    const v3, 0x1040a52

    const v4, 0x104092a

    .line 12
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 13
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x19

    const-string v2, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    const v3, 0x1040a5d

    const v4, 0x1040935

    .line 14
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 15
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x1a

    const-string v2, "com.samsung.android.knox.permission.KNOX_ROAMING"

    const v3, 0x1040a72

    const v4, 0x104094e

    .line 16
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 17
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x1b

    const-string v2, "com.samsung.android.knox.permission.KNOX_WIFI"

    const v3, 0x1040a84

    const v4, 0x1040960

    .line 18
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 19
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x1c

    const-string v2, "com.samsung.android.knox.permission.KNOX_SECURITY"

    const v3, 0x1040a79

    const v4, 0x1040955

    .line 20
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 21
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x1d

    const-string v2, "com.samsung.android.knox.permission.KNOX_HW_CONTROL"

    const v3, 0x1040a61

    const v4, 0x1040939

    .line 22
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 23
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x1e

    const-string v2, "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    const v3, 0x1040a71

    const v4, 0x104094d

    .line 24
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 25
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x1f

    const-string v2, "com.samsung.android.knox.permission.KNOX_LOCATION"

    const v3, 0x1040a6b

    const v4, 0x1040947

    .line 26
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 27
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x20

    const-string v2, "com.samsung.android.knox.permission.KNOX_EMAIL"

    const v3, 0x1040a56

    const v4, 0x104092e

    .line 28
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 29
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x21

    const-string v2, "com.samsung.android.knox.permission.KNOX_VPN"

    const v3, 0x1040a83

    const v4, 0x104095f

    .line 30
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 31
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x22

    const-string v2, "com.samsung.android.knox.permission.KNOX_APN"

    const v3, 0x1040a41

    const v4, 0x1040919

    .line 32
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 33
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x23

    const-string v2, "com.samsung.android.knox.permission.KNOX_PHONE_RESTRICTION"

    const v3, 0x1040a6d

    const v4, 0x1040949

    .line 34
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 35
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x24

    const-string v2, "com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS"

    const v5, 0x1040a49

    const v6, 0x1040921

    .line 36
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 37
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x35

    const-string v2, "com.samsung.android.knox.permission.KNOX_BROWSER_PROXY"

    const v5, 0x1040a48

    const v6, 0x1040920

    .line 38
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 39
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x25

    const-string v2, "com.samsung.android.knox.permission.KNOX_DATE_TIME"

    const v5, 0x1040a50

    const v6, 0x1040928

    .line 40
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 41
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x36

    const-string v2, "com.samsung.android.knox.permission.KNOX_VPN_GENERIC"

    const v5, 0x1040a33

    const v6, 0x104090b

    .line 42
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 43
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x37

    const-string v2, "com.samsung.android.knox.permission.KNOX_VPN_CONTAINER"

    const v5, 0x1040a2c

    const v6, 0x1040904

    .line 44
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 45
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x26

    const-string v2, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    const v5, 0x1040a5e

    const v6, 0x1040936

    .line 46
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 47
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x27

    const-string v2, "com.samsung.android.knox.permission.KNOX_ENTERPRISE_DEVICE_ADMIN"

    const v5, 0x1040a57

    const v6, 0x104092f

    .line 48
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 49
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x28

    const-string v2, "com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

    const v5, 0x1040a70

    const v6, 0x104094c

    .line 50
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 51
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x29

    const-string v2, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    const v5, 0x1040a64

    const v6, 0x104093c

    .line 52
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 53
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x2a

    const-string v2, "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    const v5, 0x1040a4d

    const v6, 0x1040925

    .line 54
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 55
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x2b

    const-string v2, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    const v5, 0x1040a45

    const v6, 0x104091d

    .line 56
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 57
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x30

    const-string v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    const v5, 0x1040a58

    const v6, 0x1040930

    .line 58
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 59
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x2c

    const-string v2, "com.samsung.android.knox.permission.KNOX_LDAP"

    const v5, 0x1040a69

    const v6, 0x1040941

    .line 60
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 61
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x2e

    const-string v2, "com.samsung.android.knox.permission.KNOX_LOCKSCREEN"

    const v5, 0x1040a6a

    const v6, 0x1040942

    .line 62
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 63
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x2f

    const-string v2, "com.samsung.android.knox.permission.KNOX_DUAL_SIM"

    const v5, 0x1040a54

    const v6, 0x104092c

    .line 64
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 65
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x43

    const-string v2, "com.sec.enterprise.mdm.permission.MDM_SSO,com.samsung.android.knox.permission.KNOX_SSO"

    const v5, 0x1040a75

    const v6, 0x1040951

    .line 66
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 67
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x2d

    const-string v2, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    const v5, 0x1040a5f

    const v6, 0x1040937

    .line 68
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 69
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x31

    const-string v2, "com.samsung.android.knox.permission.KNOX_LICENSE_LOG"

    const v5, 0x1040a55

    const v6, 0x104092d

    .line 70
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 71
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x32

    const-string v2, "com.samsung.android.knox.permission.KNOX_MULTI_USER_MGMT"

    const v5, 0x1040a6c

    const v6, 0x1040948

    .line 72
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 73
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x33

    const-string v2, "com.samsung.android.knox.permission.KNOX_BLUETOOTH_SECUREMODE"

    const v5, 0x1040a47

    const v6, 0x104091f

    .line 74
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 75
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x6b

    const-string v2, "com.samsung.android.knox.permission.KNOX_ENHANCED_ATTESTATION"

    const v5, 0x1040a17

    const v6, 0x10408ef

    .line 76
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 77
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x6a

    const-string v2, "com.samsung.android.knox.permission.KNOX_MOBILE_THREAT_DEFENSE"

    const v5, 0x1040a7d

    const v6, 0x1040959

    .line 78
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 79
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x6c

    const-string v2, "com.samsung.android.knox.permission.KNOX_CRITICAL_COMMUNICATIONS"

    const v5, 0x1040a11

    const v6, 0x10408e9

    .line 80
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 81
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x39

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_RCP_SYNC_MGMT,com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

    const v5, 0x1040a67

    const v6, 0x104093f

    .line 82
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 83
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x38

    const-string v2, "com.samsung.android.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS_INTERNAL"

    const v5, 0x1040a65

    const v6, 0x104093d

    .line 84
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 85
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x6f

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_DEACTIVATE_LICENSE"

    const v5, 0x1040a51

    const v6, 0x1040929

    .line 86
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 87
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x3a

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_SEAMS,com.samsung.android.knox.permission.KNOX_SEAMS_MGMT"

    const v5, 0x1040a77

    const v6, 0x1040953

    .line 88
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 89
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x3b

    const-string v2, "com.samsung.android.knox.permission.KNOX_SEAMS_SEPOLICY_INTERNAL"

    const v5, 0x1040a78

    const v6, 0x1040954

    .line 90
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 91
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x3c

    const-string v2, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    const v7, 0x1040a68

    const v8, 0x1040940

    .line 92
    invoke-static {v1, v2, v7, v8, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 93
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x3f

    const-string v2, "com.sec.enterprise.knox.permission.CUSTOM_SETTING,com.samsung.android.knox.permission.KNOX_CUSTOM_SETTING"

    const v7, 0x1040a2f

    const v8, 0x1040907

    .line 94
    invoke-static {v1, v2, v7, v8, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 95
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x40

    const-string v2, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM,com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    const v7, 0x1040a30

    const v8, 0x1040908

    .line 96
    invoke-static {v1, v2, v7, v8, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 97
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x41

    const-string v2, "com.sec.enterprise.knox.permission.CUSTOM_SEALEDMODE,com.samsung.android.knox.permission.KNOX_CUSTOM_SEALEDMODE"

    const v9, 0x1040a2d

    const v10, 0x1040905

    .line 98
    invoke-static {v1, v2, v9, v10, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 99
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x46

    const-string v2, "com.samsung.android.knox.permission.KNOX_CUSTOM_PROKIOSK"

    .line 100
    invoke-static {v1, v2, v9, v10, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 101
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x44

    const-string v2, "com.samsung.android.knox.permission.KNOX_EBILLING"

    const v9, 0x1040a18

    const v10, 0x10408f0

    .line 102
    invoke-static {v1, v2, v9, v10, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 103
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x3d

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_CCM,com.samsung.android.knox.permission.KNOX_CCM_KEYSTORE"

    const v11, 0x1040a4b

    const v12, 0x1040923

    .line 104
    invoke-static {v1, v2, v11, v12, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 105
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x48

    const-string v2, "com.samsung.android.knox.permission.KNOX_UCM_ESE_MGMT"

    const v11, 0x1040a81

    const v12, 0x104095d

    .line 106
    invoke-static {v1, v2, v11, v12, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 107
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x49

    const-string v2, "com.samsung.android.knox.permission.KNOX_UCM_OTHER_MGMT"

    const v11, 0x1040a82

    const v12, 0x104095e

    .line 108
    invoke-static {v1, v2, v11, v12, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 109
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x4a

    const-string v2, "com.samsung.android.knox.permission.KNOX_UCM_PLUGIN_SERVICE"

    const v11, 0x1040acf

    const v12, 0x10409aa

    .line 110
    invoke-static {v1, v2, v11, v12, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 111
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x4c

    const-string v2, "com.samsung.android.knox.permission.KNOX_UCM_PRIVILEGED_MGMT"

    const v11, 0x1040a80

    const v12, 0x104095c

    .line 112
    invoke-static {v1, v2, v11, v12, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 113
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x3e

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_KEYSTORE,com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

    const v11, 0x1040a62

    const v12, 0x104093a

    .line 114
    invoke-static {v1, v2, v11, v12, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 115
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x4b

    const-string v2, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

    const v11, 0x1040a63

    const v12, 0x104093b

    .line 116
    invoke-static {v1, v2, v11, v12, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 117
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x42

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_CERTENROLL,com.samsung.android.knox.permission.KNOX_CERTIFICATE_ENROLLMENT"

    const v11, 0x1040a76

    const v12, 0x1040952

    .line 118
    invoke-static {v1, v2, v11, v12, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 119
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x47

    const-string v2, "com.samsung.android.knox.permission.KNOX_SENSITIVE_DATA_PROTECTION"

    const v11, 0x1040a73

    const v12, 0x104094f

    .line 120
    invoke-static {v1, v2, v11, v12, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 121
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x4d

    const-string v2, "com.samsung.android.knox.permission.KNOX_GLOBALPROXY"

    const v11, 0x1040a60

    const v12, 0x1040938

    .line 122
    invoke-static {v1, v2, v11, v12, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 123
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x4e

    const-string v2, "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

    const v11, 0x1040a4c

    const v12, 0x1040924

    .line 124
    invoke-static {v1, v2, v11, v12, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 125
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x4f

    const-string v2, "com.samsung.android.knox.permission.KNOX_CLIPBOARD"

    const v11, 0x1040a4e

    const v12, 0x1040926

    .line 126
    invoke-static {v1, v2, v11, v12, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 127
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x50

    const-string v2, "com.samsung.android.knox.permission.KNOX_ADVANCED_APP_MGMT"

    const v11, 0x1040a29

    const v12, 0x1040901

    .line 128
    invoke-static {v1, v2, v11, v12, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 129
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x51

    const-string v2, "com.samsung.android.knox.permission.KNOX_ADVANCED_SECURITY"

    const v11, 0x1040a2a

    const v12, 0x1040902

    .line 130
    invoke-static {v1, v2, v11, v12, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 131
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x52

    const-string v2, "com.samsung.android.knox.permission.KNOX_NPA"

    const v11, 0x1040a36

    const v12, 0x104090e

    .line 132
    invoke-static {v1, v2, v11, v12, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 133
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x53

    const-string v2, "com.samsung.android.knox.permission.KNOX_EBILLING_NOMDM"

    .line 134
    invoke-static {v1, v2, v9, v10, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 135
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x54

    const-string v2, "com.samsung.android.knox.permission.KNOX_DEX"

    const v9, 0x1040a53

    const v10, 0x104092b

    .line 136
    invoke-static {v1, v2, v9, v10, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 137
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x55

    const-string v2, "com.samsung.android.knox.permission.KNOX_CUSTOM_DEX"

    .line 138
    invoke-static {v1, v2, v7, v8, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 139
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x56

    const-string v2, "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

    const v7, 0x1040ace

    const v8, 0x10409a9

    .line 140
    invoke-static {v1, v2, v7, v8, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 141
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x57

    const-string v2, "com.samsung.android.knox.permission.KNOX_DUAL_DAR"

    const v7, 0x1040a32

    const v8, 0x104090a

    .line 142
    invoke-static {v1, v2, v7, v8, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 143
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x59

    const-string v2, "com.samsung.android.knox.permission.KNOX_SIM_RESTRICTION"

    .line 144
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 145
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x5a

    const-string v2, "com.samsung.android.knox.permission.KNOX_APP_PERMISSION_MGMT"

    const v3, 0x1040a44

    const v4, 0x104091c

    .line 146
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 147
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x5b

    const-string v2, "com.samsung.android.knox.permission.KNOX_SMARTCARD"

    const v3, 0x1040a7c

    const v4, 0x1040958

    .line 148
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 149
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x6e

    const-string v2, "com.samsung.android.knox.permission.KNOX_HDM"

    const v3, 0x1040a34

    const v4, 0x104090c

    .line 150
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 151
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x70

    const-string v2, "com.samsung.android.knox.permission.KNOX_APP_SEPARATION"

    const v3, 0x1040a28

    const v4, 0x1040900

    .line 152
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 153
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x71

    const-string v2, "com.samsung.android.knox.permission.SMART_SCAN"

    const v3, 0x1040a2b

    const v4, 0x1040903

    .line 154
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 155
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x72

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_SEAMS_SEPOLICY"

    .line 156
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 157
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x6d

    const-string v2, "com.samsung.android.knox.permission.KNOX_DEVICE_CONFIGURATION"

    const v5, 0x1040a31

    const v6, 0x1040909

    .line 158
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 159
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x73

    const-string v2, "com.samsung.android.knox.permission.KNOX_NDA_PERIPHERAL"

    const v5, 0x1040a91

    const v6, 0x104096d

    .line 160
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 161
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x74

    const-string v2, "com.samsung.android.knox.permission.KNOX_NDA_DEVICE_SETTINGS"

    const v5, 0x1040a14

    const v6, 0x10408ec

    .line 162
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 163
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x75

    const-string v2, "com.samsung.android.knox.permission.KNOX_NDA_DATA_ANALYTICS"

    const v5, 0x1040a13

    const v6, 0x10408eb

    .line 164
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 165
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x76

    const-string v2, "com.samsung.android.knox.permission.KNOX_NDA_AI"

    const v5, 0x1040a39

    const v6, 0x1040911

    .line 166
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 167
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x77

    const-string v2, "com.samsung.android.knox.permission.SMART_SCAN_BASIC"

    .line 168
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 169
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x78

    const-string v2, "com.samsung.android.knox.permission.SMART_SCAN_ADVANCED"

    .line 170
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 171
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x79

    const-string v2, "com.samsung.android.knox.permission.KNOX_MPOS"

    const v3, 0x1040a35

    const v4, 0x104090d

    .line 172
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    const/4 v0, 0x0

    move v1, v0

    .line 173
    :goto_4e8
    sget-object v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_530

    .line 174
    sget-object v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    .line 175
    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    iget v4, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 176
    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    iget v5, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v2, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_52d

    .line 178
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_52d

    .line 179
    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    aget-object v4, v2, v0

    const/4 v5, 0x1

    aget-object v6, v2, v5

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    aget-object v4, v2, v5

    aget-object v2, v2, v0

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e8

    .line 181
    :cond_530
    new-instance v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 3
    new-instance v0, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v0, p1, p2}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 4
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    .line 5
    iput-object p2, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 6
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.android.email"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_29

    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->parseRequestedPermissions(Landroid/content/Context;)Ljava/util/List;

    :cond_29
    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 10
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 11
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_22

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mIsPseudoAdmin:Z

    return-void
.end method

.method public constructor greylist <init>(Z)V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 15
    iput-boolean p1, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mIsPseudoAdmin:Z

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    return-void
.end method


# virtual methods
.method public final whitelist describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final greylist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 5

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1
    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    const-string v1, "Receiver:"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p2, "  "

    .line 31
    .line 32
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
.end method

.method public final greylist getActivityInfo()Landroid/content/pm/ActivityInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 1
    .line 2
    if-eqz p0, :cond_9

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    goto :goto_a

    .line 9
    :cond_9
    const/4 p0, 0x0

    .line 10
    :goto_a
    return-object p0
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
.end method

.method public final greylist getComponent()Landroid/content/ComponentName;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 1
    .line 2
    if-eqz p0, :cond_9

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    goto :goto_a

    .line 9
    :cond_9
    const/4 p0, 0x0

    .line 10
    :goto_a
    return-object p0
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
.end method

.method public final greylist getLicenseExpiry()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mLicenseExpiryTime:J

    .line 1
    .line 2
    return-wide v0
    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
.end method

.method public final greylist getPackageName()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 1
    .line 2
    if-eqz p0, :cond_9

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    goto :goto_b

    .line 9
    :cond_9
    const-string p0, "NonExist"

    .line 10
    .line 11
    :goto_b
    return-object p0
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
.end method

.method public final greylist getReceiver()Landroid/content/pm/ResolveInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 1
    .line 2
    return-object p0
    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
.end method

.method public final greylist getReceiverName()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 1
    .line 2
    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getReceiverName()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
.end method

.method public final greylist getRequestedPermissions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 1
    .line 2
    return-object p0
    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
.end method

.method public final greylist getTagForPolicy(I)Ljava/lang/String;
    .registers 4

    .line 0
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 1
    .line 2
    const/4 v0, 0x0

    .line 3
    if-nez p0, :cond_6

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_6
    const/16 v1, 0x16

    .line 7
    .line 8
    if-ge p1, v1, :cond_f

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_f
    sget-object p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_22

    .line 22
    .line 23
    sget-object p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_22
    return-object v0
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
.end method

.method public final greylist getUsedPolicies()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance v0, Ljava/util/ArrayList;

    .line 1
    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-ge v3, v4, :cond_3e

    .line 18
    .line 19
    new-instance v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    check-cast v5, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 26
    .line 27
    iget v5, v5, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 34
    .line 35
    iget-object v6, v6, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    check-cast v7, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 42
    .line 43
    iget v7, v7, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    check-cast v8, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 50
    .line 51
    iget v8, v8, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->description:I

    .line 52
    .line 53
    invoke-direct {v4, v5, v6, v7, v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_d

    .line 62
    :cond_3e
    :goto_3e
    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-ge v2, v1, :cond_5c

    .line 69
    .line 70
    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    .line 77
    .line 78
    iget v3, v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    .line 79
    .line 80
    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_59

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    :cond_59
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_3e

    .line 92
    :cond_5c
    return-object v0
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
.end method

.method public final greylist isAuthorized()Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mAuthorized:Z

    .line 1
    .line 2
    return p0
    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
.end method

.method public final greylist isProxy()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final greylist isPseudo()Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mIsPseudoAdmin:Z

    .line 1
    .line 2
    return p0
    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
.end method

.method public final greylist isVisible()Z
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 1
    .line 2
    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->isVisible()Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
.end method

.method public final greylist loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 1
    .line 2
    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
.end method

.method public final greylist loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 1
    .line 2
    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
.end method

.method public final greylist loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 1
    .line 2
    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
.end method

.method public final greylist parseRequestedPermissions(Landroid/content/Context;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "EnterpriseDeviceAdminInfo"

    const-string v1, ","

    .line 1
    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    const/4 v3, 0x0

    .line 2
    :try_start_d
    new-instance v4, Landroid/content/res/AssetManager;

    invoke-direct {v4}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_36

    .line 3
    :try_start_12
    invoke-virtual {v4, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1f

    const-string v6, "AndroidManifest.xml"

    .line 4
    invoke-virtual {v4, v5, v6}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    goto :goto_4d

    .line 5
    :cond_1f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed adding asset path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_33} :catch_34

    goto :goto_4c

    :catch_34
    move-exception v5

    goto :goto_38

    :catch_36
    move-exception v5

    move-object v4, v3

    .line 6
    :goto_38
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to read AndroidManifest.xml of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4c
    move-object v2, v3

    :goto_4d
    if-nez v2, :cond_55

    if-eqz v4, :cond_54

    .line 7
    invoke-virtual {v4}, Landroid/content/res/AssetManager;->close()V

    :cond_54
    return-object v3

    .line 8
    :cond_55
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 9
    invoke-virtual {v5}, Landroid/util/DisplayMetrics;->setToDefaults()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 10
    :try_start_5f
    new-instance v8, Landroid/content/res/Resources;

    invoke-direct {v8, v4, v5, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 11
    :goto_64
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v9, 0x2

    if-eq v5, v9, :cond_6e

    if-eq v5, v7, :cond_6e

    goto :goto_64

    .line 12
    :cond_6e
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_72} :catch_11a
    .catchall {:try_start_5f .. :try_end_72} :catchall_117

    move-object v9, v3

    .line 13
    :cond_73
    :goto_73
    :try_start_73
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    if-eq v10, v7, :cond_112

    const/4 v11, 0x3

    if-ne v10, v11, :cond_82

    .line 14
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    if-le v12, v5, :cond_112

    :cond_82
    if-eq v10, v11, :cond_73

    const/4 v11, 0x4

    if-ne v10, v11, :cond_88

    goto :goto_73

    .line 15
    :cond_88
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_73

    const-string v11, "uses-permission"

    .line 16
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_73

    .line 17
    sget-object v10, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    invoke-virtual {v8, v2, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 18
    invoke-virtual {v9, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 19
    sget-object v11, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c3

    .line 20
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_e7

    .line 21
    :cond_c3
    sget-object v11, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e6

    .line 22
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_e7

    :cond_e6
    move-object v11, v10

    .line 23
    :goto_e7
    sget-object v12, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-eqz v11, :cond_10d

    .line 24
    iget-object v12, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v12, v11}, Ljava/util/BitSet;->set(I)V

    if-eqz v10, :cond_10d

    .line 25
    iget-object v11, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10d

    .line 26
    iget-object v11, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_10d
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_110} :catch_115
    .catchall {:try_start_73 .. :try_end_110} :catchall_1f7

    goto/16 :goto_73

    :cond_112
    if-eqz v9, :cond_124

    goto :goto_121

    :catch_115
    move-exception v5

    goto :goto_11c

    :catchall_117
    move-exception p0

    goto/16 :goto_1f9

    :catch_11a
    move-exception v5

    move-object v9, v3

    .line 28
    :goto_11c
    :try_start_11c
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11f
    .catchall {:try_start_11c .. :try_end_11f} :catchall_1f7

    if-eqz v9, :cond_124

    .line 29
    :goto_121
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    :cond_124
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    if-eqz v4, :cond_12c

    .line 31
    invoke-virtual {v4}, Landroid/content/res/AssetManager;->close()V

    .line 32
    :cond_12c
    invoke-static {v3}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    move-result-object v2

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 34
    :try_start_134
    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 35
    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1f4

    .line 36
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_144
    :goto_144
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 37
    sget-object v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_197

    .line 39
    :cond_173
    sget-object v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_196

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_197

    :cond_196
    move-object v4, v3

    .line 41
    :goto_197
    sget-object v5, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_144

    .line 42
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move v9, v6

    .line 43
    :goto_1a6
    array-length v10, v8

    if-ge v9, v10, :cond_1bc

    .line 44
    aget-object v10, v8, v9

    iget-object v11, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v11}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_1b9

    move v8, v7

    goto :goto_1bd

    :cond_1b9
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a6

    :cond_1bc
    move v8, v6

    :goto_1bd
    if-eqz v8, :cond_144

    .line 45
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Add Granted permission : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v4, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 47
    iget-object v4, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_144

    .line 48
    iget-object v4, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1ed
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_1ed} :catch_1ef

    goto/16 :goto_144

    :catch_1ef
    const-string p1, "Failed to get ELM permissions"

    .line 49
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_1f4
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    return-object p0

    :catchall_1f7
    move-exception p0

    move-object v3, v9

    :goto_1f9
    if-eqz v3, :cond_1fe

    .line 51
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    :cond_1fe
    throw p0
.end method

.method public final greylist readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .registers 5

    .line 0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1
    .line 2
    .line 3
    move-result p0

    .line 4
    new-instance v0, Ljava/util/BitSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_a
    if-ge v1, p0, :cond_16

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_a

    .line 22
    :cond_16
    return-object v0
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
.end method

.method public final greylist readPoliciesFromXml(Landroid/util/TypedXmlPullParser;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 1
    .line 2
    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceAdminInfo;->readPoliciesFromXml(Landroid/util/TypedXmlPullParser;)V

    .line 3
    .line 4
    .line 5
    return-void
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
.end method

.method public final greylist setAuthorized(Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mAuthorized:Z

    .line 1
    .line 2
    return-void
    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
.end method

.method public final greylist setLicenseExpiry(J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mLicenseExpiryTime:J

    .line 1
    .line 2
    return-void
    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 1
    .line 2
    if-eqz v0, :cond_1d

    .line 3
    .line 4
    const-string v0, "DeviceAdminInfo{"

    .line 5
    .line 6
    invoke-static {v0}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 11
    .line 12
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 13
    .line 14
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p0, "}"

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    goto :goto_1f

    .line 29
    :cond_1d
    const-string p0, ""

    .line 30
    .line 31
    :goto_1f
    return-object p0
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
.end method

.method public final greylist usesMDMPolicy()Z
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    .line 1
    .line 2
    if-eqz p0, :cond_c

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/util/BitSet;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-nez p0, :cond_c

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_d

    .line 12
    :cond_c
    const/4 p0, 0x0

    .line 13
    :goto_d
    return p0
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
.end method

.method public final greylist usesPolicy(I)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 1
    .line 2
    if-nez v0, :cond_6

    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return p0

    .line 6
    :cond_6
    invoke-virtual {v0, p1}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_e

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_e
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->get(I)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
.end method

.method public final greylist writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V
    .registers 4

    .line 0
    invoke-virtual {p2}, Ljava/util/BitSet;->cardinality()I

    .line 1
    .line 2
    .line 3
    move-result p0

    .line 4
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    .line 6
    .line 7
    const/4 p0, -0x1

    .line 8
    move v0, p0

    .line 9
    :goto_9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eq v0, p0, :cond_15

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_9

    .line 21
    :cond_15
    return-void
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
.end method

.method public final greylist writePoliciesToXml(Landroid/util/TypedXmlSerializer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 1
    .line 2
    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceAdminInfo;->writePoliciesToXml(Landroid/util/TypedXmlSerializer;)V

    .line 3
    .line 4
    .line 5
    return-void
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 1
    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3
    .line 4
    .line 5
    iget-object p2, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 8
    .line 9
    .line 10
    iget-boolean p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mIsPseudoAdmin:Z

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
.end method
